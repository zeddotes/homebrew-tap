# homebrew-tap

Personal [Homebrew](https://brew.sh) tap for [zeddotes](https://github.com/zeddotes) packages.

## Packages

| Cask | Product | Upstream |
|------|---------|----------|
| `quick-term` | [QuickTerm](https://github.com/zeddotes/quick-term) | Menubar quick terminal for macOS |

## Install QuickTerm

```bash
brew install --cask zeddotes/tap/quick-term
```

## Upgrade

```bash
brew update
brew upgrade --cask quick-term
```

## Uninstall

Disable **Launch at Login** in QuickTerm Preferences first if enabled (Homebrew `zap` does not remove Login Items).

```bash
brew uninstall --cask --zap quick-term
```

## Unsigned builds

Release binaries are **not** Developer ID–signed or notarized. The cask `postflight` strips the Gatekeeper quarantine attribute after install so the app can launch on developer machines.

Treat the download as supply-chain-sensitive: prefer the fully-qualified install above, and verify the GitHub Release tag/SHA when it matters.

## Binary hosting

Cask downloads come from **this** repo’s [Releases](https://github.com/zeddotes/homebrew-tap/releases) (tags like `quick-term-v1.0.0`). Upstream app repos may be private; Homebrew requires a public URL.

## Maintaining casks

Ship releases from the upstream app repo. Its release workflow uploads the zip here and bumps `Casks/quick-term.rb` (`version` + `sha256`) automatically.

Hand-edit the cask only if that CI step fails.

