abstract class Translation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en": en,
    "fa": fa,
  };
}

final Map<String, String> en = {
  "appName": "Easy Payamak", // #1
  "sent": "sent", // #2
  "received": "received", // #3
};

final Map<String, String> fa = {
  "appName": "ایزی پیامک", // #1
  "sent": "ارسال شده", // #2
  "received": "دریافت شده", // #3
};
