import 'package:flutter/material.dart';

import 'interview_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('通知ボタンが押されました');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.autorenew,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('更新ボタンが押されました');
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              print('設定ボタンが押されました');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('CE就職支援アプリ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home_sharp),
              title: const Text('ホーム'),
              onTap: () {
                print('ホームボタンが押されました');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: const Text('検索'),
              onTap: () {
                print('検索ボタンが押されました');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.mode_comment_rounded),
              title: const Text('面接対策'),
              onTap: () {
                print('面接対策ボタンが押されました');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => interviewPage()),
                );
                // Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment_ind),
              title: const Text('小論文対策'),
              onTap: () {
                print('小論文対策ボタンが押されました');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.sticky_note_2_sharp),
              title: const Text('履歴書'),
              onTap: () {
                print('履歴書ボタンが押されました');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}