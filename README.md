# Branch Name Checker
Pre-commit hook to enforce branch naming conventions.

Installation
Add to .pre-commit-config.yaml:

```yaml
repos:
  - repo: https://github.com/conradogarciaberrotaran/branch-name-checker
    rev: v1.0.0
    hooks:
      - id: check-branch-name
        args: ['--pattern', '^your-pattern-here$']
```
