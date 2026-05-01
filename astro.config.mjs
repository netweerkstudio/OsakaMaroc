// @ts-check
import { defineConfig } from 'astro/config';

import cloudflare from '@astrojs/cloudflare';
import sitemap from '@astrojs/sitemap';

// https://astro.build/config
export default defineConfig({
  site: 'https://www.osakasolutions.ma',
  integrations: [sitemap()],
  adapter: process.argv.includes('dev') ? undefined : cloudflare()
});