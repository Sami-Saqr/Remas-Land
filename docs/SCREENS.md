# Screens Specification — Remas Land

All primary browse & tab screens share the 5-tab bottom navigation (`Home`, `Search`, `Cart` with live item count badge, `Pay`, `More`). Deeper pushed screens hide the bottom bar. All in-app copy is unified under **Remas Land** (replacing Figma's "Qishta & Co." occurrences).

---

## Primary Screens (Figma Frames)

### 1. Food Home Page
- **Figma Frame**: `Remas Land - Food Home Page` (`node-id=1:502`)
- **Route**: `/home` (Tab 0)
- **Purpose**: Main discovery storefront with sticky delivery address header, auto-sliding promo banners, 8-tile "Explore Remas Land" aisle grid, "The Spotlight" horizontal carousel, "Special Offers" 2-up cards with countdown, "Shop by Brands", "Shop Deals & More" bundles, and 3x3 "Shop by Category" index.
- **Deliberate Deviation from Figma**: Keep ONLY the sticky top header location picker; omit the duplicate second `DELIVER TO` strip directly below it.
- **States**: Loading, Empty, Error, Success.
- **Navigation In**: App launch default; Bottom Nav `Home` tab; Empty Cart `Explore Products`.
- **Navigation Out**: Bell -> notifications sheet; Avatar -> `/more`; Location -> address picker sheet; Category/Brand/Deal/`View All` -> `/category/:slug`; Product card -> `/product/:id`; `+` -> adds to Drift Cart.
- **Data Needed**: Active address, user avatar, promo banners, categories, spotlight products, special offers, brands, curated bundles.

### 2. Search & Discover
- **Figma Frame**: `Remas Land - Search & Discover` (`node-id=1:1591`)
- **Route**: `/search` (Tab 1)
- **Purpose**: Live keyword search with clear action, horizontal "Popular Searches" chips, match count pill, filter trigger, vertical product result cards with quick-add `+`, and Same-Day Chilled Delivery guarantee card.
- **States**: Loading, Empty (no matches -> clear filters CTA), Error, Success.
- **Navigation In**: Bottom Nav `Search` tab.
- **Navigation Out**: Filter trigger -> filter bottom sheet; Product card -> `/product/:id`; `+` -> adds to Drift Cart.
- **Data Needed**: Popular search tags, filtered products, active delivery zone.

### 3. Category Products Page
- **Figma Frame**: `Qishta & Co. - Category Products Page` (`node-id=1:4`)
- **Route**: `/category/:slug` (inside main shell — keeps 5-tab bottom bar visible)
- **Deliberate Deviation from Figma**: Unified onto main `#F9F9FF` / `#111C2D` token palette instead of Slate variation; brand copy unified to **Remas Land**.
- **Purpose**: Dynamic category/brand storefront with sticky header (back, title + item count, cart badge), in-category search bar, filter chips (`All`, `Popular`, `New Arrivals`, `On Sale`), sort dropdown, promo banner, and 2-column responsive product grid with favorite heart toggle and inline `+` / quantity stepper.
- **States**: Loading, Empty, Error, Success.
- **Navigation In**: Tapping any category, brand, `View All`, or Empty Cart trending pill.
- **Navigation Out**: Back -> pop; Cart icon -> `/cart`; Product card -> `/product/:id`; Heart -> toggles Favorite; `+`/stepper -> updates Cart.
- **Data Needed**: Category metadata, promo banner, filtered/sorted products, cart quantities, favorite IDs.

### 4. Cart — Empty State
- **Figma Frame**: `Remas Land - Empty Cart` (`node-id=1:2082`)
- **Route**: `/cart` (Tab 2, when cart is empty)
- **Purpose**: Empty cart showing morning delivery strip, tactile jar/bag illustration, "No Products Added Yet" message, `Explore Products` CTA, `Trending Categories` emoji pills, reassurance cards, and farm promo card.
- **States**: Success (renders when cart item count == 0).
- **Navigation In**: Bottom Nav `Cart` tab (when empty), or after clearing/removing last item.
- **Navigation Out**: `Explore Products` -> `/home`; Trending category pills / Farm card -> `/category/:slug`.
- **Data Needed**: Cart count (`0`), trending categories.

### 5. Cart — With Products
- **Figma Frame**: `Remas Land - Cart with Products` (`node-id=1:1327`)
- **Route**: `/cart` (Tab 2, when cart has >= 1 item)
- **Purpose**: Active cart with `My Cart (N items)` & `Clear`, delivery ETA pill, cold chain strip, item cards (remove, `-`/`qty`/`+` stepper, line price & savings), "Goes Great With" upsell carousel, itemized `Order Summary`, promo code row, and sticky `Go to Checkout` dock.
- **States**: Loading, Empty (switches to Empty Cart), Error, Success.
- **Navigation In**: Bottom Nav `Cart` tab or Category header cart icon.
- **Navigation Out**: `Clear` -> empties Drift cart; Promo pill -> promo code sheet; `Go to Checkout` -> `/checkout` (hides bottom bar).
- **Data Needed**: Cart items + products, delivery address, pairing suggestions, active promo code, fee constants.

### 6. Remas Pay & Wallet
- **Figma Frame**: `Remas Land - Remas Pay & Wallet` (`node-id=1:1052`)
- **Route**: `/pay` (Tab 3)
- **Purpose**: Local EGP wallet & loyalty card hub: encrypted badge, Wallet Balance Card (`Hide/Show` toggle, `Add to Balance`, `Saved Cards`), `Remas Privilege` digital card + 3 perks + `Get Started — Instant Approval` CTA, `Quick Pay & Top-up` 4-button grid, and `Recent Transactions` list.
- **States**: Loading, Empty (no transactions), Error, Success.
- **Navigation In**: Bottom Nav `Pay` tab.
- **Navigation Out**: `Add to Balance`, `Saved Cards`, `Send Cash`, `Scan QR`, `Fawry Pay`, `Auto-Debit`, `View All` -> local modal sheets/dialogs.
- **Data Needed**: Wallet balance, balance visibility pref, privilege card status, saved cards, transactions.

### 7. More & Account
- **Figma Frame**: `Remas Land - More & Account` (`node-id=1:276`)
- **Route**: `/more` (Tab 4)
- **Purpose**: Account hub with Customer Profile Card, `Orders` & `Rewards` bento cards, `Morning Milking Pass` banner, `EXPLORE` list, `ACCOUNT & CARE` list, `Log Out` button, and app version footer (`Remas Land Cairo v2.4.1 • Farm Fresh Daily`).
- **States**: Loading, Error, Success.
- **Navigation In**: Bottom Nav `More` tab; Home header avatar.
- **Navigation Out**: Cards/rows -> Account sub-pages (hiding bottom bar) or light sheets; `Log Out` -> local session reset confirmation dialog.
- **Data Needed**: User profile, active orders count, rewards count, favorites count, addresses count.

---

## Screens without Figma Frames (Built in M3–M8 using Existing Tokens & `core/widgets/`)

### Full Screens (Bottom Bar Hidden)
1. **Product Details (`/product/:id`)**: Product image, brand/farm tag, rating, weight/unit, description, EGP price + discount, favorite toggle, and quantity stepper / Add to Cart bar.
2. **Checkout (`/checkout`)**: Delivery address summary, payment method selector (`Remas Wallet` / `Cash on Delivery` / `Saved Card`), order summary, and `Place Order` CTA creating a local Order + Wallet transaction.
3. **Orders & Reorder (`/orders`)**: Active & past local orders list with status badge, item summary, total EGP, and 1-tap `Reorder` into Cart.
4. **Delivery Addresses (`/addresses`)**: Saved Cairo/Giza addresses list, active selection, add/edit/delete address form backed by Drift.
5. **Account Sub-Pages (`/account/...`)**:
   - **Rewards (`/account/rewards`)**: Loyalty tier progress & redeemable local reward vouchers.
   - **Favorites & Saved Lists (`/account/favorites`)**: Favorited products grid/list with quick-add to Cart.
   - **Promo Codes & Vouchers (`/account/promos`)**: Available local promo codes with copy/apply-to-cart action.
   - **Settings & Preferences (`/account/settings`)**: Dietary tags & cold packaging alert toggles (`SharedPreferences`).
   - **Help & FAQs (`/account/help`)**: Expandable FAQ items on delivery zones, shelf life, and cold chain storage.
   - **Chat with Us (`/account/chat`)**: Simple local concierge Q&A / quick-prompt support view.

### Bottom Sheets & Dialogs (Light Actions)
1. **Address Picker Sheet**: Quick-switch active delivery address from Home header.
2. **Notifications Sheet**: Local delivery & promo notifications list from Home bell icon.
3. **Search / Category Filter & Sort Sheet**: Price range, on-sale, and sort options.
4. **Promo Code Entry Sheet**: Enter or pick a promo code in Cart.
5. **Wallet Top-up Sheet**: Add EGP amount to local wallet via saved card or Fawry reference.
6. **Saved Cards Sheet**: View/add/remove local mock payment cards.
7. **Quick Pay Action Sheets**: Lightweight local flows for `Send Cash`, `Scan QR`, `Fawry Pay`, `Auto-Debit`, and `View All Transactions`.
8. **Edit Profile Sheet & Invite a Friend Dialog**: Edit local user name/phone; share/copy local referral code.
