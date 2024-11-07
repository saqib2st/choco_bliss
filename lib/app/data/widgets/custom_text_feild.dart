import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:choco_bliss/app/data/configs/app_theme.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key,
      this.node,
      this.enabled,
      this.errorText,
      this.autoFocus,
      this.prefixIcon,
      this.onChangeFtn,
      this.initialValue,
      this.validatorFtn,
      required this.name,
      required this.hint,
      this.isPass = false,
      this.textCapitalization = TextCapitalization.none,
      this.isSuffixIcon = false,
      required this.textInputType,
      this.width = double.infinity,
      this.textInputAction = TextInputAction.done,
      this.readOnly,
      this.onTap,
      this.maxLines,
      this.textcontoller,
      this.onSubmitFtn,
      this.helperText,
      this.helperStyle,
      this.maxLenght,
      this.suffixIcon,
      this.show = false,
      this.onTapEye,
      this.borderRadius,
      this.inputFormatters,
      this.autovalidateMode});
  final String name;
  final int? maxLines, maxLenght;
  final TextEditingController? textcontoller;
  final String? hint, helperText, errorText, initialValue;
  final TextStyle? helperStyle;
  final bool? isPass, show, readOnly, enabled, autoFocus, isSuffixIcon;
  final double? width, borderRadius;
  final FocusNode? node;
  final Widget? prefixIcon, suffixIcon;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap, onTapEye;
  final List<TextInputFormatter>? inputFormatters;
  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validatorFtn;
  final String? Function(String?)? onChangeFtn;
  final String? Function(String?)? onSubmitFtn;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool show = true;
  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      autovalidateMode: widget.autovalidateMode,
      maxLength: widget.maxLenght,
      cursorColor: AppColor.secondaryColor,
      style: const TextStyle(fontSize: 18),
      autocorrect: false,
      controller: widget.textcontoller,
      onTap: widget.onTap,
      textCapitalization: widget.textCapitalization,
      enabled: widget.enabled ?? true,
      initialValue: widget.initialValue,
      name: widget.name,
      autofocus: widget.autoFocus ?? false,
      inputFormatters: widget.inputFormatters ?? [],
      textInputAction: widget.textInputAction,
      keyboardType: widget.textInputType,
      focusNode: widget.node,
      readOnly: widget.readOnly ?? false,
      obscureText: widget.isPass! ? show : false,
      maxLines: widget.maxLines ?? 1,
      decoration: InputDecoration(
        helperMaxLines: 2,
        helperStyle: widget.helperStyle,
        helperText: widget.helperText,
        errorText: widget.errorText,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.isPass!
            ? IconButton(
                splashRadius: 8,
                onPressed: () {
                  setState(() {
                    show = !show;
                  });
                },
                icon: Icon(
                  show ? Icons.visibility_off : Icons.visibility,
                  size: 20,
                  color: AppColor.secondaryColor,
                ),
              )
            : widget.suffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        labelText: widget.hint,
        labelStyle: TextStyle(fontSize: 14, color: AppColor.hintTextColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          borderSide: BorderSide(
            color: AppColor.hintTextColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          borderSide: BorderSide(
            color: AppColor.secondaryColor,
            width: 2,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          borderSide: BorderSide(
            width: 2,
            color: AppColor.hintTextColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          borderSide: const BorderSide(
            width: 2,
            color: Colors.red,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
      validator: widget.validatorFtn,
      onChanged: widget.onChangeFtn,
      onSubmitted: widget.onSubmitFtn,
    );
  }
}
