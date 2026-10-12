# FentWare Glass for Playnite

A dark, translucent desktop theme for [Playnite](https://playnite.link/), built to match the FentWare ecosystem.

FentWare Glass brings the near-black surfaces, subtle white borders, restrained transparency, and rounded interface elements of [fentware.cc](https://fentware.cc/) into your game library.

## Features

- FentWare-inspired dark glass appearance
- Rounded game covers, controls, and panels
- Grid, details, and list views
- Game backgrounds and familiar Playnite library features
- Ongoing visual improvements as the FentWare design system evolves

## Installation

A downloadable `.pthm` package is planned for **[fentware.cc](https://fentware.cc/)**. It has not been published yet.

To build it on a Windows machine with Playnite installed:

```powershell
.\Build-Theme.ps1
```

This uses Playnite's `Toolbox.exe pack` command and writes the installable `.pthm` into `dist/`. If Playnite is installed in a nonstandard location, supply `-ToolboxPath "C:\path\to\Playnite\Toolbox.exe"`. Upload the generated `.pthm` to the site's downloads directory. Users can double-click the `.pthm` to install the theme, then select FentWare Glass in Playnite's Desktop Appearance settings.

## Project status

**Early development — 0.1.0.** Styling is being adapted from the Daze 2.3.1 baseline. This version has not yet completed Playnite compatibility testing.

## Credits and license

FentWare Glass builds on **Daze**, created by **Dario Lupo (Super Dario)**. Daze's original code is licensed under the MIT License. The original copyright and license notice are preserved in [LICENSE](LICENSE).

FentWare modifications are maintained by the FentWare project. Playnite is a separate project and is not affiliated with FentWare.
