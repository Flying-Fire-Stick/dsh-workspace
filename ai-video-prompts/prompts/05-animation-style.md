# 动画与风格化

风格化提示词的要点：**先定画风流派，再写动作**。同一动作在不同画风下差异巨大，所以风格词要放在句子后半段作为全局修饰。

> 注意：参考特定 IP 风格时请用于风格探索，避免直接复刻受版权保护的角色形象。

---

### 01. 吉卜力田园

- **模型**：即梦 / 可灵 / 通用
- **比例**：16:9
- **时长**：5s

**中文**
> 吉卜力手绘动画风格，夏日乡村田野，巨大积雨云在蓝天中缓慢移动，少女骑着自行车经过稻田，镜头缓慢横移跟拍，柔和手绘赛璐璐质感，暖绿色调。

**English**
> Studio Ghibli hand-drawn anime style, summer countryside, giant cumulus clouds drifting across a blue sky. A girl rides a bicycle past rice fields, slow lateral tracking shot, soft cel-shaded look, warm green tones.

**参数/备注**
- 画风词放句首或句尾都可以，但要「一次说清」；
- 云是吉卜力风格的灵魂，记得写云。

---

### 02. 皮克斯小机器人

- **模型**：通用
- **比例**：16:9
- **时长**：4–5s

**中文**
> 皮克斯 3D 动画风格，圆润的小机器人在柔光下好奇地转动头部，动作夸张有弹性，浅景深，暖黄色灯光，电影级渲染。

**English**
> Pixar-style 3D animation, a round little robot tilts its head curiously under soft light, exaggerated bouncy motion, shallow depth of field, warm yellow lighting, cinematic render.

**参数/备注**
- 「夸张有弹性」写 `exaggerated bouncy motion`；
- 单角色 + 单动作，3D 动画稳定性最好。

---

### 03. 水墨山水

- **模型**：即梦 / 可灵 / 万相（国风强）
- **比例**：16:9
- **时长**：5–6s

**中文**
> 中国水墨画风格，墨色山水在宣纸上缓缓晕开，远山与孤舟，镜头极缓慢推进，留白与雾气，黑白与一点朱红。

**English**
> Chinese ink-wash painting style, ink landscape spreading slowly on rice paper, distant mountains and a lone boat. Extremely slow push-in, negative space and mist, black-and-white with a touch of vermilion.

**参数/备注**
- 运动要「极慢」，否则水墨感会消失；
- 负面提示加「照片感、写实、油画」。

---

### 04. 毛毡定格

- **模型**：通用
- **比例**：16:9
- **时长**：4s

**中文**
> 定格动画，毛毡材质的小人站在雪地里颤抖，微距镜头，暖色台灯照明，画面有轻微手工抖动感，柔软的织物纹理清晰。

**English**
> Stop-motion animation, a felt puppet shivering in the snow, macro lens, warm desk-lamp lighting, subtle handmade jitter, soft fabric textures clearly visible.

**参数/备注**
- 「定格 / stop-motion」+「手工抖动」是质感来源；
- 微距 + 织物纹理，最容易出效果。

---

### 05. 像素风游戏（横版）

- **模型**：通用
- **比例**：16:9
- **时长**：4–5s

**中文**
> 像素风 2D 横版游戏画面，戴着斗篷的小法师在森林小路上奔跑，背景有视差滚动，复古 16 位机配色，镜头水平跟随，轻微扫描线质感。

**English**
> Pixel-art 2D side-scrolling game scene, a little mage in a cloak runs along a forest path, parallax scrolling background, retro 16-bit palette, camera follows horizontally, subtle scanline texture.

**参数/备注**
- 「横版 + 视差滚动 + 水平跟随」三者一起写；
- 像素风要明确「16 位 / pixel art」，否则会变成普通插画。
