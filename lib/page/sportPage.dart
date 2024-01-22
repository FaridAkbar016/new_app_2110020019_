import 'package:flutter/material.dart';
import 'package:new_app_2110020019_/componen/costumlisttile.dart';
import 'package:new_app_2110020019_/model/article_model.dart';
import 'package:new_app_2110020019_/services/api_service.dart';

class SportPage extends StatefulWidget {
  const SportPage({Key key}) : super(key: key);

  @override
  State<SportPage> createState() => _SportPageState();
}

class _SportPageState extends State<SportPage> {
  @override
  Widget build(BuildContext context) {
    final ApiService client = ApiService();
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Sport Articles',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
          future: client.getArticleSp(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
            if (snapshot.hasData) {
              List<Article> article = snapshot.data;
              return ListView.builder(
                itemCount: article.length,
                itemBuilder: (context, index) =>
                    costumListTile(article[index], context),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
