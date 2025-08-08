import { IComponent } from "@mendix/extensions-api";

export const component = {
{{#if (versionGraterThanOrEqual 11)}}
    async loaded(componentContext) {
{{else}}
    async loaded() {
{{/if}}
        const wrapper = document.createElement('div')

        const studioProHeader = document.createElement('h1')
        studioProHeader.textContent = 'Mendix Studio Pro Extension';

        const helloParagraph = document.createElement('p');
        helloParagraph.textContent = 'Hello from {{extensionName}}!';

        wrapper.append(studioProHeader, helloParagraph);

        const root = document.getElementById("root");
        root.append(wrapper);
    }
}
