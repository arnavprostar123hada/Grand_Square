# Grandsquare — AR Shirt Store

Modern apparel storefront starter built with React, Vite, TypeScript, and Supabase integration points.

## Included
- Responsive editorial storefront and product cards
- Category tabs, search and sorting
- Product detail panel, color and size selection
- Wishlist and demo shopping cart
- Admin product workspace to upload multi-view shirt photos and product metadata
- GLB/USDZ asset fields and honest AR readiness state
- Supabase schema in `supabase/schema.sql`

## Run locally
```bash
npm install
npm run dev
```

Copy `.env.example` to `.env` and add credentials from a **dedicated Grandsquare Supabase project**. Do not reuse the connected Ramanujan Academy project; it holds education, student and financial records.

## 3D garment reconstruction and AR
Uploading photos is not the same as automatically creating a production quality 3D garment. For useful AR, capture front/back/sides/collar/cuff/fabric detail photos, then use a garment reconstruction / professional 3D workflow to produce a reviewed, textured GLB and (for iOS Quick Look) USDZ model. Test supported devices. Fit simulation/body-aware try-on is a separate, more advanced capability; this starter does not claim to have implemented it.

Products show a standard photo preview until a real model URL is attached. The AR entry will only open a supplied GLB/USDZ URL.

## Supabase security
Run `supabase/schema.sql` only in a dedicated Grandsquare project. It enables RLS and public read of published products, while writes remain denied until an authenticated admin policy is designed. Create separate Storage buckets for product images and 3D models and restrict uploads to admins. Do not expose service-role/secret keys in the browser.

## Deployment
Link this GitHub repo to Vercel after the GitHub App integration is installed. Set build command `npm run build`, output directory `dist`, framework `Vite`. Add `VITE_SUPABASE_URL` and `VITE_SUPABASE_PUBLISHABLE_KEY` only after the dedicated Grandsquare project is created.

## Known demo limitations
- Demo product images and catalogue are sample content.
- Admin uploads currently create browser-local preview URLs; those URLs are not permanent and will not persist across devices. Configure Supabase Storage upload before using the product uploader operationally.
- Checkout and newsletter are UI placeholders; connect a payment and email provider before accepting orders/signups.
