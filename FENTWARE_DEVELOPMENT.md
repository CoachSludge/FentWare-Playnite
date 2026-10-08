# FentWare Glass — Playnite Desktop

Working theme based on Daze 2.3.1. Keep Daze attribution and LICENSE intact.

## v0.1 foundation

- Unique FentWare Glass theme ID/name/version in `theme.yaml`.
- Cool charcoal background, desaturated slate glass surfaces and soft silver foreground in `Constants.xaml`.
- Rounded panels, thinner control outlines, Segoe UI fallback so a separate Lato install is not needed.
- No external images or extensions required for this initial palette pass. Current inherited Daze images remain placeholders.

## Local test

1. Check out `feature/fentware-glass-foundation`.
2. Copy the folder `Daze_27790ca9-d3a4-480f-bffe-914ec6768363_2_3_1` into `%APPDATA%\\Playnite\\Themes\\Desktop\\` (rename the folder to `FentWare-Glass` if desired).
3. Select **FentWare Glass** under Playnite's desktop theme settings, then restart Playnite.
4. Test grid, details, list, context menus, sidebar and modal dialogs at 1080p and higher resolutions.
5. Use Playnite Toolbox to package as .pthm only when distributing.

## Later assets from FentWare Site / Desktop

- **Brand mark**: transparent PNG (512 x 512 or larger), plus SVG source if available, to replace `Images/applogo.png`.
- **Background / wallpaper**: 1920x1080 or 2560x1440 image used across FentWare apps; confirm usage rights.
- **Brand tokens**: exact hex colors for surface, text, outlines and accent; desired font names.
- **Optional app icons**: transparent monochrome SVG/PNG for custom navigation if a redesign needs them.

## Next implementation work

- Tune sidebar/top panel styling using `Views/Sidebar.xaml`, `Views/TopPanel.xaml` and control styles.
- Refine selected/hover game tiles via `DerivedStyles/GridViewItemTemplate.xaml` and `GridViewItemStyle.xaml`.
- Harmonize game-details panel and play button.
- Replace placeholder Daze artwork once FentWare assets are provided.

This is a **code-only first pass**, not runtime-tested in Playnite yet. Avoid changing core Playnite template parts without checking their behavior.
