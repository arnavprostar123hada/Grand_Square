export type ProductCategory = 'Everyday' | 'Formals' | 'Linen' | 'Weekend'
export type Product = { id:string; name:string; subtitle:string; price:number; category:ProductCategory; color:string; colorHex:string; sizes:string[]; image:string; images:string[]; description:string; isNew?:boolean; modelGlbUrl?:string; modelUsdzUrl?:string; published:boolean }
