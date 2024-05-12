class ValidateEntity {
  final bool? validateLenght;
  final bool? validateLetter;
  final bool? validateNumber;
  final bool? validateSymbol;
  final bool isValid;

  ValidateEntity({
    required this.isValid,
    this.validateLenght,
    this.validateLetter,
    this.validateNumber,
    this.validateSymbol,
  });
}
