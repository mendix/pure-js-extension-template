{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch StudioPro with debugger attached",
            "type": "msedge",
            "useWebView": true,
            "runtimeExecutable": "{{studioProExecutablePath}}",
{{#if (isNonEmpty applicationMprPath)}}
            "runtimeArgs": ["{{applicationMprPath}}", "--enable-extension-development", "--enable-web-extensions"],
{{else}}
            "runtimeArgs": ["--enable-extension-development", "--enable-web-extensions"],
{{/if}}
            "request": "launch",
            "webRoot": "${workspaceFolder}/dist/{{extensionName}}"
        }
    ]
}
