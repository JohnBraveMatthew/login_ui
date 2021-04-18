class Validate {
  nameValidate(val) {
    if (val.isEmpty) {
      return "Name cannot be blank";
    } else {
      return null;
    }
  }

  emailValidate(val) {
    if (!val.contains("@")) {
      return "Enter a valid email";
    } else if (val.isEmpty) {
      return "Email cannot be blank";
    } else {
      return null;
    }
  }

  passwordValidate(val) {
    if (!(val.length > 6)) {
      return "password length must be at least 8 characters";
    } else if (val.isEmpty) {
      return "Enter password";
    } else {
      return null;
    }
  }
}
