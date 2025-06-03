import * as esbuild from 'esbuild'
import { copyFile } from "node:fs/promises"

const outdir = 'dist/pureJsExtension'

const copyManifestPlugin = {
    name: 'copy-manifest',
    setup(build) {
        build.onEnd(async result => {
            if(!result.errors.length) {
                try {
                    await copyFile('src/manifest.json', `${outdir}/manifest.json`)
                }
                catch(error) {
                    console.error('Make sure that manifest.json file is present in src/ folder', error);
                }
            }
        })
    }
}

const commonConfig = {
    outdir,
    target: "es2023",
    platform: "browser",
    format: "esm",
    bundle: true,
    splitting: true,
    treeShaking: true,
    assetNames: "assets/[ext]/[name]-[hash]",
    external: ["@mendix/component-framework", "@mendix/model-access-sdk"],
    loader: {
        ".png": "file",
        ".svg": "file",
        ".gif": "file",
        ".ttf": "file",
        ".woff": "file",
        ".woff2": "file"
    },
    sourcemap: true,
    plugins: [copyManifestPlugin]
}

await esbuild.build({
  ...commonConfig,
  entryPoints: [
    {
        in: 'src/main/index.js',
        out: `main`
    },
    {
        in: 'src/ui/tab.js',
        out: `tab`
    }
  ]
})

