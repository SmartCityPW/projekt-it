String formatTime(int seconds) {
  if (seconds <= 60) {
    return "$seconds Seconds";
  } else if (seconds < 3600) {
    if (seconds.remainder(60) == 0) {
      return "${seconds ~/ 60} Minutes";
    } else {
      return "${seconds ~/ 60} Min ${seconds.remainder(60)} Sec";
    }
  } else if (seconds.remainder(3600) ~/ 60 != 0) {
    return "${seconds ~/ 3600} Hours ${(seconds.remainder(3600)) ~/ 60} Min";
  } else {
    return "${seconds ~/ 3600} Hours";
  }
}
