import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frozen2goportal/constants/constants.dart';
import 'package:frozen2goportal/data/data.dart';
import 'package:frozen2goportal/screens/components/truck_info_detail.dart';

class Toptruck extends StatelessWidget {
  const Toptruck({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(appPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Vehicle',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
              Text(
                'Details',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: textColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: appPadding,
          ),
          Expanded(
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: truckData.length,
              itemBuilder: (context, index) => truckInfoDetail(
                info: truckData[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}
