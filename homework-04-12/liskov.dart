abstract class FileProcessor {
  void upload(String filePath);
}

abstract class FileConverter extends FileProcessor {
  void convert(String filePath);
}

class PdfConverter extends FileConverter {
  @override
  void upload(String filePath) {
    print("Загружаем PDF-файл: $filePath");
  }

  @override
  void convert(String filePath) {
    print("Конвертируем $filePath в PDF...");
  }
}

class EncryptedFile extends FileProcessor {
  @override
  void upload(String filePath) {
    print("Загружаем зашифрованный файл: $filePath");
  }
}

void main() {
  PdfConverter pdfConverter = PdfConverter();
  EncryptedFile encryptedFile = EncryptedFile();

  pdfConverter.upload("document.txt");
  pdfConverter.convert("document.txt");

  encryptedFile.upload("document.txt");
}
