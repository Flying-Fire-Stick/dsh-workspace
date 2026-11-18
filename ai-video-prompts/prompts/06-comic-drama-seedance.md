# AI 漫剧提示词（Seedance 2.5 为主）

> 本专题面向**竖屏 AI 漫剧**（9:16，单集 1–3 分钟）。以 Seedance 2.5 的提示词习惯编写，同时适用于支持图生视频 / 多镜头 / 原生音频的同类模型。
>
> 使用前请先读：`docs/seedance-2-5-guide.md`（提示词结构与技巧）、`docs/comic-drama-workflow.md`（制作流程）。

## 通用设置

- **比例**：9:16 竖屏；单镜 4–8s；多镜头段落 15–30s；
- **方式**：优先「首帧图生视频」，角色三视图作为参考；
- **画风**：每条提示词开头固定画风短语（本文件默认「2D 国漫赛璐璐」）；
- **负面**：换脸，五官漂移，多余人物，手指变形，文字乱码，画面抖动，风格突变，3D 渲染感。

角色锚点示例：`黑长直、红色瞳孔、藏青色水手服、左耳银色耳钉`（同一角色每条提示词原样重复）。

---

### 01. 雨夜回眸（开场钩子）

- **时长**：6s ｜ **景别**：中景 → 近景 ｜ **运镜**：跟拍 → 缓慢推近

**中文**
> 2D 国漫赛璐璐画风，雨夜街道，黑长直红瞳少女撑着透明雨伞快步前行，突然停下脚步缓缓回头，雨水顺着发梢滴落，霓虹灯在湿地面拉出彩色倒影，镜头从侧后方跟拍后缓慢推近到近景，冷蓝与品红霓虹光，雨丝清晰，电影感，4K。

**English**
> 2D Chinese anime cel-shaded style, rainy night street. A girl with long black straight hair and red eyes walks quickly with a clear umbrella, then stops and slowly turns her head. Rain drips from her hair tips. Neon signs reflect in colorful streaks on the wet ground. Camera follows from behind then slowly pushes in to a medium close-up. Cool blue and magenta neon light, visible rain streaks, cinematic, 4K.

**备注**
- 开场 3 秒必须有「异常点」：回头 + 雨夜 + 霓虹反差；
- 回头动作只做一次，写「缓缓回头」而非「回头张望」。

---

### 02. 天台登场（逆光）

- **时长**：5s ｜ **景别**：中景 ｜ **运镜**：低角度缓慢仰拍

**中文**
> 2D 国漫赛璐璐画风，黄昏天台，白衬衫少年推开锈迹斑斑的铁门走出，逆光下轮廓被金色勾边，风掀起他敞开的校服外套，他单手插兜走向栏杆，镜头低角度缓慢仰拍，暖橙色天空与积云，胶片颗粒，电影级光影，4K。

**English**
> 2D Chinese anime cel-shaded style, rooftop at dusk. A boy in a white shirt pushes open a rusty metal door and steps out, backlit with golden rim light. Wind lifts his open uniform jacket. He walks toward the railing with one hand in his pocket. Low-angle slow tilt-up. Warm orange sky with cumulus clouds, film grain, cinematic lighting, 4K.

**备注**
- 登场镜头靠「逆光轮廓 + 风 + 走向镜头」建立压迫感；
- 「单手插兜」这类小动作能显著提升角色感。

---

### 03. 怒视对峙（双人正反打）

- **时长**：12s ｜ **景别**：近景正反打 ｜ **运镜**：固定 + 轻微推近

**中文**
> 2D 国漫赛璐璐画风，同一条教室走廊，左侧是黑长直红瞳少女，右侧是白衬衫少年，两人相对而立。
> 0–4s：少女近景，眉头紧锁、下颌绷紧，直视对方；
> 4–8s：切至少年近景，眼神平静但指尖收紧；
> 8–12s：两人同框侧面对峙，镜头轻微推近，顶光与窗侧光交替，冷色调，紧张氛围，4K。

**English**
> 2D Chinese anime cel-shaded style, a school corridor. A black-haired red-eyed girl stands on the left, a white-shirt boy on the right, facing each other.
> 0–4s: close-up of the girl, brows furrowed, jaw tightened, staring directly.
> 4–8s: cut to the boy's close-up, calm eyes but tightening fingers.
> 8–12s: both in profile in one frame, camera pushes in slightly, top light and window side light alternating, cool tones, tense atmosphere, 4K.

**备注**
- 正反打要固定两人的**左右位置**，否则剪起来会跳轴；
- 情绪靠「眉/眼/手」三处细节，不要只写「生气」。

---

### 04. 泪落特写

- **时长**：4s ｜ **景别**：眼睛特写 ｜ **运镜**：固定

**中文**
> 2D 国漫赛璐璐画风，少女眼睛大特写，眼眶泛红，泪珠在睫毛上颤动后滑落，瞳孔微微颤动，睫毛投下细密阴影，柔光从侧面打来，背景完全虚化，情绪克制，电影级细节，4K。

**English**
> 2D Chinese anime cel-shaded style, extreme close-up of the girl's eyes, rims reddening, a tear trembling on her lashes then sliding down, pupils quivering slightly, delicate shadows from lashes, soft side light, fully blurred background, restrained emotion, cinematic detail, 4K.

**备注**
- 大特写最容易出情绪，也最容易被口型问题拖累——不要在这类镜头里放台词；
- 「瞳孔颤动」是泪戏的加分细节。

---

### 05. 内心独白（眼睛 + 闪回）

- **时长**：8s ｜ **景别**：特写 → 闪回 ｜ **运镜**：缓慢推近

**中文**
> 2D 国漫赛璐璐画风，少女侧脸特写，她望向窗外发呆，镜头缓慢推近她的眼睛；
> 推近到瞳孔时画面叠化进入回忆：褪色的暖黄色教室，两个少年并肩而坐。
> 回忆段轻微失焦、柔光、颗粒感，最后回到少女眼睛特写，眼神黯淡，4K。

**English**
> 2D Chinese anime cel-shaded style, close-up of the girl's side profile staring out the window. Camera pushes in slowly toward her eyes. At the pupil, dissolve into memory: a faded warm-yellow classroom, two youths sitting side by side. The memory has soft focus, glow, and grain. Finally return to her eyes, gaze dimming, 4K.

**备注**
- 闪回段用「褪色暖黄 + 柔光 + 失焦」与其他镜头区分；
- 「叠化」写成 `dissolve into`，比写「切换」更稳。

---

### 06. 回忆闪回（褪色）

- **时长**：6s ｜ **景别**：中景 ｜ **运镜**：缓慢横移

**中文**
> 2D 国漫赛璐璐画风，夏日午后，旧教学楼走廊，两个孩子追逐跑过，阳光透过窗格投下条纹光斑，画面整体褪色偏暖黄、轻微柔焦与胶片颗粒，镜头缓慢横移，怀旧感，浅景深，4K。

**English**
> 2D Chinese anime cel-shaded style, summer afternoon, old school corridor. Two children run past, sunlight casting striped shadows through window frames. The whole shot is faded, warm-yellow, slightly soft-focus with film grain. Slow lateral pan, nostalgic, shallow depth of field, 4K.

**备注**
- 闪回统一「褪色 + 颗粒 + 柔焦」三件套，观众一眼识别时间线；
- 儿童角色与主角要有明显差异（不要写成同一人）。

---

### 07. 觉醒变身（灵力）

- **时长**：8s ｜ **景别**：全身 → 特写 ｜ **运镜**：环绕 + 快速推近

**中文**
> 2D 国漫赛璐璐画风，少女站在破碎的祭坛中央，脚下符文亮起金色光芒，灵力化作风暴从地面升起，发丝与衣摆被气流卷起，她缓缓抬头，红色瞳孔亮起，镜头环绕半圈后快速推近到眼睛特写，金色与暗紫对比，粒子光效，史诗感，4K。

**English**
> 2D Chinese anime cel-shaded style, the girl stands at the center of a shattered altar. Golden runes glow beneath her feet, spirit energy rises like a storm, hair and clothes whipping in the updraft. She slowly lifts her head, red pupils igniting. Camera orbits half a circle then pushes in fast to an eye close-up. Gold versus dark purple contrast, particle effects, epic scale, 4K.

**备注**
- 变身是特效密集型，建议单独生成，不要和打斗放在同一镜头；
- 「抬头 + 瞳孔亮起」是节奏点，放在后半段。

---

### 08. 拔剑（战前蓄势）

- **时长**：5s ｜ **景别**：中近景 ｜ **运镜**：低角度 + 缓慢推近

**中文**
> 2D 国漫赛璐璐画风，少年站在竹林间，右手按在腰间剑柄上，缓缓拔剑，剑身反射一道冷光划过他的眼睛，竹叶被气劲震落，低角度拍摄，镜头缓慢推近，冷绿色调，硬光，压迫感，4K。

**English**
> 2D Chinese anime cel-shaded style, the boy stands in a bamboo forest, right hand on the sword hilt, drawing it slowly. A cold glint runs along the blade and across his eyes. Bamboo leaves shake loose from the pressure. Low angle, slow push-in, cool green tones, hard light, intimidating, 4K.

**备注**
- 拔剑动作要慢，慢才有势；
- 「剑光扫过眼睛」是国漫常见的拔剑名场面。

---

### 09. 剑气压场（战斗）

- **时长**：6s ｜ **景别**：全景 → 中景 ｜ **运镜**：快速横移 + 冲击

**中文**
> 2D 国漫赛璐璐画风，深夜竹林，少年挥剑斩出一道月牙形剑气，剑气撕开空气向前飞出，竹子在气浪中剧烈摇晃，落叶被卷成旋涡，镜头快速横移跟随剑气，随后冲击到少年身前定格，冷蓝色调，动态模糊，速度感，4K。

**English**
> 2D Chinese anime cel-shaded style, bamboo forest at night. The boy swings his sword, releasing a crescent-shaped energy slash that tears through the air. Bamboo sways violently in the shockwave, leaves spiral into a vortex. Camera trucks fast following the slash, then impacts and locks in front of the boy. Cool blue tones, motion blur, sense of speed, 4K.

**备注**
- 剑气飞行是「特效 + 运动」双高难，生成失败率高，建议拆成两段：起手 + 剑气飞行；
- 定格（freeze frame）可作为段落结束。

---

### 10. 走廊奔跑（追逐）

- **时长**：5s ｜ **景别**：中景 ｜ **运镜**：侧面跟拍

**中文**
> 2D 国漫赛璐璐画风，放学后的教学楼走廊，少女抱着书包向前奔跑，长发与裙摆向后飘，经过的教室门框在画面中快速掠过，镜头侧面平移跟拍，午后斜阳在地面拉出长影，浅景深，速度感，4K。

**English**
> 2D Chinese anime cel-shaded style, school corridor after class. The girl runs forward carrying her schoolbag, hair and skirt streaming behind. Classroom door frames flash past. Camera tracks laterally alongside her. Afternoon sunlight casts long shadows on the floor, shallow depth of field, sense of speed, 4K.

**备注**
- 侧面跟拍比正面奔跑稳定，腿脚变形风险低；
- 「门框掠过」能强化速度感。

---

### 11. 转身离开（背影）

- **时长**：5s ｜ **景别**：中景 ｜ **运镜**：固定 + 轻微推近

**中文**
> 2D 国漫赛璐璐画风，黄昏街道，少女说完话后转身离开，风把她的长发和裙摆吹起，她没有回头，少年站在原地望着她的背影，镜头固定在中景，轻微推近，暖橙色逆光，地面有拉长的影子，克制与遗憾，4K。

**English**
> 2D Chinese anime cel-shaded style, street at dusk. The girl turns and walks away after speaking, wind lifting her hair and skirt, she does not look back. The boy stands still watching her back. Camera holds a medium shot with a slight push-in. Warm orange backlight, long shadows on the ground, restraint and regret, 4K.

**备注**
- 背影戏别写「她回头」——回头会破坏情绪；
- 逆光 + 长影是离别的视觉符号。

---

### 12. 夕阳告白

- **时长**：10s ｜ **景别**：双人中景 → 特写 ｜ **运镜**：缓慢推近

**中文**
> 2D 国漫赛璐璐画风，天台夕阳，少年与少女并肩站在栏杆前，晚风吹动两人的头发。
> 0–4s：少年侧脸，欲言又止，手指无意识地握紧栏杆；
> 4–8s：少女转头看他，微微睁大眼睛；
> 8–10s：两人对视特写，镜头缓慢推近，暖橙色逆光，光斑散景，4K。

**English**
> 2D Chinese anime cel-shaded style, rooftop at sunset. The boy and girl stand side by side at the railing, evening wind moving their hair.
> 0–4s: the boy's profile, wanting to speak, fingers tightening on the railing.
> 4–8s: the girl turns to look at him, eyes widening slightly.
> 8–10s: close-up of their gaze, slow push-in, warm orange backlight, bokeh, 4K.

**备注**
- 告白戏靠「停顿」：欲言又止比直接说更动人；
- 双人同框时写清左右站位。

---

### 13. 手机消息（都市日常）

- **时长**：6s ｜ **景别**：手部特写 → 面部特写 ｜ **运镜**：固定

**中文**
> 2D 国漫赛璐璐画风，夜晚卧室，少女躺在床上刷手机，手机屏幕的光映在她的脸上，屏幕弹出一条消息，她瞳孔一缩，缓缓坐起，镜头先拍手机屏幕特写，再切到她的面部特写，冷蓝色屏幕光，浅景深，当代都市感，4K。

**English**
> 2D Chinese anime cel-shaded style, bedroom at night. The girl lies in bed scrolling her phone, screen glow on her face. A message pops up; her pupils contract and she sits up slowly. Camera first close-up on the phone screen, then cuts to her face in close-up. Cool blue screen light, shallow depth of field, contemporary urban feel, 4K.

**备注**
- 手机屏幕上的文字容易乱码，可只拍「消息气泡」不拍具体文字；
- 屏幕光作为唯一光源，氛围最好。

---

### 14. 门后偷听（悬念）

- **时长**：6s ｜ **景别**：近景 ｜ **运镜**：缓慢推近

**中文**
> 2D 国漫赛璐璐画风，昏暗走廊，少女贴在门边偷听，门缝里透出暖光，她的表情从好奇逐渐变为震惊，手不自觉捂住嘴，背景虚化，门外阴影压在她的脸上，镜头缓慢推近，悬疑氛围，冷暗色调，4K。

**English**
> 2D Chinese anime cel-shaded style, dim corridor. The girl presses against a door, eavesdropping. Warm light leaks through the gap. Her expression shifts from curiosity to shock, hand rising to cover her mouth. Blurred background, shadows from outside falling across her face. Slow push-in, suspenseful mood, cool dark tones, 4K.

**备注**
- 「表情逐渐变化」要写成两个阶段（好奇 → 震惊），给模型变化的时间；
- 门缝光 = 天然的危险信号。

---

### 15. 雨中撑伞（情绪）

- **时长**：6s ｜ **景别**：中景 ｜ **运镜**：固定

**中文**
> 2D 国漫赛璐璐画风，暴雨中的十字路口，少年撑着黑伞站在雨中，伞沿滴水成线，他的表情平静但眼睛发红，车灯在雨幕中晕开，镜头固定中景，雨声与低沉的 BGM，冷蓝色调，孤独感，4K。

**English**
> 2D Chinese anime cel-shaded style, a rainy intersection. The boy stands in the downpour with a black umbrella, water dripping in a line from its edge. Calm expression but reddened eyes. Headlights bloom through the rain curtain. Static medium shot, rain sound and low BGM, cool blue tones, loneliness, 4K.

**备注**
- 雨戏要写 `heavy rain, visible raindrops, wet ground reflections`；
- 静态镜头 + 雨声，适合放在情绪转折点。

---

### 16. 起床日常（轻松开场）

- **时长**：5s ｜ **景别**：中景 ｜ **运镜**：固定

**中文**
> 2D 国漫赛璐璐画风，清晨卧室，阳光透过窗帘缝隙照进来，闹钟响起，少女从被窝里伸出手胡乱按掉闹钟，头发翘起，表情生无可恋，镜头固定中景，暖黄色晨光，生活感，轻松氛围，4K。

**English**
> 2D Chinese anime cel-shaded style, bedroom in the morning. Sunlight streaks through curtain gaps. The alarm rings and the girl reaches out from the blanket to slap it off, hair sticking up, deadpan expression. Static medium shot, warm yellow morning light, slice-of-life, lighthearted, 4K.

**备注**
- 日常戏靠小动作和反差表情；
- 晨光方向固定（窗口在画面左侧）便于后续同场景镜头连贯。

---

### 17. Q 版吐槽（搞笑段子）

- **时长**：4s ｜ **景别**：Q 版中景 ｜ **运镜**：固定 + 弹跳

**中文**
> 2D 国漫 Q 版画风，二头身少女在纯色背景前跳起来吐槽，头顶冒出「怒气」符号和歪掉的问号，背景放射状速度线，动作夸张、弹性变形，明亮高饱和配色，固定镜头但角色带弹跳动画感，喜剧节奏，4K。

**English**
> 2D Chinese chibi anime style, a two-head-tall girl jumps up complaining in front of a flat-color background, anger symbols and a crooked question mark popping above her head, radial speed lines behind. Exaggerated bouncy squash-and-stretch motion, bright saturated palette, static camera with bouncy animation feel, comedic timing, 4K.

**备注**
- Q 版段子要与正片画风明显区分（二头身、纯色背景、速度线）；
- 「头顶符号」是吐槽必需的视觉笑点。

---

### 18. 玄幻结印（法术）

- **时长**：7s ｜ **景别**：近景 → 全景 ｜ **运镜**：环绕

**中文**
> 2D 国漫赛璐璐画风，古代石殿，白衣少女双手在胸前快速结印，指尖牵出金色光线，脚下石板浮现发光阵纹，镜头缓慢环绕她半圈后拉远，露出整个大殿与悬浮的符文，金光与冷灰色石壁对比，粒子飞舞，仙侠感，4K。

**English**
> 2D Chinese anime cel-shaded style, an ancient stone hall. A white-robed girl rapidly forms hand seals at her chest, golden threads of light trailing from her fingertips. Glowing array patterns emerge on the stone floor. Camera orbits half a circle then pulls back to reveal the hall and floating runes. Gold against cool gray stone, drifting particles, xianxia feel, 4K.

**备注**
- 手部结印容易崩，建议近景只拍「手 + 金光」，全景用拉远代替细节；
- 阵纹是玄幻质感的核心。

---

### 19. 都市异能（瞳光）

- **时长**：5s ｜ **景别**：面部特写 ｜ **运镜**：缓慢推近

**中文**
> 2D 国漫赛璐璐画风，夜晚都市天台，少年低头站在霓虹灯下，缓缓抬头，瞳孔中亮起淡蓝色光芒，周围空气轻微扭曲，霓虹光在他脸侧形成轮廓光，镜头缓慢推近到眼睛，冷蓝与紫红对比，超能力觉醒感，4K。

**English**
> 2D Chinese anime cel-shaded style, a city rooftop at night. The boy stands under neon light, head down, then slowly lifts his head as a pale blue glow ignites in his pupils. The air around his face warps slightly. Neon rim light on his cheek. Slow push-in to the eyes. Cool blue against magenta, awakening superpower feel, 4K.

**备注**
- 「空气扭曲」是异能的视觉化，写成 `air warping`；
- 瞳光亮起是节奏点，不要一开始就亮。

---

### 20. 结尾钩子（黑屏字幕）

- **时长**：5s ｜ **景别**：全景 → 黑屏 ｜ **运镜**：拉远

**中文**
> 2D 国漫赛璐璐画风，深夜街口，少女独自站在路灯下，镜头缓慢拉远，她的身影越来越小，路灯周围飞虫环绕，画面逐渐压暗至黑，最后一行白色字幕「下一集：她是谁」浮现，冷蓝色调，悬疑感，4K。

**English**
> 2D Chinese anime cel-shaded style, a street corner at night. The girl stands alone under a streetlight. Camera pulls back slowly, her figure shrinking, insects circling the lamp. The frame darkens to black, then a single white subtitle appears: "Next episode: Who is she?" Cool blue tones, suspense, 4K.

**备注**
- 字幕文字容易乱码，可生成无字版后后期加字幕；
- 结尾黑屏 + 一行字是漫剧留钩的经典做法。
