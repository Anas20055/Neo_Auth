part of '../../app/presentation/main_app_builder.dart';

ThemeData _theme() {
  return ThemeData(
    fontFamily: 'Mplus1p',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return const Color.fromRGBO(215, 215, 215, 1);
            }
            return AppColors.black;
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(MaterialState.disabled)) {
              return AppColors.grey;
            }
            return Colors.white;
          },
        ),
        overlayColor:
            MaterialStatePropertyAll(AppColors.lightGrey.withOpacity(0.1)),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(double.maxFinite, 0),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(
          AppColors.black,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(double.maxFinite, 0),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        ),
        overlayColor: const MaterialStatePropertyAll(AppColors.lightGrey),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    ),
    appBarTheme: _appBarThem(),
    colorScheme: const ColorScheme.light(),
    textTheme: const TextTheme(
      labelLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontSize: 16,
        color: AppColors.grey,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(
          fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.grey),
    ),
  );
}

AppBarTheme _appBarThem() {
  return const AppBarTheme(
    centerTitle: true,
    scrolledUnderElevation: 0,
    titleTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    elevation: 0,
  );
}
