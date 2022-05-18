const ckbDateSymbols = {
  'NAME': 'ckb',
  'ERAS': ['پ.ز', 'ز'],
  'ERANAMES': ['پێش زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'STANDALONENARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی'
  ],
  'MONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONEMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'SHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONESHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'WEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'STANDALONEWEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە'
  ],
  'SHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'STANDALONESHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە'
  ],
  'NARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  'AMPMS': ['پ.ن', 'د.ن'],
  'DATEFORMATS': [
    'EEEE، d MMMM y',
    'd MMMM y',
    'dd‏/MM‏/y',
    'd‏/M‏/y',
  ],
  'TIMEFORMATS': [
    'h:mm:ss a zzzz',
    'h:mm:ss a z',
    'h:mm:ss a',
    'h:mm a',
  ],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': [
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
    '{1} {0}',
  ],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3
};
const ckbLocaleDatePatterns = {
  'd': 'd', // DAY
  'E': 'ccc', // ABBR_WEEKDAY
  'EEEE': 'cccc', // WEEKDAY
  'LLL': 'LLL', // ABBR_STANDALONE_MONTH
  'LLLL': 'LLLL', // STANDALONE_MONTH
  'M': 'L', // NUM_MONTH
  'Md': 'd/‏M', // NUM_MONTH_DAY
  'MEd': 'EEE، d/M', // NUM_MONTH_WEEKDAY_DAY
  'MMM': 'LLL', // ABBR_MONTH
  'MMMd': 'd MMM', // ABBR_MONTH_DAY
  'MMMEd': 'EEE، d MMM', // ABBR_MONTH_WEEKDAY_DAY
  'MMMM': 'LLLL', // MONTH
  'MMMMd': 'd MMMM', // MONTH_DAY
  'MMMMEEEEd': 'EEEE، d MMMM', // MONTH_WEEKDAY_DAY
  'QQQ': 'QQQ', // ABBR_QUARTER
  'QQQQ': 'QQQQ', // QUARTER
  'y': 'y', // YEAR
  'yM': 'M‏/y', // YEAR_NUM_MONTH
  'yMd': 'd‏/M‏/y', // YEAR_NUM_MONTH_DAY
  'yMEd': 'EEE، d/‏M/‏y', // YEAR_NUM_MONTH_WEEKDAY_DAY
  'yMMM': 'MMM y', // YEAR_ABBR_MONTH
  'yMMMd': 'd MMM y', // YEAR_ABBR_MONTH_DAY
  'yMMMEd': 'EEE، d MMM y', // YEAR_ABBR_MONTH_WEEKDAY_DAY
  'yMMMM': 'MMMM y', // YEAR_MONTH
  'yMMMMd': 'd MMMM y', // YEAR_MONTH_DAY
  'yMMMMEEEEd': 'EEEE، d MMMM y', // YEAR_MONTH_WEEKDAY_DAY
  'yQQQ': 'QQQ y', // YEAR_ABBR_QUARTER
  'yQQQQ': 'QQQQ y', // YEAR_QUARTER
  'H': 'HH', // HOUR24
  'Hm': 'HH:mm', // HOUR24_MINUTE
  'Hms': 'HH:mm:ss', // HOUR24_MINUTE_SECOND
  'j': 'h a', // HOUR
  'jm': 'h:mm a', // HOUR_MINUTE
  'jms': 'h:mm:ss a', // HOUR_MINUTE_SECOND
  'jmv': 'h:mm a v', // HOUR_MINUTE_GENERIC_TZ
  'jmz': 'h:mm a z', // HOUR_MINUTETZ
  'jz': 'h a z', // HOURGENERIC_TZ
  'm': 'm', // MINUTE
  'ms': 'mm:ss', // MINUTE_SECOND
  's': 's', // SECOND
  'v': 'v', // ABBR_GENERIC_TZ
  'z': 'z', // ABBR_SPECIFIC_TZ
  'zzzz': 'zzzz', // SPECIFIC_TZ
  'ZZZZ': 'ZZZZ' // ABBR_UTC_TZ
};
