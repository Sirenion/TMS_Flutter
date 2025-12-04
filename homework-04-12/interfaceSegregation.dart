
abstract class FilePath {
  void open(String filePath);
}

abstract class Playable {
  void playAudio();
}

abstract class Readable {
  void readText();
}

class TextFileHandler implements FilePath, Readable {
  String content = "Пример текста";

  @override
  void open(String filePath) {
    print("Открываем текстовый файл: $filePath");
  }

  @override
  void readText() {
    print("Читаем текст: $content");
  }
}

class AudioFileHandler implements FilePath, Playable {
  @override
  void open(String filePath) {
    print("Открываем аудиофайл: $filePath");
  }

  @override
  void playAudio() {
    print("Воспроизводим аудио...");
  }
}

void main() {
  TextFileHandler textFileHandler = TextFileHandler();
  AudioFileHandler audioFileHandler = AudioFileHandler();

  textFileHandler.open("file.txt");
  textFileHandler.readText();
  
  audioFileHandler.open("Stronger.mp3");
  audioFileHandler.playAudio();
}

