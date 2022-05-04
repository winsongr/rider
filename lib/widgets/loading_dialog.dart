import 'package:flutter/material.dart';
import 'package:rider/widgets/progress_bar.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({Key? key, required this.message}) : super(key: key);
  final String? message;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      key: key,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          circularProgress(),
          const SizedBox(
            height: 10,
          ),
          Text(message! + ", Please Wait...."),
        ],
      ),
    );
  }
}
