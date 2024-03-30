// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../infrastructure/consts/styles.dart';

class NoConnectionStateWidget extends StatelessWidget {
  const NoConnectionStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (_) {
        SystemNavigator.pop(animated: true);
      },
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('No connection'),
              Text(
                '- _ -',
                style: TextStyles.textTitle(fontSize: 100),
              )
            ],
          ),
        ),
      ),
    );
  }
}
