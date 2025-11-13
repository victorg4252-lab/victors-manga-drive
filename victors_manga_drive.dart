import 'package:mangayomi/bridge_lib.dart';

class VictorsMangaDrive extends MProvider {
  VictorsMangaDrive() {
    name = "Victor’s Manga Drive";
    baseUrl = "https://drive.google.com";
    lang = "es";
    typeSource = "manga";
    iconUrl = "https://i.imgur.com/1v3PpAx.png";
  }

  @override
  Future<List<MManga>> getPopularManga(int page) async {
    return [
      MManga(
        name: "Uzaki-chan Wants to Hang Out!",
        link: "https://drive.google.com/drive/folders/1y7E9z5ZQTXTkMkmK4MJRWdpM6WWq5LXT",
        imageUrl: "https://i.imgur.com/FKq8Eyx.jpg",
      ),
      // Puedes añadir más series aquí
    ];
  }

  @override
  Future<List<MChapter>> getChapters(String mangaLink) async {
    // A futuro puedes listar capítulos desde Drive o HTML
    return [];
  }

  @override
  Future<String> getPageList(String chapterLink) async {
    return "";
  }
}
