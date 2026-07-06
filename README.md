# Resume

LaTeX source for a resume, built with `pdflatex` via `make`.

## Files

| File | Purpose |
|---|---|
| `resume.tex` | Main LaTeX source for the resume. |
| `UserPvtInfo.tex` | Private info (name, mobile, email, LinkedIn macros). Not tracked in git — see `.gitignore`. Create it locally before building; see [First-Time Setup](#first-time-setup). |
| `Makefile` | `make` builds `resume.pdf`; `make clean` removes intermediate build artifacts. |
| `resume.pdf` | Compiled output. |

## Build

```shell
make        # compiles resume.tex -> resume.pdf (runs pdflatex 3x)
make clean  # removes *.aux *.log *.out
```

## First-Time Setup

### 1. Git identity — required before every commit

This repository must **only** ever be committed under one specific username and email, regardless of whatever global `user.name` / `user.email` is configured on the machine. Set it locally, once per clone:
> [!CAUTION]
> ```shell
> git config --local user.name gpsingh29
> git config --local user.email 294837383+gpsingh29@users.noreply.github.com
> ```

`--local` scopes this to this repository only and takes precedence over any global git config, so switching machines or having a different global identity will not leak into this repo's commit history.

Before committing, always verify the identity that will be recorded:
> [!WARNING]
> ```shell
> git config user.name
> git config user.email
> ```

Both must print exactly:

```
gpsingh29
294837383+gpsingh29@users.noreply.github.com
```

If either line is blank or different, re-run the `git config --local ...` commands above **before** committing. Do not use `git commit --author` to patch this after the fact — fix the local config first.

### 2. Private info file

`UserPvtInfo.tex` is required by `resume.tex` (see the commit that made it optional) and is deliberately excluded from git via `.gitignore` since it contains personal contact details. Create it locally with the following macros before running `make`:
> [!IMPORTANT]
> ```latex
> \newcommand{\UserName}{...}
> \newcommand{\UserMobile}{...}
> \newcommand{\UserEmailID}{...}
> \newcommand{\UserLinkedIn}{\href{...}{...}}
> ```
