import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_kurdish_localization_fork/flutter_kurdish_localization_fork.dart';
import 'package:flutter_kurdish_localization_fork/flutter_kurdish_localization_fork_platform_interface.dart';
import 'package:flutter_kurdish_localization_fork/flutter_kurdish_localization_fork_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterKurdishLocalizationForkPlatform
    with MockPlatformInterfaceMixin
    implements FlutterKurdishLocalizationForkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterKurdishLocalizationForkPlatform initialPlatform =
      FlutterKurdishLocalizationForkPlatform.instance;

  test('$MethodChannelFlutterKurdishLocalizationFork is the default instance',
      () {
    expect(initialPlatform,
        isInstanceOf<MethodChannelFlutterKurdishLocalizationFork>());
  });

  test('getPlatformVersion', () async {
    FlutterKurdishLocalizationFork flutterKurdishLocalizationForkPlugin =
        FlutterKurdishLocalizationFork();
    MockFlutterKurdishLocalizationForkPlatform fakePlatform =
        MockFlutterKurdishLocalizationForkPlatform();
    FlutterKurdishLocalizationForkPlatform.instance = fakePlatform;

    expect(
        await flutterKurdishLocalizationForkPlugin.getPlatformVersion(), '42');
  });
}
