# WabiScript.lrplugin

*“Even metadata yearns to become poetry.”*

**WabiScript** is a Lightroom Classic plugin that transforms image metadata into evocative, AI-generated captions. Inspired by Zen aesthetics and the philosophy of wabi-sabi, it crafts words not merely to describe—but to evoke emotion, impermanence, and atmosphere.

---

## 🌿 Features

- 📸 Persona-guided captioning (e.g., *Quiet Monk*, *Ink River*)
- 🧠 GPT-4 support with customizable prompts
- 🧘 Lightweight and modular: no third-party UI frameworks
- 🔐 Secure API key handling via `secrets.lua`

---

## 📥 Installation

1. Download or clone this repo
2. Open Lightroom Classic → `File > Plug-in Manager`
3. Click **Add** and select the `WabiScript.lrplugin/` folder
4. Copy `secrets.lua.example` to `secrets.lua`, and insert your OpenAI API key

---

## ✨ Caption Philosophy

WabiScript believes that a caption should whisper, not shout. Each persona channel offers a different voice:

- **Quiet Monk**: Speaks in meditative metaphor
- **Ink River**: Expressive and fluid, like haiku across time
- **First Bloom**: Observes beauty in beginnings and impermanence

> You can create your own by adding Lua modules under `personas/`.

---

## 🔧 Development

This plugin uses:
- `dkjson` for JSON encoding/decoding
- `jsonWrapper.lua` for clean abstraction
- Lightroom SDK 10.0

Custom logic lives in:
- `wabiCaption.lua` – caption engine
- `Info.lua` – plugin manifest
- `WabiScriptInfoProvider.lua` – custom info panel

---

## 🧭 Roadmap

- [ ] Persona editor and switching UI
- [ ] Image metadata introspection
- [ ] Export-time captioning
- [ ] Optional clipboard integration

---

## 🪶 Credits

Crafted by [Ubangi Ink](https://github.com/UbangiInk)  
Inspired by Zen, open-source community, and the transience of light

---

## 📜 License

MIT License – See `LICENSE` for details
