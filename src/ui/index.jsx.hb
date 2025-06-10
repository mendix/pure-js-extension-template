import React, { StrictMode } from "react";
import { createRoot } from "react-dom/client";

createRoot(document.getElementById("root")).render(
    <StrictMode>
        <h1>Mendix Studio Pro Extension</h1>
        <p>Hello from {{extensionName}}!</p>
    </StrictMode>
);
