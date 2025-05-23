import 'package:alpha_app/core/utils/styles.dart';

import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errMessage, style: Styles.textStyle18));
  }
}
