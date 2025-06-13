import { studioPro } from "@mendix/extensions-api";

class Main {
    async loaded() {
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

export const component = new Main();
