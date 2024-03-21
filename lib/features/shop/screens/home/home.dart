import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_app_flutter/common/widgets/appBar/appbar.dart';
import 'package:new_app_flutter/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

import '../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            MsPrimaryHeaderContainer(
              child: Column(
                children: [
                  MsAppBar(
                    title: Column(
                      children: [
                        Text(MySokoAppTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: MySokoAppColors.grey)),
                        Text(MySokoAppTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: MySokoAppColors.white)),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

