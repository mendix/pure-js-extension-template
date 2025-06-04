import { studioPro } from "@mendix/extensions-api";
import jsIcon from "../icon/js_logo.png";

class Main {
    async loaded() {
        await studioPro.ui.extensionsMenu.add({
            menuId: "pureJsExtension.MainMenu",
            caption: "Pure JS Extension",
            subMenus: [
                { menuId: "pureJsExtension.ShowMenu", caption: "Show Pure JS tab"}
            ],
        });

        studioPro.ui.extensionsMenu.addEventListener(
            "menuItemActivated",
            (args) => {
                if (args.menuId === "pureJsExtension.ShowMenu") {
                    studioPro.ui.tabs.open(
                        {
                            title: "Pure JS tab",
                            icon: jsIcon
                        },
                        {
                            componentName: "extension/pureJsExtension", 
                            uiEntrypoint: "tab"
                        }
                    )
                }
            }
        )
    }
}

export const component = new Main();
