resource "genesyscloud_flow" "New_Flow" {
  filepath          = "AirIndiaNaresh_v37-0.yaml"
  file_content_hash = filesha256("AirIndiaNaresh_v37-0.yaml")
  // Example flow configuration using substitutions:
  /*
  inboundCall:
    name: "{{flow_name}}"
    defaultLanguage: "{{default_language}}"
    startUpRef: ./menus/menu[mainMenu]
    initialGreeting:
      tts: "{{greeting}}"
    menus:
      - menu:
          name: Main Menu
          audio:
            tts: You are at the Main Menu, press 9 to disconnect.
          refId: mainMenu
          choices:
            - menuDisconnect:
                name: "{{menu_disconnect_name}}"
                dtmf: digit_9
  */
  // see https://developer.genesys.cloud/devapps/archy/flowAuthoring/lesson_07_substitutions
  // these replace the key-value pairs from the --optionsFile when using the archy CLI
  substitutions = {
    flow_name            = "An example flow"
    default_language     = "en-us"
    greeting             = "Hello World 1"
  }
}