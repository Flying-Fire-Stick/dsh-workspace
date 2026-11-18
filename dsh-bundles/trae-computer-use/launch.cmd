@echo off
setlocal EnableExtensions

rem Trae CN MCP launcher for DeepSeek Harness.
rem Resolves Trae CN and a Node runtime at run time so the bundle stays portable.
rem Overrides: TRAE_CN_HOME (Trae install dir), TRAE_MCP_NODE (node.exe path).

set "SERVE_ARGS=--windows-cua-v1"
set "EXT_REL=resources\app\extensions\byted-solo.builtin-mcp\node_modules\@byted-solo\computer-use-mcp\switch\cli.mjs"

rem ---- 1. locate Trae CN home ----
set "TRAE_HOME="
if defined TRAE_CN_HOME if exist "%TRAE_CN_HOME%\Trae CN.exe" set "TRAE_HOME=%TRAE_CN_HOME%"

if not defined TRAE_HOME (
  for /f "delims=" %%P in ('where trae-cn.cmd 2^>nul') do (
    for %%Q in ("%%~dpP..") do (
      if exist "%%~fQ\Trae CN.exe" set "TRAE_HOME=%%~fQ"
    )
  )
)

if not defined TRAE_HOME (
  for %%D in ("%LOCALAPPDATA%\Programs\Trae CN" "%ProgramFiles%\Trae CN" "%ProgramFiles(x86)%\Trae CN" "D:\Trae CN") do (
    if exist "%%~fD\Trae CN.exe" set "TRAE_HOME=%%~fD"
  )
)

if not defined TRAE_HOME (
  echo [trae-mcp] Trae CN not found. Set TRAE_CN_HOME to the install directory. 1>&2
  exit /b 2
)

set "SERVER=%TRAE_HOME%\%EXT_REL%"
if not exist "%SERVER%" (
  echo [trae-mcp] computer-use-mcp not found under "%TRAE_HOME%". 1>&2
  exit /b 3
)

rem ---- 2. locate a node runtime ----
set "NODE_EXE="
if defined TRAE_MCP_NODE if exist "%TRAE_MCP_NODE%" set "NODE_EXE=%TRAE_MCP_NODE%"

if not defined NODE_EXE (
  for /d %%R in ("%LOCALAPPDATA%\Programs\DeepSeek Harness\resources\runtime\*") do (
    if exist "%%~fR\dependencies\node\bin\node.exe" set "NODE_EXE=%%~fR\dependencies\node\bin\node.exe"
  )
)

if not defined NODE_EXE (
  for /f "delims=" %%N in ('where node 2^>nul') do (
    if not defined NODE_EXE set "NODE_EXE=%%N"
  )
)

rem Fallback: run Trae's Electron in Node mode.
if not defined NODE_EXE (
  set "NODE_EXE=%TRAE_HOME%\Trae CN.exe"
  set "ELECTRON_RUN_AS_NODE=1"
)

if /i "%NODE_EXE%"=="%TRAE_HOME%\Trae CN.exe" set "ELECTRON_RUN_AS_NODE=1"

"%NODE_EXE%" "%SERVER%" %SERVE_ARGS% %*
exit /b %ERRORLEVEL%
