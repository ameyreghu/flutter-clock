class TimeZoneData {
  String urlEndPoint;
  Map offset;
  bool isFav;

  TimeZoneData(
      {required this.urlEndPoint, required this.offset, this.isFav = false});
}

class ZoneData {}
