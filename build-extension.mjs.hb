import * as esbuild from 'esbuild'
import {copyToAppPlugin, copyManifestPlugin, commonConfig} from "./build.helpers.mjs"
import parseArgs from "minimist"

const outDir = `dist/{{extensionName}}`
const appDir = "{{applicationDirectory}}"

const entryPoints = [
    {
        in: 'src/main/index.js',
        out: 'main'
    }   
]

{{#if useReact}}
entryPoints.push({
    in: 'src/ui/index.jsx',
    out: 'tab'
})
{{else}}
entryPoints.push({
    in: 'src/ui/index.js',
    out: 'tab'
})
{{/if}}

const args = parseArgs(process.argv.slice(2))
const buildContext = await esbuild.context({
  ...commonConfig,
  outdir: outDir,
  plugins: [copyManifestPlugin(outDir), copyToAppPlugin(appDir, outDir)],
  entryPoints
})

if('watch' in args) {
    await buildContext.watch();
} 
else {
    await buildContext.rebuild();
    await buildContext.dispose();
}
