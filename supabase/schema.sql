-- Run only in a dedicated Grandsquare Supabase project.
create table if not exists public.products (
 id text primary key, slug text unique not null, name text not null, subtitle text, description text,
 price numeric(10,2) not null check(price>=0), compare_at_price numeric(10,2), category text not null default 'Everyday',
 color text, color_hex text, sizes text[] not null default '{}', image_urls text[] not null default '{}',
 model_glb_url text, model_usdz_url text, published boolean not null default false,
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
alter table public.products enable row level security;
create policy "Anyone can view published Grandsquare products" on public.products for select to anon, authenticated using(published=true);
-- Writes remain denied until a properly secured admin role/policy is implemented.
create table if not exists public.grandsquare_profiles(user_id uuid primary key references auth.users(id) on delete cascade,role text not null default 'customer' check(role in ('owner','admin','customer')),created_at timestamptz not null default now());
alter table public.grandsquare_profiles enable row level security;
create policy "Users can read their own Grandsquare profile" on public.grandsquare_profiles for select to authenticated using((select auth.uid())=user_id);
-- Create separate Storage buckets 'grandsquare-product-images' and 'grandsquare-models' through Dashboard.
-- Add upload policies for admin accounts only. Never expose the service-role key to the browser.
