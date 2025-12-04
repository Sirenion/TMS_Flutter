
class User {
    Map<String, dynamic> userData;
    User(this.userData);
}

class UserValidation {
  bool valid = true;
  bool processUserData(Map<String, dynamic> userData) {
    // Валидация данных
    if (userData['name'] == null || userData['name'].isEmpty) {
      valid = false;
      throw Exception('Имя пользователя не может быть пустым');
    }
    if (userData['age'] == null || userData['age'] < 0) {
      valid = false;
      throw Exception('Возраст пользователя не может быть отрицательным');
    }
    return valid;
  }
}

class UserEdit {
  Map<String, dynamic> editUserData(Map<String, dynamic> userData) {
    // Преобразование данных
    userData['name'] = userData['name'].toString().toUpperCase();
    userData['age'] = userData['age'] + 1; // Увеличиваем возраст на 1
    return userData;
  }
}

class UserRepository {
  void saveUserData(Map<String, dynamic> userData) {
    // Здесь может быть код для сохранения данных в базу данных или файл
    print('Данные сохранены: $userData');
  }
}

class UserLog {
  void Log(String l) {
    print(l);
  }
}

void main() {
  UserValidation validation = UserValidation();
  UserEdit edit = UserEdit();
  UserRepository repository = UserRepository();
  UserLog log = UserLog();
  User user;
  Map<String, dynamic> userData = {'name': 'Alice', 'age': 25};
  if (validation.processUserData(userData)) {
    user = User(userData);
    user.userData = edit.editUserData(userData);
    repository.saveUserData(user.userData);
  } else {
    log.Log("Ошибка создания пользователя");
  };
}
