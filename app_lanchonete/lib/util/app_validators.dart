class AppValidators {
  static String validadeMinimumLength(int length, String value) {
    String message = "";
    if (value != null) {
      if (value.length < length) {
        message = 'Deve conter no mínimo  $length caracteres';
      }
    } else {
      message = 'Deve conter no mínimo  $length caracteres';
    }
    return message;
  }

  static String compareStrings(String value1, String value2) {
    String message;
    if (value1 != null && value1.isNotEmpty) {
      if (value2 != null && value2.isNotEmpty) {
        if (value1 != value2 || value2 != value1) {
          message = "Não são iguais";
        }
      }
    } else {
      message = 'Campos estão vazios';
    }
    return message;
  }
}
