

import 'package:frozen2goportal/constants/constants.dart';
import 'package:frozen2goportal/models/analytic_info_model.dart';
import 'package:frozen2goportal/models/Driver_info_model.dart';
import 'package:frozen2goportal/models/truck_info_model.dart';

List analyticData = [
  AnalyticInfo(
    title: "Orders Recieved ",
    count: 120,
    svgSrc: "assets/icons/Subscribers.svg",
    color: primaryColor,
  ),
  AnalyticInfo(
    title: "Orders Delivered",
    count: 90,
    svgSrc: "assets/icons/Post.svg",
    color: purple,
  ),
  AnalyticInfo(
    title: "Orders inTransist",
    count: 25,
    svgSrc: "assets/icons/Pages.svg",
    color: orange,
  ),
  AnalyticInfo(
    title: "Notifications",
    count: 15,
    svgSrc: "assets/icons/Comments.svg",
    color: green,
  ),
];

List DriverData = [
  DriverInfoModel(
    imageSrc: "assets/images/photo1.jpg",
    name: "Aslam Ali",
    date: "10-04-2021 on M1-route",
  ),
  DriverInfoModel(
    imageSrc: "assets/images/photo2.jpg",
    name: "shahid usman",
    date: "14-04-2021 on M3-route",
  ),
  DriverInfoModel(
    imageSrc: "assets/images/photo7.jpg",
    name: "Aly khan",
    date: "19-04-2021 on M4-route",
  ),
  DriverInfoModel(
    imageSrc: "assets/images/photo4.jpg",
    name: "Usama Ali",
    date: "22-04-2021 on M5-route",
  ),
  DriverInfoModel(
    imageSrc: "assets/images/photo5.jpg",
    name: "Asfand Ali",
    date: "16-04-2021 on M2-route",
  ),
  DriverInfoModel(
    imageSrc: "assets/images/photo6.jpg",
    name: "Ahmed khan",
    date: "16-04-2021 on M6-route",
  ),
];

List truckData = [
  truckInfoModel(
    title: "Vehicle No",
    count: 1536,
    svgSrc: "assets/icons/vehicle.svg",
    color: primaryColor,
  ),
  truckInfoModel(
    title: "Temperature",
    count: 34,
    svgSrc: "assets/icons/temperature.svg",
    color: primaryColor,
  ),
  truckInfoModel(
    title: "Humdity",
    count: 49,
    svgSrc: "assets/icons/humidity.svg",
    color: primaryColor,
  ),

  truckInfoModel(
    title: "Driver Alert",
    count: 2,
    svgSrc: "assets/icons/alert.svg",
    color: red,
  ),
];
