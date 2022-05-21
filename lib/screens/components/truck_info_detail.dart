import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frozen2goportal/constants/constants.dart';
import 'package:frozen2goportal/models/truck_info_model.dart';

class truckInfoDetail extends StatelessWidget {
  const truckInfoDetail({Key? key, required this.info}) : super(key: key);

  final truckInfoModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: appPadding),
      padding: EdgeInsets.all(appPadding / 2),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(appPadding / 1.5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: info.color!.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.asset(
              info.svgSrc!,
              color: info.color!,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    info.title!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textColor,
                    ),
                  ),
                  Text(
                    '${info.count!}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
