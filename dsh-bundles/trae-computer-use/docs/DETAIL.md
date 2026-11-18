# Trae 桌面操作 MCP

把本机 **Trae CN** 内置的 `@byted-solo/computer-use-mcp`（版本 0.81.5）以 stdio MCP 方式接入 DSH，让 DSH 的智能体可以直接操作桌面：截图、点击、输入、滚动、窗口管理、启动应用和回放录制步骤。

## 工作原理

插件配置里不写死任何本机路径：

- `cordis.patch.yml` 用 `!!js` 在加载时取 `process.env.ComSpec` 作为命令，并用 `process.env.DSH_PROFILE_DIR` 推导出本插件安装后的 `launch.cmd` 路径；
- `launch.cmd` 在每次启动时自动定位 Trae CN 与 Node 运行时，然后启动 Trae 自带的 MCP 服务器。

### Trae CN 定位顺序

1. 环境变量 `TRAE_CN_HOME`（指向 Trae 安装目录）；
2. `where trae-cn.cmd` 找到的 `bin` 目录的上一级（Trae 安装时通常会把 `bin` 加进 PATH）；
3. 常见安装位置：`%LOCALAPPDATA%\Programs\Trae CN`、`%ProgramFiles%\Trae CN`、`%ProgramFiles(x86)%\Trae CN`、`D:\Trae CN`。

### Node 运行时定位顺序

1. 环境变量 `TRAE_MCP_NODE`（指定 `node.exe`）；
2. DSH 自带的运行时 `%LOCALAPPDATA%\Programs\DeepSeek Harness\resources\runtime\*\dependencies\node\bin\node.exe`（自动匹配版本目录）；
3. PATH 中的 `node`；
4. 回退到 Trae 的 Electron（设置 `ELECTRON_RUN_AS_NODE=1` 以 Node 模式运行）。

### 为什么带 `--windows-cua-v1`

Trae 这个服务默认走旧版 Windows 后端，在本机会报 `aha_cua_create_tool_call_obj returned null — DLL init failed`；`--windows-cua-v1` 启用新版后端，桌面枚举与操作均正常。

该服务是 Trae CN 官方包自带的 MCP 服务器，DSH 只负责启动并桥接，不修改 Trae 的任何文件。

## 提供的工具

工具名统一为 `mcp__trae__<工具>`，共 15 个：

| 工具 | 作用 |
|---|---|
| `grounding` | 定位界面元素 / 坐标 |
| `get_app_state` | 获取应用 UI 树与截图 |
| `click` | 点击坐标或元素 |
| `scroll` | 滚动 |
| `drag` | 拖拽 |
| `type_text` | 输入文本 |
| `press_key` | 按键 / 组合键 |
| `select_text` | 选中文本 |
| `set_value` | 设置控件值 |
| `perform_action` | 执行语义化操作（invoke / toggle / select / expand / collapse） |
| `clipboard` | 写入系统剪贴板 |
| `list_apps` | 列出运行中 / 已安装应用 |
| `launch_app` | 启动应用 |
| `restore_window` | 恢复窗口 |
| `resolve_recorded_step` / `verify_recorded_step` | 解析与校验录制回放步骤 |

## 使用示例

- 「用 Trae 的桌面工具打开计算器，算一下 128 × 37」
- 「截一张当前屏幕，告诉我桌面上有哪些窗口」
- 「在记事本里输入这段文字并保存」

## 限制与注意事项

- 需要 Windows 交互式桌面会话；锁屏或远程会话断开时截图与输入可能失败。
- 首次调用某些工具时，Windows 可能弹出辅助功能 / 录屏权限提示，需要手动允许。
- 工具调用会在你的真实桌面上执行鼠标键盘操作，使用前请确认当前桌面状态。
- 升级 / 移动 Trae 安装位置后，只要 `trae-cn` 仍在 PATH 或设置了 `TRAE_CN_HOME`，无需改本插件；升级 DSH 后 Node 路径也会被自动重新匹配。
- 若 Trae 调整了内置扩展目录结构，`launch.cmd` 里的 `EXT_REL` 需要同步更新。
