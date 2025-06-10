{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch StudioPro with debugger attached",
            "type": "msedge",
            "useWebView": true,
            "runtimeExecutable": "{{studioProExecutablePath}}",
            "runtimeArgs": ["--enable-extension-development", "--enable-web-extensions", "--enable-dev-mode"],
            "request": "launch",
            "webRoot": "${workspaceFolder}/dist/{{extensionName}}"
        }
    ]
}
