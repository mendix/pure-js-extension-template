# Studio Pro Web Extension Template

This repository contains a template for creating a web extension for [Mendix Studio Pro](https://www.mendix.com/platform/ide/). Use this template to kickstart your web extension development process.

## Getting Started

### Prerequisites

- Node.js (LTS version recommended)
- npm (usually comes with Node.js)
- Mendix Studio Pro (version 10.21.0 or later)

### Installation

1. Clone this repository (or fork it to create your own copy):
```bash
   git clone https://github.com/mendix/pure-js-extension-template.git
```

2. Navigate to the project directory:
```bash
   cd pure-js-extension-template
```

3. Install dependencies:
```bash
   npm install
```

### Building the Extension

To build the extension, run:

```bash
npm run build
```

The build output will be located in the `dist/pureJsExtension` directory.

## Usage

1. After building, copy the `pureJsExtension` directory from `dist` to the `extensions` directory in your Mendix app project. The resulting structure should be as follows:

```
<app directory>/
  App.mpr
  ...
  extensions/
    pureJsExtension/
      manifest.json
      main.js
      ...
```

2. Start Studio Pro with the `--enable-extension-development` feature flag.

3. Open your Mendix app in Studio Pro and start using your web extension!

## Development

We recommend using [Visual Studio Code](https://code.visualstudio.com/) (VSCode) for developing your web extension. VSCode offers excellent support for JavaScript/TypeScript development and has a wide range of helpful extensions.