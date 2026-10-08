# FentWare Glass — development notes

This Playnite Desktop XAML theme is based on Daze 2.3.1. Preserve the upstream MIT license and attribution.

## Design direction

Align with the **FentWare Site** CSS design tokens, not a blue-tinted glass palette:
- background `#020205`
- glass: white at 5.5% opacity
- strong glass: white at 10.5%
- outlines: white at 16%
- primary text: white at 92%
- muted text: white at 56%

Current theme tokens are in `Constants.xaml`. The styling is still under development.

## Testing from the clone

1. Pull `main`.
2. Point your Playnite Desktop theme directory at the extracted theme folder (currently `Daze_27790ca9-d3a4-480f-bffe-914ec6768363_2_3_1`) using a Windows junction, or copy the theme folder.
3. Enable **FentWare Glass** in Playnite Desktop settings and restart it after XAML changes.
4. Test grid, list, details, filters, context menus, and dialogs at 1080p and 1440p.
5. Package to `.pthm` with Playnite Toolbox for distribution through fentware.cc.

## Planned assets

- Transparent FentWare logo (512px or larger); replace `Images/applogo.png` and consider existing sidebar references.
- FentWare wallpaper or fallback background in 1080p/1440p.
- Optional navigation icons and typography assets, with suitable redistribution rights.

## Next styling work

- Sidebar and top panel in `Views/Sidebar.xaml` and `Views/TopPanel.xaml`
- Grid hover and selection in `DerivedStyles/GridViewItemTemplate.xaml`
- Game details in `Views/GridViewGameOverview.xaml` and `Views/DetailsViewGameOverview.xaml`
- Play button and dialogs in shared XAML style files

Preserve working Playnite template part names and bindings. The application-level theme has not yet been tested in this environment.
