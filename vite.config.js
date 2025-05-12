import { defineConfig } from 'vite'
export default defineConfig({
  build: {
    lib: {
      formats: ['es'],
      entry: {
        main: 'src/main/index.js',
        tab: 'src/ui/tab.js'
      }
    },
    rollupOptions: {
      external: ["@mendix/component-framework", "@mendix/model-access-sdk"]
    },
    outDir: './dist/pureJsExtension'
  }
})
