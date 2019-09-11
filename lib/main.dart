import 'package:flutter/material.dart';
import 'package:table_stream_builder/mock_data/mock.dart';
import 'package:table_stream_builder/mock_data/user_model.dart';
import 'package:table_stream_builder/table_stream_builder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Stream Builder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Table Stream Builder'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: TableStreamBuilder<UserModel>(
          stream: Mock.getUserStream(),
          headerList: ['Name', 'Age', 'Gender', 'Address'],
          cellValueBuilder: (header, model) {
            switch (header) {
              case 'Name':
                return model.name;
              case 'Age':
                return '${model.age}';
              case 'Gender':
                return '${Gender.values[model.gender.index].toString()}';
              case 'Address':
                return '${model.address}';
            }
            return '';
          },
        ));
  }
}
