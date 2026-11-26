# Assets Inventory — Remas Land

All fonts, vector icons, and raster images are bundled locally in `assets/` with zero runtime network dependencies.

## 1. Bundled Fonts (`assets/fonts/`)
Weights match those used in the Figma design only:
- **Plus Jakarta Sans** (`PlusJakartaSans`, weights `400`, `500`, `600`, `700`, `800`) — Source: `tokotype/PlusJakartaSans` (SIL Open Font License 1.1).
  - `PlusJakartaSans-Regular.ttf` (`400`)
  - `PlusJakartaSans-Medium.ttf` (`500`)
  - `PlusJakartaSans-SemiBold.ttf` (`600`)
  - `PlusJakartaSans-Bold.ttf` (`700`)
  - `PlusJakartaSans-ExtraBold.ttf` (`800`)
- **Playfair Display** (`PlayfairDisplay`, weight `700`) — Source: `google/fonts` (`ofl/playfairdisplay`, SIL Open Font License 1.1).
  - `PlayfairDisplay-Bold.ttf` (`700`)
- **Liberation Mono** (`LiberationMono`, weights `400`, `700`) — Source: `shantigilbert/liberation-fonts-ttf` mirror of Red Hat Liberation Fonts (SIL Open Font License 1.1).
  - `LiberationMono-Regular.ttf` (`400`)
  - `LiberationMono-Bold.ttf` (`700`)

## 2. Vector Icons & Illustrations (`assets/icons/`)
Extracted from the 7 Figma frames via Figma MCP (`flutter_svg`, no remote URLs):
- **Bottom Nav Icons**: `82e6e.svg` / `b1eaf.svg` (Home), `a854d.svg` / `87d3e.svg` (Search), `046a1.svg` / `f9229.svg` (Cart), `1fd99.svg` / `b2f66.svg` (Pay), `92d52.svg` / `2488c.svg` (More).
- **Empty Cart & Card Graphics**: `c3a84.svg` (ambient decor), `f3286.svg` (empty cart cream jar/bag illustration), `48a39.svg` (Privilege Card cream waves texture), `031c2.svg` (contactless NFC icon).
- **UI Icons**: Plus/minus steppers (`894d7.svg`, `f538d.svg`, `b17ab.svg`, `12237.svg`), search/clear (`333d8.svg`, `0a7a4.svg`), chevrons/arrows (`e5961.svg`, `5b512.svg`, `e5ea4.svg`, `07fab.svg`), header/action icons (`5abd0.svg`, `04c62.svg`, `36548.svg`, etc.).

## 3. Product, Category & Profile Images (`assets/images/`)
Extracted from the 7 Figma frames via Figma MCP:
- **Home Promo & Spotlight & Offers**: `83389.png`, `0023e.png`, `fc51b.png`, `bf5f9.png`, `83f60.png`, `24df0.png`, `df32b.png`, `77a63.png`, `5f489.png`.
- **Home Aisles, Deals & Categories**: `8688d.png`, `a9d03.png`, `9b337.png`, `64325.png`, `5b52b.png`, `a7d3d.png`, `61f0b.png`, `e6d90.png`, `15e8a.png`, `a5233.png`, `5a9d9.png`, `d8da3.png`, `9d984.png`, `eb987.png`, `53038.png`, `107cc.png`, `d3079.png`, `7c12c.png`.
- **Category Products Page**: `84729.png`, `1d7f6.png`, `ede16.png`, `1097a.png`, `5ad1d.png`, `cb256.png`.
- **Search & Cart Products**: `df508.png`, `efda1.png`, `9881e.png`, `786a9.png`, `9dcb3.png`, `bb826.png`, `c001d.png`, `9e039.png`, `e4e60.png`, `bakery.png`.
- **User Profile Avatar**: `d4683.png`, `0946e.png`.
- **Bakery Tile (`1:611`) Fallback**: Figma left the Home `Bakery` aisle image slot empty; per project decision, it reuses the seeded Figma pastry image `assets/images/bakery.png` (renamed from `f852a.png`, `Mini Baladi Feteer`, `AppAssets.catBakery`).
