class KoreanDrama {
  String name;
  String broadcaster;
  int numEpisodes;
  String schedule;
  String banner;
  List<String> imageUrls;
  KoreanDrama(
    {required this.name, required this.broadcaster,required this.numEpisodes,
    required this.schedule, required this.banner, required this.imageUrls}
      );
}
var koreanDramaList = [
  KoreanDrama(
    name:'Hotel del Luna',
    broadcaster:'tvN',
    numEpisodes:16,
    schedule:'21.00-22.00',
    banner:'images/hotel_del_luna.jpg',
    imageUrls:['https://media.suara.com/pictures/970x544/2019/07/28/69943-penampilan-iu-di-drama-hotel-del-luna-koreaboo.jpg','https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2022/07/13/2039942595.jpg','https://m.media-amazon.com/images/M/MV5BZmIxNDgzODQtYjk1NS00Y2Q5LWFkMmQtMTcwYmE5OWNjNGY2XkEyXkFqcGdeQXVyMjQ2OTU4Mjg@._V1_.jpg'],
  ),
  KoreanDrama(
    name:'Alchemy of Souls',
    broadcaster:'Netflix',
    numEpisodes:20,
    schedule:'20.00-21.00',
    banner:'images/alchemy.jpeg',
    imageUrls:['https://cdn-2.tstatic.net/jambi/foto/bank/images/Link-nonton-Alchemy-of-Souls-sub-indo.jpg','https://6.viki.io/image/8e41b099e14345efa081b35165a44389/dummy.jpeg','https://6.viki.io/image/6491c321fb3e48ac885296a5cd9d93c3/dummy.jpeg'],
  ),
  KoreanDrama(
    name:'Alchemy of Souls',
    broadcaster:'Netflix',
    numEpisodes:20,
    schedule:'20.00-21.00',
    banner:'images/alchemy.jpeg',
    imageUrls:['https://cdn-2.tstatic.net/jambi/foto/bank/images/Link-nonton-Alchemy-of-Souls-sub-indo.jpg','https://6.viki.io/image/8e41b099e14345efa081b35165a44389/dummy.jpeg','https://6.viki.io/image/6491c321fb3e48ac885296a5cd9d93c3/dummy.jpeg'],
  ),
  KoreanDrama(
    name:'Alchemy of Souls',
    broadcaster:'Netflix',
    numEpisodes:20,
    schedule:'20.00-21.00',
    banner:'images/alchemy.jpeg',
    imageUrls:['https://cdn-2.tstatic.net/jambi/foto/bank/images/Link-nonton-Alchemy-of-Souls-sub-indo.jpg','https://6.viki.io/image/8e41b099e14345efa081b35165a44389/dummy.jpeg','https://6.viki.io/image/6491c321fb3e48ac885296a5cd9d93c3/dummy.jpeg'],
  ),
];