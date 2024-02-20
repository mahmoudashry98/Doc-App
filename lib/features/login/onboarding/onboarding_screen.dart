
import 'package:doc_app/core/common/common_widgets.dart';
import 'package:doc_app/core/theme/app_color.dart';
import 'package:doc_app/features/login/onboarding/widgets/doc_logo_and_name.dart';
import 'package:doc_app/features/login/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doc_app/features/login/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              appHSpace(20.h),
              const DoctorImageAndText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Column(
                  children: [
                    CommonWidgets.appText(
                      'Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.visible,
                      size: 12.sp,
                      textColor: AppColor.gray.withOpacity(0.8),
                    ),
                    appHSpace(30.h),
                    const GetStartedButton()
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
