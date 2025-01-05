import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_kurdish_localization_fork_method_channel.dart';

abstract class FlutterKurdishLocalizationForkPlatform
    extends PlatformInterface {
  /// Constructs a FlutterKurdishLocalizationForkPlatform.
  FlutterKurdishLocalizationForkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterKurdishLocalizationForkPlatform _instance =
      MethodChannelFlutterKurdishLocalizationFork();

  /// The default instance of [FlutterKurdishLocalizationForkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterKurdishLocalizationFork].
  static FlutterKurdishLocalizationForkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterKurdishLocalizationForkPlatform] when
  /// they register themselves.
  static set instance(FlutterKurdishLocalizationForkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
