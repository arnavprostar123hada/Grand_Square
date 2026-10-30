import type { Product } from '../types'

export const demoProducts: Product[] = [
  {
    id: 'gs-demo-001',
    name: 'Classic White Shirt',
    subtitle: 'Clean everyday style · crisp finish',
    price: 900,
    originalPrice: 1200,
    category: 'Everyday',
    color: 'Classic White',
    colorHex: '#eeeae0',
    sizes: ['S', 'M', 'L', 'XL'],
    image: '/products/shirt-1.jpg',
    images: ['/products/shirt-1.jpg'],
    description: 'A timeless Grand Square shirt in classic white. Available in S, M, L and XL. Special MVP Expo price: ₹900 (regular price ₹1,200).',
    isNew: true,
    published: true
  },
  {
    id: 'gs-demo-002',
    name: 'Sky Blue Shirt',
    subtitle: 'Fresh light blue · versatile everyday wear',
    price: 900,
    originalPrice: 1200,
    category: 'Everyday',
    color: 'Sky Blue',
    colorHex: '#c9dce3',
    sizes: ['S', 'M', 'L', 'XL'],
    image: '/products/shirt-2.jpg',
    images: ['/products/shirt-2.jpg'],
    description: 'A fresh sky-blue Grand Square shirt for a smart, easy look. Available in S, M, L and XL. Special MVP Expo price: ₹900 (regular price ₹1,200).',
    isNew: true,
    published: true
  },
  {
    id: 'gs-demo-003',
    name: 'Olive Green Shirt',
    subtitle: 'Subtle olive tone · easy to style',
    price: 900,
    originalPrice: 1200,
    category: 'Everyday',
    color: 'Olive Green',
    colorHex: '#7d8060',
    sizes: ['S', 'M', 'L', 'XL'],
    image: '/products/shirt-3.jpg',
    images: ['/products/shirt-3.jpg'],
    description: 'A distinctive olive-green Grand Square shirt with a versatile, understated look. Available in S, M, L and XL. Special MVP Expo price: ₹900 (regular price ₹1,200).',
    isNew: true,
    published: true
  }
]
