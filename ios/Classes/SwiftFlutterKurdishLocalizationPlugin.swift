import Flutter
import UIKit

public class SwiftFlutterKurdishLocalizationPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_kurdish_localization", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterKurdishLocalizationPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}
