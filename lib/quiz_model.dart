class QuizModel {
  String question;
  List<String> option;
  String rightAnswer;
  String givenAnswer;

  QuizModel(
      {required this.question,
      required this.option,
      required this.rightAnswer,
      this.givenAnswer = ''});
}

final List<QuizModel> quizList = [
  QuizModel(
      question: 'বাংলাদেশের মুক্তিযুদ্ধে প্রথম শত্রুমুক্ত জেলার নাম -',
      option: ['রাজশাহী', 'যশোর', 'জয়পুরহাট', 'নওগাঁ'],
      rightAnswer: 'যশোর'),
  QuizModel(
      question:
          'ববর্তমানে (৩ জুলাই ২০১৭) গেজেটপ্রাপ্ত বীরাঙ্গনা মুক্তিযোদ্ধার সংখ্যা কত?',
      option: ['১৯০ জন', '১৮০ জন', '১৮৫ জন', '১৬৫ জন'],
      rightAnswer: '১৮৫ জন'),
  QuizModel(
      question: 'বীরশ্রেষ্ঠ রুহুল আমিন কোথায় কাজ করতেন?',
      option: ['সেনাবাহিনী', 'নৌবাহিনী', 'বিমানবাহিনী', 'ইপিয়ার'],
      rightAnswer: 'নৌবাহিনী'),
  QuizModel(
      question: 'বীরশ্রেষ্ঠ হামিদুর রহমানের দেহাবশেষ কোথায় সমাহিত করা হয়?',
      option: [
        'বনানী কবরস্থানে',
        'আজিমপুর কবরস্থানে',
        'মোহাম্মদপুর কবরস্থানে',
        'মিরপুর শহীদ বুদ্ধিজীবী কবরস্থানে'
      ],
      rightAnswer: 'মিরপুর শহীদ বুদ্ধিজীবী কবরস্থানে'),
  QuizModel(
      question: 'মুক্তিযুদ্ধের সময় বরিশাল কোন সেক্টরের অধীনে ছিল?',
      option: ['১নং সেক্টর', '৬নং সেক্টর', '৮নং সেক্টর', '৯নং সেক্টর'],
      rightAnswer: '৯নং সেক্টর'),
  QuizModel(
      question: 'ববাংলাদেশের প্রথম অস্থায়ী সরকার কোথায় গঠিত হয়েছিল?',
      option: ['ঢাকায়', 'মেহেরপুরে', 'চট্টগ্রামের কালুরঘাটে', 'আগরতলায়'],
      rightAnswer: 'মেহেরপুরে'),
  QuizModel(
      question: "ফিরে দেখো '৭১ ঘুরে দাঁড়াবে বাংলাদেশ' ভাস্কর্য কোথায় অবস্থিত?",
      option: ['রাজশাহী', 'যশোর', 'জয়পুরহাট', 'নওগাঁ'],
      rightAnswer: 'যশোর'),
  QuizModel(
      question: 'বাংলাদেশের মুক্তিযুদ্ধে প্রথম শত্রুমুক্ত জেলার নাম -',
      option: [
        'ঢাকা সেনানিবাস',
        'নারায়ণঞ্জ পুলিশ-লাইন',
        'রাজশাহী সেনানিবাস',
        'রংপুর সেনানিবাস'
      ],
      rightAnswer: 'নারায়ণঞ্জ পুলিশ-লাইন'),
  QuizModel(
      question:
          "মুক্তিযুদ্ধে 'বীরপ্রতীক' খেতাবপ্রাপ্ত দুই জন মহিলা মুক্তিযোদ্ধা কে কে?",
      option: [
        'বেগম সুফিয়া কামাল',
        'ডা. সেতারা বেগম ও তারামন বিবি',
        'আঞ্জুমান আরা ও কানিজ ফাতেমা',
        'সুলতান কবীর ও সালমা খান'
      ],
      rightAnswer: 'ডা. সেতারা বেগম ও তারামন বিবি'),
  QuizModel(
      question:
          '১৯৭১ সালে জর্জ হ্যারিসন কার আহবানে বাংলাদেশ কনসার্টে যোগ দেন ?',
      option: ['Anthony Mascarenhas', 'Peter Shore', 'DP Dhar', 'Ravi Shankar'],
      rightAnswer: 'Ravi Shankar'),
];
