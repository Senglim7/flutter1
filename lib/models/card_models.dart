class CardModel {
  final String image, title, date;
  final double price;

  CardModel(
      {required this.image,
      required this.title,
      required this.date,
      required this.price});
  static List<CardModel> listCard = [
    CardModel(
        image:
            "https://sf-static.tiktokcdn.com/obj/eden-sg/uhtyvueh7nulogpoguhm/tiktok-icon2.png",
        title: "Tik Tok",
        date: "1 Mar 2024",
        price: 99.99),
    CardModel(
        image:
            "https://is1-ssl.mzstatic.com/image/thumb/Purple126/v4/13/de/00/13de00cd-3b44-97cf-4f37-5675942a8e81/Icon-Production-0-1x_U007emarketing-0-7-0-85-220-0.png/1200x630wa.png",
        title: "Facebook",
        date: "11 Feb 2023",
        price: 591.21),
    CardModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Instagram_logo_2022.svg/1200px-Instagram_logo_2022.svg.png",
        title: "Instagram",
        date: "20 Nov 2023",
        price: 149.99),
    CardModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Telegram_2019_Logo.svg/800px-Telegram_2019_Logo.svg.png",
        title: "Telegram",
        date: "9 Dec 2023",
        price: 345.21),
    CardModel(
        image:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/YouTube_social_white_square_%282017%29.svg/1200px-YouTube_social_white_square_%282017%29.svg.png",
        title: "Youtube",
        date: "20 April 2023",
        price: 231.25),
    CardModel(
        image:
            "https://pbs.twimg.com/profile_images/1607410723227054082/RaQz46j7_400x400.jpg",
        title: "Snapchat",
        date: "15 May 2023",
        price: 621.41),
  ];
}
