-- Run only in the dedicated Grandsquare Supabase project.
create table if not exists public.products (
 id text primary key, slug text unique not null, name text not null, subtitle text, description text,
 price numeric(10,2) not null check(price>=0), compare_at_price numeric(10,2), category text not null default 'Everyday',
 color text, color_hex text, sizes text[] not null default '{}', image_urls text[] not null default '{}',
 model_glb_url text, model_usdz_url text, published boolean not null default false,
 created_at timestamptz not null default now(), updated_at timestamptz not null default now()
);
alter table public.products enable row level security;
drop policy if exists "Anyone can view published Grandsquare products" on public.products;
create policy "Anyone can view published Grandsquare products" on public.products for select to anon, authenticated using(published=true);
create table if not exists public.grandsquare_profiles(user_id uuid primary key references auth.users(id) on delete cascade,role text not null default 'customer' check(role in ('owner','admin','customer')),created_at timestamptz not null default now());
alter table public.grandsquare_profiles enable row level security;
drop policy if exists "Users can read their own Grandsquare profile" on public.grandsquare_profiles;
create policy "Users can read their own Grandsquare profile" on public.grandsquare_profiles for select to authenticated using((select auth.uid())=user_id);
insert into storage.buckets (id,name,public,file_size_limit,allowed_mime_types) values ('grandsquare-product-images','grandsquare-product-images',true,10485760,array['image/jpeg','image/png','image/webp']) on conflict(id) do nothing;
insert into storage.buckets (id,name,public,file_size_limit,allowed_mime_types) values ('grandsquare-models','grandsquare-models',true,52428800,array['model/gltf-binary','model/vnd.usdz+zip','application/octet-stream']) on conflict(id) do nothing;
drop policy if exists "Public can read Grandsquare product images" on storage.objects;
create policy "Public can read Grandsquare product images" on storage.objects for select to anon, authenticated using(bucket_id in ('grandsquare-product-images','grandsquare-models'));
drop policy if exists "Signed in users can upload Grandsquare assets" on storage.objects;
create policy "Signed in users can upload Grandsquare assets" on storage.objects for insert to authenticated with check(bucket_id in ('grandsquare-product-images','grandsquare-models'));
-- Customer-facing products can be read; writes to the products table are intentionally not publicly granted.
