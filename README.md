# codybarr.dev

https://codybarr.dev

Personal portfolio. Static HTML and CSS; no build step or JavaScript required.

## Assets

Fonts are self-hosted Latin WOFF2 subsets of Barlow Condensed (600/700)
and Manrope (variable, used at 400–600), sourced from Google Fonts. Their
SIL Open Font Licenses are included in `fonts/`. Small monospace labels use
system fonts, avoiding an additional font download.

Original PNGs are retained in `images/`. After replacing a project screenshot
or avatar, regenerate the responsive WebP files committed in `images/optimized/`:

```sh
# macOS; other platforms can install WebP through their package manager
brew install webp
bash scripts/optimize-images.sh
```

Screenshots are generated at 400, 800, and 1200 pixels wide; avatars at 48,
96, and 144 pixels. Image `sizes` in `index.html` mirrors the grid breakpoints
in `main.css` and should be updated if that layout changes.
