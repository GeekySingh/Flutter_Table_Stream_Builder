import 'package:table_stream_builder/mock_data/user_model.dart';

class Mock {
  static Stream<List<UserModel>> getUserStream() {
    return Stream.value(UserModel.userList);
  }
}
