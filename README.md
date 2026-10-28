# Grandsquare — AR Shirt Store

Modern apparel storefront built with React, Vite, TypeScript, and Supabase.

## Included
- Responsive fashion storefront, product cards, category filters, search, sort
- Product detail sheet with size/color selection
- Wishlist and demo cart
- Admin workspace for uploading multiple product views and shirt metadata
- GLB/USDZ model URL fields with explicit AR readiness state
- Supabase product schema and two Storage buckets

## Run locally
```bash
npm install
npm run dev
```

## Backend
A dedicated Grandsquare Supabase project is created and the products/profile tables and Storage buckets have been provisioned. Browser config defaults to that project; override via `.env` if required. RLS is on and public customers can read published products. **Do not use the admin upload screen as an authenticated production admin yet:** product write policies are not granted publicly, and the interface still needs owner/admin sign-in and role enforcement. Permanent image uploads require a signed-in account due to Storage policy. Do not weaken RLS to make the demo work.

## Garment photo-to-3D / AR
This app does not claim that a photo upload alone reconstructs a true, fit-accurate 3D garment. Capture front/back/side/collar/cuff/fabric details, then use a garment reconstruction or professional 3D asset workflow to create/review a mesh. Attach a tested GLB model for web and USDZ for iOS Quick Look. Fit-accurate body simulation is a separate stage.

## Deployment
Vercel project has been created, but its connector scope still needs approval and GitHub integration must be enabled to link repository pushes. Approve the team access link from the setup chat, then connect `arnavprostar123hada/Grand_Square` in Vercel Dashboard → Project Settings → Git. Set build command `npm run build` and output directory `dist`.

## Before accepting orders
Add secure owner login/admin role management, admin-only product policies, payment gateway, orders, shipping/returns, permanent upload and cleanup, email provider, and test on mobile devices.
