import 'package:geoquiz/data/data.dart';



class CountryByFlag {
  // ['Нидерланды', 'Китай', 'Швейцария', 'Румыния']
  // ['Польша', 'Эстония', 'Турция', 'Андорра']
  // ['Таджикистан', 'Узбекистан', 'Греция', 'Афганистан']
  // ['Лихтенштейн', 'Монголия', 'Сербия', 'Бельгия']
  // ['Монголия', 'Япония', 'Германия', 'Бангладеш']
  // ['Венгрия', 'Таджикистан', 'Черногория', 'Швейцария']
  // ['Словакия', 'Афганистан', 'Сербия', 'Австрия']
  // ['Китай', 'Индонезия', 'Россия', 'Бельгия']
  // ['Ирак', 'Израиль', 'Венгрия', 'Мальдивы']
  // ['Австрия', 'Румыния', 'Шри-Ланка', 'Сингапур']
  // ['Лихтенштейн', 'Ватикан', 'Кувейт', 'Италия']
  // ['Туркменистан', 'Мальта', 'Камбоджа', 'Азербайджан']
  // ['Польша', 'Монголия', 'Чехия', 'Бахрейн']
  // ['Беларусь', 'Ватикан', 'Словения', 'Киргизстан']
  // ['Норвегия', 'Армения', 'Иран', 'Австрия']
  // ['Мальта', 'Северная Корея', 'Сингапур', 'Литва']
  // ['Восточный Тимор', 'Ирландия', 'Иордания', 'Индия']
  // ['Хорватия', 'Латвия', 'Бутан', 'Греция']
  // ['Украина', 'Восточный Тимор', 'Албания', 'Япония']
  // ['Люксембург', 'Молдовия', 'Исландия', 'Болгария']
  // ['Эстония', 'Венгрия', 'Мальта', 'Дания']
  // ['Португалия', 'Пакистан', 'Северная Корея', 'Малазия']
  // ['Великобритания', 'Сербия', 'Швейцария', 'Бахрейн']
  // ['Албания', 'Норвегия', 'Мьянма', 'Словения']
  // ['Латвия', 'Китай', 'Люксембург', 'Бутан']
  // ['Испания', 'Малазия', 'Сан-Марино', 'Косово']
  // ['Саудовская Аравия', 'Ирак', 'Беларусь', 'Дания']
  // ['Румыния', 'Армения', 'Монако', 'Израиль']
  // ['Грузия', 'Норвегия', 'Россия', 'Греция']
  // ['Турция', 'Македония', 'Сингапур', 'Норвегия']
  // ['Ирак', 'Нидерланды', 'Индия', 'Франция']
  // ['Оман', 'Черногория', 'Иордания', 'Чехия']
  // ['Словакия', 'Лихтенштейн', 'Чехия', 'Грузия']
  // ['Исландия', 'Киргизстан', 'Литва', 'Чехия']
  // ['Латвия', 'Португалия', 'Македония', 'Узбекистан']
  // ['Мальта', 'Италия', 'Андорра', 'Швейцария']
  // ['Албания', 'Польша', 'Грузия', 'Сан-Марино']
  // ['Приднестровье', 'Армения', 'Камбоджа', 'Босния и Герцеговина']
  // ['Бахрейн', 'Кувейт', 'Индонезия', 'Македония']
  // ['Андорра', 'Латвия', 'Финляндия', 'Болгария']
  // ['Швеция', 'Индия', 'Молдовия', 'Косово']
  // ['Монголия', 'Эстония', 'Италия', 'Дания']
  // ['Мьянма', 'Таджикистан', 'Бельгия', 'Албания']
  // ['Бельгия', 'Исландия', 'Финляндия', 'Пакистан']
  // ['Шри-Ланка', 'Ирландия', 'Косово', 'Норвегия']
  // ['Словакия', 'Израиль', 'Приднестровье', 'Сербия']
  // ['Швеция', 'Испания', 'Хорватия', 'Иордания']
  // ['Бельгия', 'Восточный Тимор', 'Албания', 'Турция']
  // ['Украина', 'Франция', 'Норвегия', 'Туркменистан']
  // ['Швеция', 'Словения', 'Оман', 'Ирак']
  // ['Азербайджан', 'Нидерланды', 'Монако', 'Непал']
  // ['Андорра', 'Таиланд', 'Туркменистан', 'Саудовская Аравия']
  // ['Россия', 'Мьянма', 'Венгрия', 'Ливан']
  // ['Восточный Тимор', 'Киргизстан', 'Латвия', 'Ирак']
  // ['Украина', 'Мьянма', 'Венгрия', 'Лаос']
  // ['Венгрия', 'Туркменистан', 'Восточный Тимор', 'Бангладеш']
  // ['Финляндия', 'Сирия', 'Непал', 'Малазия']
  // ['Андорра', 'Польша', 'Иран', 'Индия']
  // ['Индонезия', 'Филиппины', 'Испания', 'Монако']
  // ['Грузия', 'Ирак', 'Восточный Тимор', 'Албания']
  // ['Исландия', 'Таджикистан', 'Киргизстан', 'Австрия']
  // ['Армения', 'Таджикистан', 'Сербия', 'Болгария']
  // ['Камбоджа', 'Израиль', 'Германия', 'Польша']
  // ['Туркменистан', 'Филиппины', 'Россия', 'Пакистан']
  // ['Монако', 'Таджикистан', 'Вьетнам', 'Афганистан']
  // ['Украина', 'Непал', 'Сирия', 'Кувейт']
  // ['Австрия', 'Малазия', 'Бутан', 'Кувейт']
  // ['Северная Корея', 'Мальдивы', 'Босния и Герцеговина', 'Андорра']
  // ['Кувейт', 'Нидерланды', 'Непал', 'Бахрейн']
  // ['Оман', 'Филиппины', 'Латвия', 'Мальдивы']
  // ['Пакистан', 'Оман', 'Люксембург', 'Таиланд']
  // ['Индонезия', 'Румыния', 'Мьянма', 'Франция']
  // ['Кипр', 'Андорра', 'Ирландия', 'Италия']
  // ['Швеция', 'Южная Корея', 'Северная Корея', 'Казахстан']
  // ['Норвегия', 'Китай', 'Сирия', 'Казахстан']
  // ['Черногория', 'Сан-Марино', 'Камбоджа', 'Молдовия']
  // ['Хорватия', 'Северная Корея', 'Португалия', 'Иордания']
  // ['Босния и Герцеговина', 'Бельгия', 'Йемен', 'Лаос']
  // ['Южная Корея', 'Грузия', 'Молдовия', 'Иран']
  // ['Сингапур', 'Мьянма', 'Бутан', 'Сан-Марино']
  // ['Франция', 'Иордания', 'Пакистан', 'Узбекистан']
  // ['Германия', 'Норвегия', 'Турция', 'Грузия']
  // ['Монголия', 'Иран', 'Македония', 'Сан-Марино']
  // ['Афганистан', 'Ватикан', 'Испания', 'Япония']
  // ['Бутан', 'Россия', 'Китай', 'Литва']
  // ['Мьянма', 'Исландия', 'Йемен', 'Монголия']
  // ['Литва', 'Вьетнам', 'Великобритания', 'Япония']
  // ['Шри-Ланка', 'Оман', 'Северная Корея', 'Польша']
  // ['Северная Корея', 'Румыния', 'Кипр', 'Кувейт']
  // ['Швеция', 'Мальта', 'Индонезия', 'Саудовская Аравия']
  List b = [
    Question(
      type: 'l2',
      img: 'assets/1-netherlands.png',
      answer: 'Нидерланды',
      answers: ['Нидерланды', 'Китай', 'Швейцария', 'Румыния'],
    ),
    Question(
      type: 'l2',
      img: 'assets/2-andorra.png',
      answer: 'Андорра',
      answers: ['Польша', 'Эстония', 'Турция', 'Андорра'],
    ),

    Question(
      type: 'l2',
      img: 'assets/3-greece.png',
      answer: 'Греция',
      answers: ['Таджикистан', 'Узбекистан', 'Греция', 'Афганистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/4-serbia.png',
      answer: 'Сербия',
      answers: ['Лихтенштейн', 'Монголия', 'Сербия', 'Бельгия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/5-germany.png',
      answer: 'Германия',
      answers: ['Монголия', 'Япония', 'Германия', 'Бангладеш'],
    ),
    Question(
      type: 'l2',
      img: 'assets/6-switzerland.png',
      answer: 'Швейцария',
      answers: ['Венгрия', 'Таджикистан', 'Черногория', 'Швейцария'],
    ),
    Question(
      type: 'l2',
      img: 'assets/7-slovakia.png',
      answer: 'Словакия',
      answers: ['Словакия', 'Афганистан', 'Сербия', 'Австрия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/8-belgium.png',
      answer: 'Бельгия',
      answers:   ['Китай', 'Индонезия', 'Россия', 'Бельгия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/9-hungary.png',
      answer: 'Венгрия',
      answers:   ['Ирак', 'Израиль', 'Венгрия', 'Мальдивы'],
    ),
    Question(
      type: 'l2',
      img: 'assets/10-romania.png',
      answer: 'Румыния',
      answers: ['Австрия', 'Румыния', 'Шри-Ланка', 'Сингапур'],
    ),
    Question(
      type: 'l2',
      img: 'assets/11-liechtenstein.png',
      answer: 'Лихтенштейн',
      answers: ['Лихтенштейн', 'Ватикан', 'Кувейт', 'Италия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/12-malta.png',
      answer: 'Мальта',
      answers:  ['Туркменистан', 'Мальта', 'Камбоджа', 'Азербайджан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/13-poland.png',
      answer: 'Польша',
      answers:   ['Польша', 'Монголия', 'Чехия', 'Бахрейн'],
    ),
    Question(
      type: 'l2',
      img: 'assets/14-vatican-city.png',
      answer: 'Ватикан',
      answers:  ['Беларусь', 'Ватикан', 'Словения', 'Киргизстан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/15-austria.png',
      answer: 'Австрия',
      answers: ['Норвегия', 'Армения', 'Иран', 'Австрия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/16-lithuania.png',
      answer: 'Литва',
      answers:   ['Мальта', 'Северная Корея', 'Сингапур', 'Литва'],
    ),
    Question(
      type: 'l2',
      img: 'assets/17-ireland.png',
      answer: 'Ирландия',
      answers:   ['Восточный Тимор', 'Ирландия', 'Иордания', 'Индия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/18-croatia.png',
      answer: 'Хорватия',
      answers:   ['Хорватия', 'Латвия', 'Бутан', 'Греция'],
    ),
    Question(
      type: 'l2',
      img: 'assets/19-ukraine.png',
      answer: 'Украина',
      answers:   ['Украина', 'Восточный Тимор', 'Албания', 'Япония'],
    ),
    Question(
      type: 'l2',
      img: 'assets/20-moldova.png',
      answer: 'Молдовия',
      answers:   ['Люксембург', 'Молдовия', 'Исландия', 'Болгария'],
    ),
    Question(
      type: 'l2',
      img: 'assets/21-denmark.png',
      answer: 'Дания',
      answers: ['Эстония', 'Венгрия', 'Мальта', 'Дания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/22-portugal.png',
      answer: 'Португалия',
      answers: ['Португалия', 'Пакистан', 'Северная Корея', 'Малазия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/23-united-kingdom.png',
      answer: 'Великобритания',
      answers: ['Великобритания', 'Сербия', 'Швейцария', 'Бахрейн'],
    ),
    Question(
      type: 'l2',
      img: 'assets/24-slovenia.png',
      answer: 'Словения',
      answers: ['Албания', 'Норвегия', 'Мьянма', 'Словения'],
    ),
    Question(
      type: 'l2',
      img: 'assets/25-luxembourg.png',
      answer: 'Люксембург',
      answers: ['Латвия', 'Китай', 'Люксембург', 'Бутан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/26-spain.png',
      answer: 'Испания',
  answers: ['Испания', 'Малазия', 'Сан-Марино', 'Косово'],
    ),
    Question(
      type: 'l2',
      img: 'assets/27-belarus.png',
      answer: 'Беларусь',
  answers:  ['Саудовская Аравия', 'Ирак', 'Беларусь', 'Дания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/28-monaco.png',
      answer: 'Монако',
  answers:   ['Румыния', 'Армения', 'Монако', 'Израиль'] ,
    ),
    Question(
      type: 'l2',
      img: 'assets/29-russia.png',
      answer: 'Россия',
  answers:   ['Грузия', 'Норвегия', 'Россия', 'Греция'],
    ),
    Question(
      type: 'l2',
      img: 'assets/30-norway.png',
      answer: 'Норвегия',
  answers:   ['Турция', 'Македония', 'Сингапур', 'Норвегия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/31-france.png',
      answer: 'Франция',
  answers:   ['Ирак', 'Нидерланды', 'Индия', 'Франция'],
    ),
    Question(
      type: 'l2',
      img: 'assets/32-montenegro.png',
      answer: 'Черногория',
  answers:   ['Оман', 'Черногория', 'Иордания', 'Чехия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/33-czech-republic.png',
      answer: 'Чехия',
  answers:   ['Словакия', 'Лихтенштейн', 'Чехия', 'Грузия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/34-iceland.png',
      answer: 'Исландия',
  answers:   ['Исландия', 'Киргизстан', 'Литва', 'Чехия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/35-latvia.png',
      answer: 'Латвия',
      answers:   ['Латвия', 'Португалия', 'Македония', 'Узбекистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/36-italy.png',
      answer: 'Италия',
  answers: ['Мальта', 'Италия', 'Андорра', 'Швейцария'],
    ),
    Question(
      type: 'l2',
      img: 'assets/37-san-marino.png',
      answer: 'Сан-Марино',
  answers: ['Албания', 'Польша', 'Грузия', 'Сан-Марино'],
    ),
    Question(
      type: 'l2',
      img: 'assets/38-bosnia-and-herzegovina.png',
      answer: 'Босния и Герцеговина',
  answers: ['Приднестровье', 'Армения', 'Камбоджа', 'Босния и Герцеговина'],
    ),
    Question(
      type: 'l2',
      img: 'assets/39-republic-of-macedonia.png',
      answer: 'Македония',
  answers: ['Бахрейн', 'Кувейт', 'Индонезия', 'Македония'],
    ),
    Question(
      type: 'l2',
      img: 'assets/40-bulgaria.png',
      answer: 'Болгария',
  answers: ['Андорра', 'Латвия', 'Финляндия', 'Болгария'],
    ),
    Question(
      type: 'l2',
      img: 'assets/41-sweden.png',
      answer: 'Швеция',
  answers: ['Швеция', 'Индия', 'Молдовия', 'Косово'],
    ),
    Question(
      type: 'l2',
      img: 'assets/42-estonia.png',
      answer: 'Эстония',
  answers: ['Монголия', 'Эстония', 'Италия', 'Дания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/43-albania.png',
      answer: 'Албания',
  answers: ['Мьянма', 'Таджикистан', 'Бельгия', 'Албания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/44-finland.png',
      answer: 'Финляндия',
  answers: ['Бельгия', 'Исландия', 'Финляндия', 'Пакистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/45-kosovo.png',
      answer: 'Косово',
      answers: ['Шри-Ланка', 'Ирландия', 'Косово', 'Норвегия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/46-transnistria.png',
      answer: 'Приднестровье',
  answers: ['Словакия', 'Израиль', 'Приднестровье', 'Сербия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/47-jordan.png',
      answer: 'Иордания',
  answers: ['Швеция', 'Испания', 'Хорватия', 'Иордания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/48-turkey.png',
      answer: 'Турция',
  answers: ['Бельгия', 'Восточный Тимор', 'Албания', 'Турция'],
    ),
    Question(
      type: 'l2',
      img: 'assets/49-turkmenistan.png',
      answer: 'Туркменистан',
  answers: ['Украина', 'Франция', 'Норвегия', 'Туркменистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/50-iraq.png',
      answer: 'Ирак',
  answers: ['Швеция', 'Словения', 'Оман', 'Ирак'],
    ),
    Question(
      type: 'l2',
      img: 'assets/51-azerbaijan.png',
      answer: 'Азербайджан',
  answers: ['Азербайджан', 'Нидерланды', 'Монако', 'Непал'],
    ),
    Question(
      type: 'l2',
      img: 'assets/52-thailand.png',
      answer: 'Таиланд',
  answers: ['Андорра', 'Таиланд', 'Туркменистан', 'Саудовская Аравия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/54-lebanon.png',
      answer: 'Ливан',
  answers: ['Россия', 'Мьянма', 'Венгрия', 'Ливан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/55-kyrgyzstan.png',
      answer: 'Киргизстан',
  answers: ['Восточный Тимор', 'Киргизстан', 'Латвия', 'Ирак'],
    ),
    Question(
      type: 'l2',
      img: 'assets/56-laos.png',
      answer: 'Лаос',
      answers: ['Украина', 'Мьянма', 'Венгрия', 'Лаос'],
    ),
    Question(
      type: 'l2',
      img: 'assets/57-bangladesh.png',
      answer: 'Бангладеш',
  answers: ['Венгрия', 'Туркменистан', 'Восточный Тимор', 'Бангладеш'],
    ),
    Question(
      type: 'l2',
      img: 'assets/58-syria.png',
      answer: 'Сирия',
  answers: ['Финляндия', 'Сирия', 'Непал', 'Малазия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/59-india.png',
      answer: 'Индия',
  answers: ['Андорра', 'Польша', 'Иран', 'Индия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/60-indonesia.png',
      answer: 'Индонезия',
  answers: ['Индонезия', 'Филиппины', 'Испания', 'Монако'],
    ),
    Question(
      type: 'l2',
      img: 'assets/61-east-timor.png',
      answer: 'Восточный Тимор',
  answers: ['Грузия', 'Ирак', 'Восточный Тимор', 'Албания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/62-tajikistan.png',
      answer: 'Таджикистан',
  answers: ['Исландия', 'Таджикистан', 'Киргизстан', 'Австрия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/63-armenia.png',
      answer: 'Армения',
  answers: ['Армения', 'Таджикистан', 'Сербия', 'Болгария'],
    ),
    Question(
      type: 'l2',
      img: 'assets/64-israel.png',
      answer: 'Израиль',
  answers: ['Камбоджа', 'Израиль', 'Германия', 'Польша'],
    ),
    Question(
      type: 'l2',
      img: 'assets/65-pakistan.png',
      answer: 'Пакистан',
  answers: ['Туркменистан', 'Филиппины', 'Россия', 'Пакистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/66-afghanistan.png',
      answer: 'Афганистан',
      answers: ['Монако', 'Таджикистан', 'Вьетнам', 'Афганистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/67-nepal.png',
      answer: 'Непал',
  answers: ['Украина', 'Непал', 'Сирия', 'Кувейт'],
    ),
    Question(
      type: 'l2',
      img: 'assets/68-malasya.png',
      answer: 'Малазия',
  answers: ['Австрия', 'Малазия', 'Бутан', 'Кувейт'],
    ),
    Question(
      type: 'l2',
      img: 'assets/69-maldives.png',
      answer: 'Мальдивы',
  answers: ['Северная Корея', 'Мальдивы', 'Босния и Герцеговина', 'Андорра'],
    ),
    Question(
      type: 'l2',
      img: 'assets/70-bahrain.png',
      answer: 'Бахрейн',
  answers: ['Кувейт', 'Нидерланды', 'Непал', 'Бахрейн'],
    ),
    Question(
      type: 'l2',
      img: 'assets/71-philippines.png',
      answer: 'Филиппины',
  answers: ['Оман', 'Филиппины', 'Латвия', 'Мальдивы'],
    ),
    Question(
      type: 'l2',
      img: 'assets/72-oman.png',
      answer: 'Оман',
  answers: ['Пакистан', 'Оман', 'Люксембург', 'Таиланд'],
    ),
    Question(
      type: 'l2',
      img: 'assets/73-myanmar.png',
      answer: 'Мьянма',
  answers: ['Индонезия', 'Румыния', 'Мьянма', 'Франция'],
    ),
    Question(
      type: 'l2',
      img: 'assets/74-cyprus.png',
      answer: 'Кипр',
  answers: ['Кипр', 'Андорра', 'Ирландия', 'Италия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/75-kazakhstan.png',
      answer: 'Казахстан',
  answers: ['Швеция', 'Южная Корея', 'Северная Корея', 'Казахстан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/76-china.png',
      answer: 'Китай',
      answers: ['Норвегия', 'Китай', 'Сирия', 'Казахстан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/77-cambodia.png',
      answer: 'Камбоджа',
  answers: ['Черногория', 'Сан-Марино', 'Камбоджа', 'Молдовия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/78-north-korea.png',
      answer: 'Северная Корея',
  answers: ['Хорватия', 'Северная Корея', 'Португалия', 'Иордания'],
    ),
    Question(
      type: 'l2',
      img: 'assets/79-yemen.png',
      answer: 'Йемен',
  answers: ['Босния и Герцеговина', 'Бельгия', 'Йемен', 'Лаос'],
    ),
    Question(
      type: 'l2',
      img: 'assets/80-south-korea.png',
      answer: 'Южная Корея',
  answers: ['Южная Корея', 'Грузия', 'Молдовия', 'Иран'],
    ),
    Question(
      type: 'l2',
      img: 'assets/81-singapore.png',
      answer: 'Сингапур',
  answers: ['Сингапур', 'Мьянма', 'Бутан', 'Сан-Марино'],
    ),
    Question(
      type: 'l2',
      img: 'assets/82-uzbekistn.png',
      answer: 'Узбекистан',
  answers: ['Франция', 'Иордания', 'Пакистан', 'Узбекистан'],
    ),
    Question(
      type: 'l2',
      img: 'assets/83-georgia.png',
      answer: 'Грузия',
  answers: ['Германия', 'Норвегия', 'Турция', 'Грузия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/84-iran.png',
      answer: 'Иран',
  answers: ['Монголия', 'Иран', 'Македония', 'Сан-Марино'],
    ),
    Question(
      type: 'l2',
      img: 'assets/85-japan.png',
      answer: 'Япония',
  answers: ['Афганистан', 'Ватикан', 'Испания', 'Япония'],
    ),
    Question(
      type: 'l2',
      img: 'assets/86-bhutan.png',
      answer: 'Бутан',
      answers: ['Бутан', 'Россия', 'Китай', 'Литва'],
    ),
    Question(
      type: 'l2',
      img: 'assets/87-mongolia.png',
      answer: 'Монголия',
  answers: ['Мьянма', 'Исландия', 'Йемен', 'Монголия'],
    ),
    Question(
      type: 'l2',
      img: 'assets/88-vietnam.png',
      answer: 'Вьетнам',
  answers: ['Литва', 'Вьетнам', 'Великобритания', 'Япония'],
    ),
    Question(
      type: 'l2',
      img: 'assets/89-sri-lanka.png',
      answer: 'Шри-Ланка',
  answers: ['Шри-Ланка', 'Оман', 'Северная Корея', 'Польша'],
    ),
    Question(
      type: 'l2',
      img: 'assets/90-kwait.png',
      answer: 'Кувейт',
  answers: ['Северная Корея', 'Румыния', 'Кипр', 'Кувейт'],
    ),
    Question(
        type: 'l2',
      img: 'assets/91-saudi-arabia.png',
      answer: 'Саудовская Аравия',
      answers: ['Швеция', 'Мальта', 'Индонезия', 'Саудовская Аравия']
    ),
  ];
}


// SimpleQuestion(
//   img: 'assets/.png',
//   answer: '',
// ),