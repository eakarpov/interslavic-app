import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:interslavic_app/components/dictionary/state.dart';

class DictionaryPage extends StatelessWidget {
  const DictionaryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle),
      ),
      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: TextButton(
                  child: const Text('Dictionary'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/components.dictionary',
                    );
                  },
                ),
              ),
              ListTile(
                leading: const Icon(Icons.domain),
                title: TextButton(
                  child: const Text('Main page'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/',
                    );
                  },
                ),
              ),
            ]
        ),
      ),
      body: DictionaryView()
    );
  }
}