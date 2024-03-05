import 'package:flutter/material.dart';
import 'package:yaru/yaru.dart';

Future<void> main() async {
  await YaruWindowTitleBar.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return YaruTheme(builder: (context, yaru, child) {
      return MaterialApp(
          theme: yaru.theme,
          darkTheme: yaru.darkTheme,
          debugShowCheckedModeBanner: false,
          home: const _Home());
    });
  }
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: YaruMasterDetailPage(
      appBar: const YaruWindowTitleBar(),
      length: 1,
      tileBuilder: (BuildContext context, int index, bool selected,
          double availableWidth) {
        return const YaruMasterTile(
          title: Text('Personal Folder'),
          leading: Icon(YaruIcons.home),
        );
      },
      pageBuilder: (BuildContext context, int index) {
        return const YaruDetailPage(
          appBar: YaruWindowTitleBar(
            title: Text('Personal Folder'),
          ),
          body: Center(
            child: Text('TODO'),
          ),
        );
      },
    ));
  }
}
