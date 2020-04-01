import 'package:flutter/material.dart';

class ColoredTextFormField extends StatelessWidget {
  final TextEditingController _controller;
  final FormFieldValidator<String> _validator;
  final String _labelText;
  final String _hintText;
  final TextInputType _keyboardType;
  final bool _obscureText;
  final Color _hintTextColor;
  final bool autoFocus;

  ColoredTextFormField({
    @required TextEditingController controller,
    Key key,
    FormFieldValidator<String> validator,
    String labelText,
    String hintText,
    TextInputType keyboardType,
    bool obscureText = false,
    Color hintTextColor,
    this.autoFocus = false,
  })  : this._controller = controller,
        this._validator = validator ?? ((_) => null),
        this._labelText = labelText,
        this._hintText = hintText,
        this._keyboardType = keyboardType,
        this._obscureText = obscureText,
        this._hintTextColor = hintTextColor ?? Colors.grey[300],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return TextFormField(
      textInputAction: TextInputAction.done,
      controller: _controller,
      validator: _validator,
      keyboardType: _keyboardType,
      obscureText: _obscureText,
      autofocus: autoFocus,
      decoration: InputDecoration(
        labelText: _labelText,
        hintText: _hintText,
        labelStyle: TextStyle(color: theme.primaryColorLight),
        hintStyle: TextStyle(color: _hintTextColor),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColor)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColorLight)),
        disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: theme.primaryColorDark)),
        errorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        focusedErrorBorder:
        OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      ),
    );
  }
}
