import 'package:flutter/material.dart';
import 'package:health_care/pages/flash_dis.dart';

import 'package:health_care/screens/doctor_detail.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => FlashDis(),
  '/detail': (context) => SliverDoctorDetail(),
};
