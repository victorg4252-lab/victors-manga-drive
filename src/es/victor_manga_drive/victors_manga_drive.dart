import 'package:mangayomi/bridge_lib.dart';

class VictorsMangaDrive extends MProvider {
  VictorsMangaDrive() {
    name = "Victor's Manga Drive";
    baseUrl = "https://drive.google.com";
    lang = "es";
    typeSource = "manga";
    iconUrl = "https://i.imgur.com/1v3PpAx.png";
  }

  @override
  Future<List<MManga>> getPopularManga(int page) async {
    return [
      MManga(
        name: "Ejemplo - Uzaki-chan Tomo 1",
        link: "https://drive.google.com/file/d/1y7E9z5ZQTXTkMkmK4MJRWdpM6WWq5LXT/view",
        imageUrl: "https://i.imgur.com/FKq8Eyx.jpg",
      ),
      MManga(
        name: "Ejemplo - Uzaki-chan Tomo 2",
        link: "https://drive.google.com/file/d/1bHbMBGc2EcdAebN-ZULw6eRv_DbOuKpQ/view",
        imageUrl: "https://i.imgur.com/FKq8Eyx.jpg",
      )
    ];
  }

  @override
  Future<List<MChapter>> getChapters(String mangaLink) async {
    return [
      MChapter(
        name: "Descargar EPUB",
        link: mangaLink,
      )
    ];
  }

  @override
  Future<List<MPage>> getPageList(String chapterLink) async {
    return [
      MPage(
        index: 0,
        imageUrl: chapterLink,
      )
    ];
  }
}
