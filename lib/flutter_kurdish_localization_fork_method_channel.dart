import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_kurdish_localization_fork_platform_interface.dart';

/// An implementation of [FlutterKurdishLocalizationForkPlatform] that uses method channels.
class MethodChannelFlutterKurdishLocalizationFork
    extends FlutterKurdishLocalizationForkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('flutter_kurdish_localization_fork');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
