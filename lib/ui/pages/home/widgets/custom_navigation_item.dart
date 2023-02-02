
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/miscelanius/image_resources.dart';
import '../../../utils/miscelanius/string_util.dart';

BottomNavigationBarItem customNavigationWidget({required BuildContext context, required String value}) {

  return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        ImageResources.getIcons(value.toLowerCase()),
        height: 25,
        width: 25,
        color: Colors.grey
      ),
      activeIcon: SvgPicture.asset(
        ImageResources.getIcons(value.toLowerCase()),
        height: 25,
        width: 25,
        color: Colors.purple,
      ),
      label: value.capitalize()
    );
}