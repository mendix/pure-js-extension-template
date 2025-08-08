{{#if (versionGraterThanOrEqual 11)}}
import { getStudioProApi } from "@mendix/extensions-api";
{{else}}
import { studioPro } from "@mendix/extensions-api";
{{/if}}

export const component = {
{{#if (versionGraterThanOrEqual 11)}}
    async loaded(componentContext) {
        const studioPro = getStudioProApi(componentContext);
{{else}}
    async loaded() {
{{/if}}
        await studioPro.ui.extensionsMenu.add({
            menuId: "{{extensionName}}.MainMenu",
            caption: "MyExtension Menu",
            subMenus: [
                { menuId: "{{extensionName}}.ShowMenu", caption: "Show tab"}
            ],
        });

        // Open a tab when the menu item is clicked
        studioPro.ui.extensionsMenu.addEventListener(
            "menuItemActivated",
            (args) => {
                if (args.menuId === "{{extensionName}}.ShowMenu") {
                    studioPro.ui.tabs.open(
                        {
                            title: "MyExtension tab"
                        },
                        {
                            componentName: "extension/{{extensionName}}", 
                            uiEntrypoint: "tab"
                        }
                    )
                }
            }
        )
    }
}
