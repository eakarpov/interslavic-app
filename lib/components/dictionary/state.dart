import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interslavic_app/api/main.dart';
import 'package:interslavic_app/dto/article.dart';
import 'package:interslavic_app/dto/list_params.dart';
import 'package:interslavic_app/dto/page.dart';

class DictionaryView extends StatefulWidget {
  const DictionaryView({Key? key}) : super(key: key);

  @override
  _DictionaryState createState() => _DictionaryState();
}

class _DictionaryState extends State<DictionaryView> {
  FutureBuilder<CPage<ArticleDTO>>? body;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            constraints: const BoxConstraints(maxWidth: 400.0),
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Enter search value',
                ),
                onSubmitted: (String value) async {
                  setState(() {
                    body = FutureBuilder<CPage<ArticleDTO>>(
                      future: fetchArticles(ListParams(10, 1, value)),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text("loaded");
                        } else if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }

                        return const CircularProgressIndicator();
                      },
                    );
                  });
                },
              ),
            ),
          ),
          body ?? Text("Initially loaded"),
        ],
      ),
    );
  }
}