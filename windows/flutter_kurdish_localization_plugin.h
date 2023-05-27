#ifndef FLUTTER_PLUGIN_FLUTTER_KURDISH_LOCALIZATION_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_KURDISH_LOCALIZATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_kurdish_localization {

class FlutterKurdishLocalizationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterKurdishLocalizationPlugin();

  virtual ~FlutterKurdishLocalizationPlugin();

  // Disallow copy and assign.
  FlutterKurdishLocalizationPlugin(const FlutterKurdishLocalizationPlugin&) = delete;
  FlutterKurdishLocalizationPlugin& operator=(const FlutterKurdishLocalizationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_kurdish_localization

#endif  // FLUTTER_PLUGIN_FLUTTER_KURDISH_LOCALIZATION_PLUGIN_H_
