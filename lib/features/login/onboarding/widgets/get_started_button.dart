
import 'package:doc_app/core/common/common_widgets.dart';
import 'package:doc_app/core/helpers/extensions.dart';
import 'package:doc_app/core/routing/routes.dart';
import 'package:doc_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(AppColor.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      onPressed: () {
        context.pushNamed(Routes.loginScreen);
      },
      child: CommonWidgets.appText(
        'Get Started',
        textColor: Colors.white,
      ),
    );
  }
}
