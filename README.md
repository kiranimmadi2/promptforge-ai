# PromptForge AI 🛠️

> Universal AI coding prompt, skill, workflow, instruction, and MCP library for planning, building, testing, debugging, reviewing, and maintaining software.

PromptForge AI is a modular, high-performance instruction framework designed to make AI coding assistants (Google Antigravity, Claude Code, GitHub Copilot, Cursor, and more) dramatically smarter while **reducing active token consumption** by up to 90%.

---

## 🌟 Why PromptForge AI?

Standard AI instruction files (like generic `.cursorrules` or giant system prompts) are massive and wasteful. They dump hundreds of lines of unused rules (e.g., Python rules in a Dart project) into every single LLM turn, causing:
1. **High Token Costs**: Fast exhaustion of API quotas.
2. **Context Dilution**: The LLM forgets critical instructions because of unrelated noise.
3. **Slower Responses**: Larger contexts take longer to process.

**PromptForge AI solves this by introducing a modular, on-demand compilation architecture.** Using our CLI compiler, you can bundle *only* what your project needs (e.g., only general rules + Dart/Flutter + Firebase) into a single compact instruction file.

---

## 📂 Project Structure

```
promptforge-ai/
├── README.md               # Main documentation manual
├── SOURCES.md              # Researched sources, license audits, and attributions
├── LICENSE                 # MIT License file
├── CHANGELOG.md             # Standard release logs
├── AGENTS.md               # Universal shared agent rules
├── CLAUDE.md               # Claude Code specific guidelines
├── GEMINI.md               # Gemini & Antigravity instructions
├── .gitignore              # Ignored compiled rules & IDE folders
├── anthropic-skills/       # Integrated official Anthropic custom skills
├── .github/                # GitHub Copilot custom instructions & prompts
│   ├── copilot-instructions.md
│   ├── instructions/       # (6 files: general, testing, debugging, git...)
│   └── prompts/            # (5 prompts: plan-execute, review, refactor...)
├── .ai/                    # Core modular rules & stack libraries
│   ├── core/               # Universal operating instructions
│   ├── workflows/          # Step-by-step recipes (14 workflows)
│   ├── skills/             # Checklist-driven capabilities
│   ├── languages/          # Language-specific guidelines (11 languages)
│   ├── stacks/             # Tech-stack specific frameworks
│   ├── tools/              # Assistant-specific manuals
│   ├── mcp/                # Model Context Protocol safety guidelines
│   └── templates/          # Standard templates for extensions
├── .claude/                # Claude Code modular skill integration
│   └── skills/             # (5 capability SKILL.md folders)
├── cli/                    # Smart Compiler CLIs
│   ├── promptforge.sh      # Bash compiler/manager
│   └── promptforge.ps1     # PowerShell compiler/manager
└── examples/               # Example configurations (8 files)
```

---

## 🚀 Quick Start (Token-Optimized Setup)

To configure your project with the absolute minimum token overhead, use our compiler CLI to generate a custom, highly targeted rule file.

### Using Bash (Linux/macOS/Git Bash):
```bash
# Initialize a Flutter + Firebase project using Claude rules
./cli/promptforge.sh init dart-flutter mobile --tool claude

# Initialize a TypeScript + Frontend project using Cursor rules
./cli/promptforge.sh init typescript frontend --tool cursor
```

### Using PowerShell (Windows):
```powershell
# Initialize a Flutter + Firebase project
.\cli\promptforge.ps1 -Action init -Lang dart-flutter -Stack mobile -Tool cursor
```

This will automatically create a highly optimized `.cursorrules` or `CLAUDE.md` in your project root containing only the core rules and the requested stack details, saving thousands of tokens per prompt!

---

## 🛠️ Integrated Anthropic Skills

Under `anthropic-skills/`, we have integrated the official **Anthropic Skills** repository. This includes:
*   **`.claude-plugin/`**: Native Claude integration.
*   **`skills/`**: Pre-built community and official skills for coding workflows.
*   **`template/`**: Templates for creating your own modular skills.
*   **`spec/`**: Formal specifications for Anthropic Claude skills.

---

## 📄 License
This project is licensed under the **MIT License** - see the [LICENSE](file:///C:/Users/kiran/.gemini/antigravity/scratch/promptforge-ai/LICENSE) file for details.
