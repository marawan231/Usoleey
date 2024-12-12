import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_complete_project/core/helpers/spacing.dart';
import 'package:flutter_complete_project/core/res/assets_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key, this.imageFile, this.onTap});

  final File? imageFile;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
                height: 136,
                width: 181,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: FileImage(imageFile!), fit: BoxFit.cover),
                ),
                child: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0x00000000), Color(0x4D000000)])
                        .createShader(bounds);
                  },
                  blendMode: BlendMode.multiply,
                )),
            _buildDeleteButton()
          ],
        ),
        16.horizontalSpace,
      ],
    );
  }

  _buildDeleteButton() {
    return PositionedDirectional(
      start: 5,
      top: 5,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 35,
          width: 35,
          child: SvgPicture.asset(AssetsManager.removeTicketImage),
        ),
      ),
    );
  }
}
