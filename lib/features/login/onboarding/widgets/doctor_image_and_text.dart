
import 'package:doc_app/core/common/common_widgets.dart';
import 'package:doc_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo_low_opacity.svg',
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withOpacity(0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(
            'assets/images/doctor.png',
          ),
        ),
        Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: CommonWidgets.appText(
            'Best Doctor\n  Appointment App',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.bold,
            textColor: AppColor.mainBlue,
            size: 32.sp,
          ),
        )
      ],
    );
  }
}
