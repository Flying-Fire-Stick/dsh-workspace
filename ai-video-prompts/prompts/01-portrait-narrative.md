# 人像与叙事

人像提示词的关键：**一个动作 + 明确光位 + 景别与焦段**。避免「喜怒哀乐同时出现」这类矛盾情绪。

---

### 01. 咖啡馆窗边

- **模型**：通用（Sora / Veo / 可灵）
- **比例**：16:9 或 9:16
- **时长**：4–6s

**中文**
> 一位二十多岁的亚洲女性坐在咖啡馆窗边，午后阳光从侧后方照进来，她缓慢抬眼望向你，嘴角微微上扬，浅景深虚化窗外的行人，镜头缓慢推近，35mm 胶片质感，暖色调，4K。

**English**
> A woman in her twenties sits by a cafe window, warm afternoon sunlight coming from behind her. She slowly lifts her eyes toward the camera with a subtle smile. Shallow depth of field with blurred pedestrians outside. Slow dolly-in. 35mm film look, warm tones, 4K.

**参数/备注**
- 运动强度：0.4；避免「快速」「突然」；
- 侧逆光 + 浅景深是出片关键，光线别写太多。

---

### 02. 雨夜撑伞

- **模型**：通用（夜景强的模型如可灵 / Runway）
- **比例**：16:9（宽银幕更佳）
- **时长**：5–6s

**中文**
> 雨夜城市街头，一名穿黑色风衣的男子撑伞迎面走来，霓虹灯牌在湿漉漉的沥青路面上拉出彩色倒影，镜头低角度跟拍，轻微手持晃动，0.5 倍慢动作，青橙色调，电影感，浅景深。

**English**
> A man in a black trench coat walks toward the camera under an umbrella on a rainy night street. Neon signs reflect in colorful streaks on the wet asphalt. Low-angle tracking shot with subtle handheld shake. 0.5x slow motion. Teal-and-orange grade, cinematic, shallow depth of field.

**参数/备注**
- 雨丝要写 `fine rain streaks`，否则模型容易画成暴雨；
- 慢动作与跟拍同时写时，明确「主体向前走」。

---

### 03. 老人翻书（微距）

- **模型**：通用
- **比例**：16:9
- **时长**：4s

**中文**
> 布满皱纹的老人双手特写，缓慢翻阅一本旧书，逆光中尘埃在光束里漂浮，微距镜头，缓慢推近，暖琥珀色调，85mm 大光圈，真实质感。

**English**
> Close-up of an elderly person's wrinkled hands slowly turning the pages of an old book. Dust motes float in backlit sunbeams. Macro lens, slow push-in, warm amber grade, 85mm shallow focus, photorealistic.

**参数/备注**
- 「手部特写」比「全身」更稳，手部变形风险也低；
- 可在负面提示里加「多余手指」。

---

### 04. 仓库舞者（环绕 360°）

- **模型**：可灵 / Runway（运镜控制强）
- **比例**：2.35:1
- **时长**：5s

**中文**
> 一名舞者在空旷的旧仓库中旋转，顶部天窗投下体积光，地面扬尘，镜头环绕她 360 度旋转，24fps 慢门产生轻微拖影，高对比低饱和，宽银幕 2.35:1。

**English**
> A dancer spins in an empty old warehouse, volumetric light pouring down from skylights, dust rising from the floor. Camera orbits 360 degrees around her. 24fps slow shutter with slight motion blur. High-contrast desaturated grade, 2.35:1 widescreen.

**参数/备注**
- 360° 环绕对时长要求高，建议 5s 以上；
- 若模型运镜不可控，改用「镜头围绕旋转」+ 参考图。

---

### 05. 登顶回望（史诗航拍）

- **模型**：通用（航拍类）
- **比例**：16:9
- **时长**：6–8s

**中文**
> 登山者站上雪山顶峰回望连绵群山，云海翻涌，镜头从人物背后缓慢升起并拉远，黄金时刻侧逆光，广角航拍视角，史诗感，8K 细节。

**English**
> A mountaineer reaches a snowy summit and looks back at endless mountain ranges with a rolling sea of clouds. Camera rises slowly from behind and pulls back. Golden-hour backlight, wide aerial vista, epic scale, 8K detail.

**参数/备注**
- 人物在画面中占比小，动作简单（站立/回望），稳定性好；
- 「云海翻涌」写成 `rolling sea of clouds` 更准确。
