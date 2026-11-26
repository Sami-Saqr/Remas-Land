# Design Tokens — Remas Land (Extracted from Figma)

- **Theme Mode**: Light mode only (no dark mode frames exist in Figma).
- **Palette Unification**: Per project decision, Category Products Page is unified onto the main `#F9F9FF` / `#111C2D` palette (no separate Slate variation).
- **Reference Canvas**: `390px` mobile viewport width.

## Colors (HEX)
| Token | Hex | Usage |
|---|---|---|
| `primary` | `#1D4ED8` | Primary CTAs, active chips, badges, prices (Search/Cart/Category), gradients |
| `primaryBright` | `#2563EB` | Active bottom nav icon/label, Home prices, stepper `+`, Checkout CTA |
| `primaryDark` | `#1E40AF` | Banner & card gradient mid/end |
| `primaryDeep` | `#1E3A8A` | Category banner & privilege card gradient start |
| `scaffoldBg` | `#F9F9FF` | Main scaffold background across all screens |
| `surface` | `#FFFFFF` | Cards, sticky nav (`95%` alpha + `24px` blur) |
| `surfaceTint` | `#F0F3FF` | Search input, 2-col home categories, wallet card, image bg |
| `surfaceTintStrong` | `#E7EEFF` | Stepper bg, delivery pill, promo pill, icon circles |
| `badgeTint` | `#DEE8FF` | Encrypted pill, farm card (`50%` alpha), cashback circle |
| `pillTint` | `#DCE1FF` | `"5 Found"` count badge |
| `dotInactive` | `#D8E3FB` | Inactive carousel dot, probiotic tag |
| `surfaceSoft` | `#EFF6FF` | Explore list icon backgrounds |
| `inkPrimary` | `#111C2D` | Primary headings & titles |
| `inkSecondary` | `#434655` | Body text, inactive nav labels |
| `inkMuted` | `#747686` | Captions, metadata, strikethrough prices, placeholders |
| `inkFaint` | `#C4C5D7` | App version footer |
| `onPrimaryMuted` | `#DBEAFE` | Subtitle text on blue banners |
| `onPrimarySoft` | `#CAD3FF` | Card micro-labels on privilege card |
| `accentAmber` | `#FE932C` | Morning dot, Bestseller badge, Cheese Week gradient end |
| `accentAmberDark` | `#904D00` | Morning delivery text, Cheese Week gradient start |
| `accentAmberInk` | `#663500` | Text on Bestseller amber badge |
| `accentGold` | `#FCD34D` | Category banner badge & discount `%` |
| `accentPeach` | `#FFDCC3` | Privilege badge text on digital card |
| `error` | `#BA1A1A` | Clear cart, Log Out text |
| `errorTint` | `#FFDAD6` | Log Out button fill (`40%` alpha) |
| `borderLight` | `#E2E8F0` | Unselected filter chips, subtle hairlines |

## Typography
- **Primary Family**: `Plus Jakarta Sans` (Bundled `.ttf` weights: `400`, `500`, `600`, `700`, `800`).
- **Display Accent Family**: `Playfair Display` (Bundled `.ttf` weight: `700` — Category banner heading).
- **Monospace Family**: `Liberation Mono` (Bundled `.ttf` weights: `400`, `700` — Privilege Card digits & expiry).

| Style | Size | Weight | Line Height | Tracking |
|---|---|---|---|---|
| `balanceHero` | `34` | `800` | `42` | `-0.85` |
| `totalHero` | `26` | `700` | `39` | `0` |
| `pageTitle` | `22` | `700` | `28` | `-0.22` |
| `sectionTitle` | `19` | `600` | `25` | `-0.19` |
| `appBarTitle` | `17` | `700` | `23.38` | `-0.425` |
| `cardTitle` | `16` | `600` | `22` | `0` |
| `bodyMedium` | `14` | `400–500` | `20` | `0` |
| `bodyCompact` | `13` | `600` | `18` | `0.13` |
| `caption` | `12` | `400–600` | `16` | `0` |
| `micro` | `11` | `500–700` | `14–16.5` | `0.22` |
| `overline` | `10` | `700` | `12–15` | `0.4–0.5` |
| `cardMicro` | `9` | `400` | `13.5` | `0.45–0.9` |

## Spacing, Radius, Shadows & Sizes
- **Spacing**: `4`, `8`, `12`, `16`, `20`, `24`, `32` (screen horizontal margin: `16`).
- **Radius**: `4` (tags), `6` (discount badge, EMV chip), `8` (thumbs, wallet buttons, checkout button, icon boxes), `12` (cards, inputs, CTA, pills), `16` (banners, product grid cards, Privilege card, checkout dock), `9999` (circular/pill).
- **Shadows**:
  - `shadowXs`: `color: #000000 (5%)`, `blur: 1`, `offset: (0, 1)`
  - `shadowSm`: `color: #000000 (5%)`, `blur: 2`, `offset: (0, 1)`
  - `shadowCard`: `color: #1E293B (4%)`, `blur: 20`, `spread: -2`, `offset: (0, 4)`
  - `shadowGridCard`: `color: #000000 (3%)`, `blur: 6`, `offset: (0, 2)`
  - `shadowNav`: `color: #1E293B (6%)`, `blur: 20`, `offset: (0, -4)`
  - `shadowDock`: `color: #1E293B (12%)`, `blur: 30`, `offset: (0, -8)`
  - `shadowBankingCard`: `color: #000000 (10%)`, `blur: 25`, `spread: -5`, `offset: (0, 20)`
  - `shadowPrimaryButton`: `color: #000000 (10%)`, `blur: 6`, `spread: -1`, `offset: (0, 4)`
- **Component Sizes**:
  - Bottom Nav height: `64` (+ safe area bottom)
  - Sticky Home Header height: `80` (+ safe area top)
  - Search Input height: `48` (Search), `38` (Category)
  - Primary CTA height: `48` (Wallet/Logout), `50` (Empty Cart), `52` (Checkout Dock)
  - Add `+` Circle Button: `32` (grid/spotlight), `40` (search list)
  - Stepper Circle Button: `28` (Cart), `24` (Category grid)
