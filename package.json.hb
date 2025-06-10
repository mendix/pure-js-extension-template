{
  "name": "{{extensionName}}",
  "version": "0.1.0",
  "type": "module",
  "description": "Extension for Mendix Studio Pro",
  "license": "MIT",
  "scripts": {
    "build": "node build-extension.mjs",
    "build:dev": "node build-extension.mjs --watch"
  },
  "dependencies": {
    "@mendix/extensions-api": "^0.1.1-mendix.10.21.0"{{#if useReact}},
    "react": "^18.3.1",
    "react-dom": "^18.3.1" {{/if}}
  },
  "devDependencies": {
    "@types/node": "^22.13.10",
    {{#if useReact}}
    "@types/react": "^18.3.18",
    "@types/react-dom": "^18.3.5",
    {{/if}}
    "esbuild": "0.25.5",
    "minimist": "^1.2.8"
  }
}
