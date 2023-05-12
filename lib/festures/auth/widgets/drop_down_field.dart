

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomDropdownFormField extends StatefulWidget {
  const CustomDropdownFormField({
    Key? key,
    this.value,
    this.items,
    this.controller,
    this.labelText,
    this.hint,
    this.keyboardType,
    this.validator,
    this.autovalidateMode,
    this.onEditingComplete,
    this.enabled,
    this.formFieldKey,
    this.textInputAction,
    this.onPressed,
    this.itemsList,
    this.hintText
  }) : super(key: key);
  final String? value;
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? hint;
  final TextInputType? keyboardType;
  final AutovalidateMode? autovalidateMode;
  final Function()? onEditingComplete;
  final bool? enabled;
  final String? Function(String?)? validator;
  final Key? formFieldKey;
  final TextInputAction? textInputAction;
  final VoidCallback? onPressed;
  final List<String>?itemsList;
  // final Function(String?)?onChanged;
  final List<DropdownMenuItem<String>>? items;
  @override
  State<CustomDropdownFormField> createState() =>
      _CustomDropdownFormFieldState();
}

class _CustomDropdownFormFieldState extends State<CustomDropdownFormField> {
  String? dropdownValue;
  String? hintText;
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
      ),
      child: DropdownButtonFormField<String>(
        key: widget.formFieldKey,

        icon: Container(
          // padding: const EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            color: const Color(0xffeaf6f6),
            borderRadius: BorderRadius.circular(6),
          ),
          child: SvgPicture.asset(
            "assets/Icons/Trailing Icon.svg",
          ),
        ),
        decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:const EdgeInsets.all(16.0),
            hintText: widget.hintText,
            labelText: widget.labelText,
            // hintStyle:headline2
        ),
        items: widget.items,
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
      ),
    );
  }
}