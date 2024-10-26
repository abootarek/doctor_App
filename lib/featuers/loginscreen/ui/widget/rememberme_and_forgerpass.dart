import 'package:docapp_pro/core/theming/style.dart';
import 'package:flutter/material.dart';

class RemembermeAndForgetPass extends StatelessWidget {
  const RemembermeAndForgetPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(value: true, onChanged: null),
        const Text('Remember me'),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'Forgot Password?',
            style: TextStyles.font12mainblue,
          ),
        )
      ],
    );
  }
}
