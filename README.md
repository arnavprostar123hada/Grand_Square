# Grandsquare — AR Shirt Store

Modern apparel storefront built with React, Vite, TypeScript, and Supabase.

## Included
- Responsive fashion storefront, product cards, category filters, search, sort
- Product detail sheet with size/color selection
- Wishlist and demo cart
- Admin workspace for product photos and product metadata
- GLB/USDZ model URL fields with explicit AR-ready state
- Supabase product schema and separate storage buckets

## Run locally
```bash
npm install
npm run dev
```

## Backend
A dedicated Grandsquare Supabase project has been created. Browser config defaults to its URL and publishable key; you may override with `.env`. The project schema is installed and RLS is enabled. Public customers can read published products. **Admin writes and permanent image upload still need secured authentication/storage integration**; admin UI is currently a starter workspace, and uploaded local preview URLs do not persist across devices.

## Garment photo-to-3D / AR
This does not claim that a photo upload alone reconstructs a true, fit-accurate 3D garment. Upload front/back/side/collar/cuff/fabric photos, generate/review a mesh using a garment reconstruction or 3D asset workflow, then attach a tested GLB (web) or USDZ (iOS Quick Look) URL. Test on real devices. Accurate body-aware virtual fit is a separate stage.

## Deployment
Vercel project creation succeeded, but GitHub linking currently needs Vercel's GitHub App integration to be installed and the Vercel connector's team access approved. Link this repo at Vercel Dashboard → Project Settings → Git once authorized. Use build command `npm run build` and output directory `dist`.

## Before commerce launch
Connect permanent Supabase Storage uploads with admin-only policies, secure admin authentication, order database, payment provider, shipping and returns policies, and newsletter integration. Demo product photos and prices are placeholders.
