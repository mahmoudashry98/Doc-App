
import 'package:doc_app/core/common/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/Logo.svg'),
        appVSpace(10),
        CommonWidgets.appText(
          'Docdoc',
          fontWeight: FontWeight.w700,
          size: 24.sp,
        ),
       
      ],
    );
  }
}
