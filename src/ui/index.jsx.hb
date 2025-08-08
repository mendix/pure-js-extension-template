import React, { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { IComponent } from "@mendix/extensions-api";

export const component = {
{{#if (versionGraterThanOrEqual 11)}}
    async loaded(componentContext) {
{{else}}
    async loaded() {
{{/if}}
        createRoot(document.getElementById("root")).render(
            <StrictMode>
                <h1>Mendix Studio Pro Extension</h1>
                <p>Hello from {{extensionName}}!</p>
            </StrictMode>
        );
    }
}
