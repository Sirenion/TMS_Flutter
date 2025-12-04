abstract class Converter {
  void convert(String filePath);
}

class PdfConverter implements Converter {
  void convert(String filePath) {
    print("Конвертация $filePath в PDF...");
  }
}

class DocxConverter  implements Converter {
  void convert(String filePath) {
    print("Конвертация $filePath в DOCX...");
  }
}


class FileConverter {
  final Converter converter;

  FileConverter(this.converter);

  void convert(String filePath) {
    converter.convert(filePath);
  }
}

void main() {
  final Converter pdfConverter = PdfConverter();
  FileConverter pdfFileConverter = FileConverter(pdfConverter);
  pdfFileConverter.convert("document.txt");

  final Converter docxConverter = DocxConverter();
  FileConverter docxFileConverter = FileConverter(docxConverter);
  docxFileConverter.convert("document.txt");
}

