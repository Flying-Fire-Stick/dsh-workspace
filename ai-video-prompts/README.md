# AI 视频提示词库（AI Video Prompt Library）

一套可直接套用的 AI 视频生成提示词工程模板，覆盖**文生视频（Text-to-Video）**与**图生视频（Image-to-Video）**，中文为主、附英文原句，适配 Seedance 2.5、Sora、Veo、Runway、可灵（Kling）、即梦（Jimeng）、Pika、Luma、通义万相 Wan 等主流模型；内置 **AI 漫剧**专题（角色一致性、分镜节奏、Seedance 提示词）。

## 项目结构

```
ai-video-prompts/
├── README.md                       # 本文件：项目说明与使用指南
├── docs/
│   ├── prompt-structure.md         # 提示词公式、模块拆解、常见错误
│   ├── camera-movement.md          # 运镜中英词典（20+ 种）
│   ├── lighting-color.md           # 光线、色彩、质感关键词
│   ├── model-guide.md              # 各模型差异与适配建议
│   ├── comic-drama-workflow.md     # AI 漫剧制作流程
│   └── seedance-2-5-guide.md       # Seedance 2.5 提示词指南
├── prompts/
│   ├── 01-portrait-narrative.md    # 人像与叙事
│   ├── 02-nature-landscape.md      # 自然与风景
│   ├── 03-product-ad.md            # 产品与广告
│   ├── 04-scifi-vfx.md             # 科幻与视效
│   ├── 05-animation-style.md       # 动画与风格化
│   └── 06-comic-drama-seedance.md  # AI 漫剧（Seedance 2.5）
└── templates/
    ├── prompt-template.md          # 可直接复制的空白模板
    ├── shot-list-template.md       # 漫剧分镜表模板
    └── prompt.schema.json          # 结构化提示词的 JSON Schema
```

## 快速开始

1. 在 `prompts/` 里找到最接近你需求的分类；
2. 复制对应条目；
3. 把 `{方括号}` 占位符替换成你的主体、场景；
4. 按 `docs/model-guide.md` 调整提示词长度与参数（时长、比例、运动强度）；
5. 生成后**只改一个变量**再迭代，便于定位效果变化的原因。

## 提示词万能公式

```
主体 + 外观 + 动作 + 环境 + 镜头运动 + 光线 + 风格/色调 + 画质 + 节奏 + 负面提示
```

详细拆解见 [docs/prompt-structure.md](docs/prompt-structure.md)。

## 漫剧专题（Seedance 2.5）

面向竖屏 AI 漫剧的工业化提示词与制作流程：

- [docs/comic-drama-workflow.md](docs/comic-drama-workflow.md)：角色一致性、分镜节奏、生成策略；
- [docs/seedance-2-5-guide.md](docs/seedance-2-5-guide.md)：Seedance 2.5 能力速览、提示词结构、口型与时间戳技巧；
- [prompts/06-comic-drama-seedance.md](prompts/06-comic-drama-seedance.md)：20 条漫剧场景提示词（雨夜回眸、怒视对峙、觉醒变身、结尾钩子等）；
- [templates/shot-list-template.md](templates/shot-list-template.md)：分镜表模板与审片检查表。

## 核心原则

- **一个镜头只写一个核心动作**，多动作 / 多场景切换会让模型输出混乱；
- **镜头运动与主体运动别冲突**（例如不要同时写「固定机位」和「跟拍」）；
- **时长越短越稳**：4–8 秒是大多数模型的最佳区间；
- **具体优于华丽**：写「侧逆光、35mm、浅景深」比堆砌「绝美、震撼、大师级」有效；
- **中英各存一份**：英文对多数模型更稳，可灵 / 即梦中文理解更好；
- **负面提示词**常写：模糊、变形、多余手指、文字水印、低分辨率、闪烁、跳帧。

## 适配模型

| 模型 | 提示词偏好 | 中文支持 | 备注 |
|---|---|---|---|
| Seedance 2.5（字节） | 自然语言 + 分镜/时间戳结构 | 强 | 30s 原生音视频、多镜头叙事、多模态参考 |
| Sora 2 | 自然语言长句、可剧本化 | 一般 | 物理一致性强，部分版本带音频 |
| Veo 3.x | 叙事长句 + 声音描述 | 一般 | 原生音频、镜头语言强 |
| Runway Gen-4 | 短句 + 关键词 + 参考图 | 弱 | 图生视频、运镜控制是强项 |
| 可灵 Kling | 中文结构化描述 | 强 | 动作幅度大、运镜模板多 |
| 即梦 Jimeng | 中文自然描述 | 强 | 国风、动漫风格突出 |
| Pika | 关键词式 | 弱 | 特效模板丰富 |
| Luma Ray | 自然语言 | 中 | 角色 / 场景一致性较好 |
| 通义万相 Wan | 中文描述 | 强 | 开源生态、可本地部署 |

> 具体时长、分辨率、音频能力以各平台官方文档为准，本表仅用于写作风格的参考。

## 贡献方式

- 新增提示词请使用 `templates/prompt-template.md` 的字段；
- 如需机器可读，可按 `templates/prompt.schema.json` 输出 JSON；
- 提交前建议用同一提示词在至少一个模型上实测，并记录结果到「备注」。

## License

内容以 CC BY 4.0 共享，代码与模板以 MIT 共享（如需调整请自行替换）。
