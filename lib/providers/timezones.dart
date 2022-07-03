import 'package:flutter/material.dart';
import '../models/timezonedata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TimeZones with ChangeNotifier {
  List<String> favZones = [];
  List<TimeZoneData> favoriteList = [];

  List<TimeZoneData> _zoneList = [
    TimeZoneData(urlEndPoint: 'Africa/Algiers', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Abidjan', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Accra', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Casablanca', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Cairo', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Juba', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Bissau', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Ceuta', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Johannesburg', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Khartoum', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Windhoek', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Anchorage', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Nairobi', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/El_Aaiun', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Lagos', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Adak', offset: {
      'sign': '-',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Maputo', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Buenos_Aires', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Tripoli', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Tunis', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Monrovia', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Araguaina', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Catamarca', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Cordoba', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Ndjamena', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Africa/Sao_Tome', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/La_Rioja', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Salta', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Mendoza', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Bahia', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Jujuy', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Atikokan', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Rio_Gallegos', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Asuncion', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Ushuaia', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/Tucuman', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/San_Juan', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Belize', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Blanc-Sablon', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Argentina/San_Luis', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Boise', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Barbados', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Bahia_Banderas', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Boa_Vista', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Cambridge_Bay', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Belem', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Campo_Grande', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Bogota', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Chicago', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Caracas', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Creston', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Eirunepe', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Goose_Bay', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Grand_Turk', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Fortaleza', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Petersburg', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Indianapolis', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Guatemala', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Guayaquil', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Halifax', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Glace_Bay', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Vincennes', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Kentucky/Louisville', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Inuvik', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Tell_City', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Kentucky/Monticello', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Hermosillo', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Juneau', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Edmonton', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Knox', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Marengo', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Winamac', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Jamaica', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Martinique', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Maceio', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Moncton', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Manaus', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Nassau', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/New_York', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/North_Dakota/New_Salem', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/North_Dakota/Center', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Punta_Arenas', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Port_of_Spain', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Port-au-Prince', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Phoenix', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/St_Johns', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'America/Rainy_River', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Sitka', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Rankin_Inlet', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Resolute', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Tegucigalpa', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Santo_Domingo', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Rio_Branco', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Vancouver', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Toronto', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Tijuana', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Sao_Paulo', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Macquarie', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Yakutat', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Almaty', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Mawson', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Aqtau', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Aqtobe', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Choibalsan', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Dhaka', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Hebron', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Jerusalem', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Oral', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Sakhalin', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Riyadh', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Singapore', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Brisbane', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Broken_Hill', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'EST', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Melbourne', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+10', offset: {
      'sign': '-',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-10', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-2', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-4', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-3', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Moscow', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Kerguelen', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Easter', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Guadalcanal', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Galapagos', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Cuiaba', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Cayenne', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Dawson', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Cancun', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Curacao', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Danmarkshavn', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Costa_Rica', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Detroit', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Chihuahua', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Dawson_Creek', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/El_Salvador', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Denver', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Fort_Nelson', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Guyana', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Iqaluit', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Indiana/Vevay', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Havana', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Managua', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Los_Angeles', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Menominee', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Miquelon', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Lima', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Mazatlan', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Matamoros', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Monterrey', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Merida', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/La_Paz', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Nuuk', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Montevideo', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Pangnirtung', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Panama', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Mexico_City', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Noronha', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Paramaribo', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/North_Dakota/Beulah', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Nipigon', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Metlakatla', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Nome', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Porto_Velho', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Ojinaga', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Puerto_Rico', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Recife', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Santarem', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Santiago', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Regina', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Yellowknife', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Winnipeg', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Swift_Current', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Scoresbysund', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/DumontDUrville', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Thule', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Whitehorse', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Davis', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Syowa', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Rothera', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'America/Thunder_Bay', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Vostok', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Baghdad', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Amman', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Casey', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Palmer', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Ashgabat', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Atyrau', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Bangkok', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Baku', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Antarctica/Troll', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Anadyr', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Colombo', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Chita', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Beirut', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Bishkek', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Barnaul', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Damascus', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Dili', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Dushanbe', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Famagusta', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Brunei', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Hovd', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Ho_Chi_Minh', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Gaza', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Hong_Kong', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Karachi', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Macau', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Jakarta', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Jayapura', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Makassar', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kamchatka', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Khandyga', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Pyongyang', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Irkutsk', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Qatar', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Krasnoyarsk', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Qostanay', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kathmandu', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '45',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kuching', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Omsk', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kolkata', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kuala_Lumpur', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Magadan', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Dubai', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Pontianak', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Kabul', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Nicosia', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Manila', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Novosibirsk', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Novokuznetsk', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Tehran', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Seoul', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Samarkand', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Qyzylorda', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Srednekolymsk', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Shanghai', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Taipei', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Yakutsk', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Ust-Nera', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Ulaanbaatar', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Tashkent', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Vladivostok', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Reykjavik', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Yekaterinburg', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Tokyo', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Azores', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Tbilisi', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Thimphu', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Canary', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Faroe', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Yangon', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Lindeman', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Stanley', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Cape_Verde', offset: {
      'sign': '-',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Bermuda', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/South_Georgia', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Darwin', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Atlantic/Madeira', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Lord_Howe', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Urumqi', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Tomsk', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Asia/Yerevan', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Hobart', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'EST5EDT', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Adelaide', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Eucla', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '45',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+11', offset: {
      'sign': '-',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Sydney', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Australia/Perth', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'CST6CDT', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'CET', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+1', offset: {
      'sign': '-',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'EET', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+2', offset: {
      'sign': '-',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+6', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+9', offset: {
      'sign': '-',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+8', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+7', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+5', offset: {
      'sign': '-',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+4', offset: {
      'sign': '-',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+3', offset: {
      'sign': '-',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT+12', offset: {
      'sign': '-',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-13', offset: {
      'sign': '+',
      'hour': '13',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-5', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Andorra', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-1', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-6', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-8', offset: {
      'sign': '+',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-11', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-12', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-9', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-14', offset: {
      'sign': '+',
      'hour': '14',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/GMT-7', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Etc/UTC', offset: {
      'sign': '+',
      'hour': '00',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Gibraltar', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Astrakhan', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Dublin', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Chisinau', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Belgrade', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Copenhagen', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Athens', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Malta', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Amsterdam', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Istanbul', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Kaliningrad', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Helsinki', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Brussels', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/London', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Budapest', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Berlin', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Ulyanovsk', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Bucharest', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Luxembourg', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Minsk', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Lisbon', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Uzhgorod', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Simferopol', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Stockholm', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Madrid', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Saratov', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Vilnius', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Paris', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Monaco', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Kirov', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Sofia', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Warsaw', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Tirane', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Riga', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Volgograd', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Prague', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Samara', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Oslo', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Kiev', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Chuuk', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Tallinn', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Rome', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Vienna', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'HST', offset: {
      'sign': '-',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Mauritius', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Zaporozhye', offset: {
      'sign': '+',
      'hour': '03',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Mahe', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Europe/Zurich', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Christmas', offset: {
      'sign': '+',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'MET', offset: {
      'sign': '+',
      'hour': '02',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Cocos', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Chagos', offset: {
      'sign': '+',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'PST8PDT', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Maldives', offset: {
      'sign': '+',
      'hour': '05',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Bougainville', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Apia', offset: {
      'sign': '+',
      'hour': '13',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Indian/Reunion', offset: {
      'sign': '+',
      'hour': '04',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Auckland', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'MST7MDT', offset: {
      'sign': '-',
      'hour': '06',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'MST', offset: {
      'sign': '-',
      'hour': '07',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Chatham', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '45',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Kiritimati', offset: {
      'sign': '+',
      'hour': '14',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Enderbury', offset: {
      'sign': '+',
      'hour': '13',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Funafuti', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Pago_Pago', offset: {
      'sign': '-',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Fakaofo', offset: {
      'sign': '+',
      'hour': '13',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Honolulu', offset: {
      'sign': '-',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Port_Moresby', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Kwajalein', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Marquesas', offset: {
      'sign': '-',
      'hour': '09',
      'minutes': '30',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Wake', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Gambier', offset: {
      'sign': '-',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Fiji', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Tahiti', offset: {
      'sign': '-',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Tarawa', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Guam', offset: {
      'sign': '+',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Efate', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Wallis', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Kosrae', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Majuro', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Noumea', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Niue', offset: {
      'sign': '-',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Nauru', offset: {
      'sign': '+',
      'hour': '12',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Pohnpei', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Pitcairn', offset: {
      'sign': '-',
      'hour': '08',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Rarotonga', offset: {
      'sign': '-',
      'hour': '10',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Tongatapu', offset: {
      'sign': '+',
      'hour': '13',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Norfolk', offset: {
      'sign': '+',
      'hour': '11',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'Pacific/Palau', offset: {
      'sign': '+',
      'hour': '09',
      'minutes': '00',
    }),
    TimeZoneData(urlEndPoint: 'WET', offset: {
      'sign': '+',
      'hour': '01',
      'minutes': '00',
    }),
  ];

  List<TimeZoneData> get zonelist {
    return [..._zoneList];
  }

  Future<bool> initFavoritesList() async {
    favoriteList.clear();
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('Favorites')) {
      print('init');
      favZones = prefs.getStringList('Favorites')!;
      favZones.map((favZone) {
        var e = _zoneList.firstWhere((zone) => zone.urlEndPoint == favZone);
        print(e.urlEndPoint);
        favoriteList.add(e);
        for (final zone in _zoneList) {
          if (zone.urlEndPoint == favZone) {
            zone.isFav = true;
          }
        }
      }).toList();
      print(favoriteList.toString());
    }

    notifyListeners();
    return true;
  }

  addFav(TimeZoneData td, int index) async {
    _zoneList[index].isFav = true;
    favoriteList.add(td);
    _zoneList.map((e) {
      if (e == td) {}
    }).toList();
    favZones.add(td.urlEndPoint);
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('Favorites', favZones);
    notifyListeners();
  }

  removeFav(int index) async {
    _zoneList[index].isFav = false;
    favoriteList.removeWhere(
        (element) => element.urlEndPoint == _zoneList[index].urlEndPoint);
    favZones.removeWhere((element) => element == _zoneList[index].urlEndPoint);
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('Favorites', favZones);
    notifyListeners();
  }

  retireveFav() async {
    final prefs = await SharedPreferences.getInstance();
    favZones = prefs.getStringList('Favorites')!;
  }

  updateFav(String urlEndPoint, bool isFav) {
    _zoneList.map((e) {
      if (e.urlEndPoint == urlEndPoint) {
        e.isFav = isFav;
        return;
      }
      notifyListeners();
      initFavoritesList();
    }).toList();
  }
}
