abstract class Converter {
  void convert();
}

class PdfExample implements Converter {
  String filePath;
  PdfExample(this.filePath);

  @override
  void convert() {
    print("Конвертируем $filePath в PDF...");
  }
}

class DocxExample implements Converter {
  String filePath;
  DocxExample(this.filePath);

  @override
  void convert() {
    print("Конвертируем $filePath в DOCX...");
  }
}

class JpgExample implements Converter {
  String filePath;
  JpgExample(this.filePath);

  @override
  void convert() {
    print("Конвертируем $filePath в JPG...");
  }
}

class FileConverter {
  void convert(Converter converter) {
    converter.convert();
  }
}

void main() {
  FileConverter converter = FileConverter();

  PdfExample pdf = PdfExample("document.txt");
  converter.convert(pdf);

  DocxExample docx = DocxExample("report.txt");
  converter.convert(docx);

  JpgExample jpg = JpgExample("picture.png");
  converter.convert(jpg);
}