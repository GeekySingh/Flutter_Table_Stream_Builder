# Flutter Table Stream Builder

Flutter DataTable that takes stream as input and shows table. This is helpful when working with Firebase, Firestore or with data that returns Future

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Usage

Use TableStreamBuilder widget and pass required data:

- stream: => pass data stream
- headerList: => headers of table
- cellValueBuilder: => build cell value for specified column


e.g.

```
TableStreamBuilder<UserModel>(
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
```

## TODO

1. Add row click event handler
2. Sorting based on column
3. Any requested feature
