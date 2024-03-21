import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/device/device_utility.dart';

class MsAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(MySokoAppDeviceUtils.getAppBarHeight());

}