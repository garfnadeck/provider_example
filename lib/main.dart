import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/change_notifier/change_notifier_page.dart';
import 'package:provider_example/change_notifier/provider_controller.dart';
import 'package:provider_example/provider/provider_page.dart';
import 'package:provider_example/provider/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
                name: 'Thiago Serrão',
                imgAvatar:
                    'https://cdn.pixabay.com/photo/2020/11/10/15/51/bear-5730216_960_720.png',
                birthDate: '20/03/1988');
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/provider': (_) => ProviderPage(),
          '/change': (_) => ChangeNotifierPage(),
        },
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/provider');
                        },
                        child: Text('Provider')),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/change');
                        },
                        child: Text('Change Notifier')),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
