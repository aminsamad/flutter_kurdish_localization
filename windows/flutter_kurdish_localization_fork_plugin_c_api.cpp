#include "include/flutter_kurdish_localization_fork/flutter_kurdish_localization_fork_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_kurdish_localization_fork_plugin.h"

void FlutterKurdishLocalizationForkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_kurdish_localization_fork::FlutterKurdishLocalizationForkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
