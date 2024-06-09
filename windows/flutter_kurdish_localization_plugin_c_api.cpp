#include "include/flutter_kurdish_localization/flutter_kurdish_localization_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_kurdish_localization_plugin.h"

void FlutterKurdishLocalizationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_kurdish_localization::FlutterKurdishLocalizationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
