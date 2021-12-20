class Language {
  final int id;
  final String name;
  final String languageCode;
  final String flag;

  Language(this.id, this.name, this.languageCode, this.flag);

  static List<Language> languageList() {
    return <Language>[
      Language(1, "English", "en",'us'),
      Language(2, "كوردی", "ckb",'ku'),
      Language(3, "العربية", "ar",'iq'),
    ];
  }
}
