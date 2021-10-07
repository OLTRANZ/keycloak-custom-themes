# keycloak-custom-themes

This is a repo for custom themes for Oltranz Keycloak

---

## Getting Started
Git clone this repository and cd into to the project directory

### Prerequisites

Prerequisite for viewing the themes is a local Keycloak installation. 
1. You can follow this [tutorial](https://www.keycloak.org/docs/latest/getting_started/).
2. Start the local Keycloak server
```bash
cd <path-to-keycloak>
bin/standalone.sh
```
This will start the keycloak server on `http://localhost:8080` 

## Develop theme

### Initialize theme

1. From inside this repository, make a copy of the `theme/default_oltranz` folder. Name the new folder an appropriate name. This will be your new theme.
2. Customize this folder to match your needs. Follow the [official documentation](https://www.keycloak.org/docs/latest/server_development/#_themes).

> Note: This repository is shared by all themes. Do not make changes to other themes.

### Package theme

1. Edit the `META-INF/keycloak-themes.json` file to add your theme. Themes not added to this file will not be discovered by Keycloak. More info [here](https://www.keycloak.org/docs/latest/server_development/#deploying-themes)
```json
{
    "themes": [                        # This is a list of objects. One object per theme. Do not edit other objects.
        {
            "name": "default_oltranz", # must be same name as your theme folder.
            "types": [                 # You can add only the types you edited and leave the rest. You usually want to leave all 5.
                "login",
                "email",
                "welcome",
                "admin",
                "account"
            ]
        } 
    ]
}
```
2. Update the version of the theme by editing the following line in the pom.xml file.
```xml
<version>0.0.10</version>
```
3. The theme is packaged as a jar file. 
```bash
mvn clean install
```
This last command will create a `theme-x.x.x.jar` file in `target` folder where `x.x.x` is the version set earlier.

### Deploy theme
1. You will need to copy the packaged theme into the deployments folder of Keycloak and it will be loaded automatically. 

Drag and drop or run the following command:

```bash
cp keycloak-custom-theme/target/theme-x.x.x.jar <path-to-local-keycloak>/standalone/deployments/
```
2. Wait a minute and restart the browser. Your theme shall show up under the drop down in the Keycloak realm settings.
## Running the Tests
Currently Tests are under development, They'll be available soon

## Deployment
Coming Soon

## Built With
* Ftl
* Git
* Javascript
* Css
* HTML

## Authors
* **JABIRO Christian** (https://github.com/jabichris)
* **Andrew Musoke** (https://github.com/andrew-musoke)
## Licence
This software is proprietary and published by `Oltranz Engineers Team`.
