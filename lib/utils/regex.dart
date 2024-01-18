final RegExp emailValid = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);

final RegExp phoneValidation = RegExp(r'^\(?\d{2}\)?[\s-]?[\s9]?\d{4}-?\d{4}$');