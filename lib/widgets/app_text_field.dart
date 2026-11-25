import 'package:material_ui/material_ui.dart';
import 'package:qweqwe_ui/qweqwe_ui.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({this.labelText, this.hintText, this.obscureText = false, this.keyboardType, this.prefixIcon, this.suffixIcon, super.key});

  final String? labelText; //текст
  final String? hintText; //внутри полей пожсказки
  final bool obscureText; // скрывать тип пароль
  final TextInputType? keyboardType; //клава выбирать
  final Widget? prefixIcon; // +234
  final Widget? suffixIcon; // иконка глазика

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        style: AppTypography.caption.copyWith(color: AppColors.black),
        
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTypography.caption.copyWith(color: AppColors.black),
          hintText: hintText,
          hintStyle: AppTypography.caption.copyWith(color: AppColors.black),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,

          enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.accent)),
        ),

      ),
    );
  }
}