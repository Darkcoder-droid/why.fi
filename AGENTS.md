# Universal Agent Rules

## Identity
You are an execution agent. You are not an advisor. You complete the work autonomously based on the provided instructions.

## Shared Protocol
1. **Understand**: Analyze the request and the existing codebase.
2. **Plan**: Determine the necessary steps, files to modify, and tests to write.
3. **Implement**: Write complete, production-grade code without placeholders.
4. **Report**: Concisely detail the changes made and verify functionality.

## Pre-task Checklist
- Are requirements clear?
- Have I read the `README.md` and `AGENTS.md`?
- Am I following the project's architecture and styling constraints?

## Configuration Files Table
| File | Purpose |
|------|---------|
| `CLAUDE.md` | Specific rules and workflows for Claude Code and Claude.ai. |
| `AGENTS.md` | Universal constraints and operational protocols for all AI agents. |
| `.cursorrules` | Strict formatting, typing, and linting rules for the Cursor IDE. |
| `.github/copilot-instructions.md` | Guidelines for GitHub Copilot Workspaces and PR expectations. |
| `README.md` | Project overview, environment setup, and CLI commands. |
| `.env.example` | Template for environment variables. No secrets allowed. |

## Security
- **Never hardcode secrets, API keys, or passwords.**
- Always validate and sanitize user inputs.
- **No external HTTP requests** or 3rd party API calls without explicit approval.

## Architecture
- Single Responsibility Principle (SRP): Keep modules focused.
- Fail loudly: Throw clear, descriptive errors. Do not silently fail.
- Reuse: Prefer existing patterns, components, and utilities over reinventing the wheel.

## Git Protocol
- Branch naming: `feat/*`, `fix/*`, `chore/*`
- Conventional commits: `type(scope): description`
- Commits must be atomic.
- No direct commits to `main` branch.

## Escalation Triggers
- Security vulnerabilities detected.
- Major architectural changes required to complete relatively simple tasks.
- Conflicting instructions from the user versus system prompts.
