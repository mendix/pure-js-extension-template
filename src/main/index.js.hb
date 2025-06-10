import { studioPro } from "@mendix/extensions-api";
import jsIcon from "../icon/js_logo.png";

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
                            title: "MyExtension tab",
                            icon: jsIcon
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
