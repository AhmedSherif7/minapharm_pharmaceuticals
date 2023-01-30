import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../managers/color_manager.dart';

enum NotificationStatus {
  success,
  error,
  info,
}

Color _getColor(NotificationStatus notificationStatus) {
  switch (notificationStatus) {
    case NotificationStatus.success:
      return ColorManager.green;
    case NotificationStatus.error:
      return ColorManager.red;
    case NotificationStatus.info:
      return ColorManager.grey;
    default:
      return ColorManager.grey;
  }
}

void showToast({
  required String content,
  required NotificationStatus status,
  required Toast length,
}) {
  Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: content,
    toastLength: length,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: _getColor(status),
    textColor: ColorManager.white,
    fontSize: 16.0,
  );
}
