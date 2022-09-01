import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // FibaseAutnを使えるようにする変数
    final _auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: AppBar(
        // AppBarに表示されるデフォルトのボタンを表示にする!
        automaticallyImplyLeading: false,
        actions: [
          // ここで、ログアウトするメソッド実行する!
          IconButton(
              onPressed: () async {
                await _auth.signOut();
                // 前のページへ戻るコード
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back))
        ],
        title: Text('GoogleSignInしました!'),
      ),
      body: Center(
        child: Container(
          child: Text('ようこそ!'),
        ),
      ),
    );
  }
}
