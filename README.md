# Grandsquare — AR Shirt Store

Modern apparel storefront starter built with React, Vite and TypeScript.

Features: responsive fashion catalogue, product-photo upload workspace, product details, size/color choices, wishlist, cart demo, and truthful 3D/AR readiness states.

## Setup

Copy `.env.example` to `.env` and configure a **dedicated Grandsquare Supabase project**. Do not reuse the Ramanujan Academy project because it contains education/student/finance records.

`npm install && npm run dev`

## Shirt photos and true 3D/AR
This project allows admins to upload multi-view garment photos and link validated GLB (web 3D) and USDZ (iOS AR) assets. A single 2D photo does not reliably become a fit-accurate cloth-simulating 3D model automatically. Use a garment reconstruction or 3D workflow to create and review model files, and test AR on real devices. The UI will not claim AR works until a model URL is attached.

## Supabase
Run `supabase/schema.sql` only in a dedicated Grandsquare project. The schema enables RLS and permits public reading of published products; admin write policies must be added once a secure auth/role setup is configured. Never put the service-role key in the browser.
