import { createClient } from '@supabase/supabase-js'

// Public publishable key only. Keep service-role keys on trusted servers, never VITE_ variables.
const url = import.meta.env.VITE_SUPABASE_URL || 'https://ahhwuofkpbdkyliznzmg.supabase.co'
const key = import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY || 'sb_publishable_2Xlwqf7Ettuuy8FvZ-gkSA_SBE9wN_U'
export const supabase = url && key ? createClient(url, key) : null
export const isSupabaseConfigured = Boolean(supabase)
