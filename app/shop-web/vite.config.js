import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import vue from '@vitejs/plugin-vue'

export default defineConfig({
    plugins: [
        vue(),
        laravel({
        input: ['resources/js/app.js','resources/css/bootstrap.min.css','resources/js/bootstrap.bundle.min.js'],
        refresh: true,
    }),
    ],
});