import 'package:flutter/material.dart';
import 'package:homework/widgets/avatar.dart';
import 'package:homework/widgets/info_plate.dart';
import 'package:homework/widgets/name_plate.dart';
import 'package:homework/widgets/news.dart';
import 'package:homework/widgets/text_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffbbdefb),
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
        top: false,
        child: Stack(
            clipBehavior: Clip.none,
            children: [
              SingleChildScrollView(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final double width = constraints.maxWidth;
                    return Column(
                      crossAxisAlignment: switch(width > 600) {
                        true => .start,
                        false => .center,
                      },
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: switch(width > 600) {
                            true => .centerLeft,
                            false => .center,
                          },
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Color(0xffbbdefb),
                              ),
                              height: 90.0,
                            ),
                            Positioned(
                              bottom: -60.0,
                              child: const Avatar(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 75.0,
                        ),
                        const NamePlate(
                            name: "Иван Иванов", job: "Разработчик Flutter"),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Flexible(
                                fit: FlexFit.tight,
                                child: const InfoPlate(
                                    main: "1.2К", sub: "Подписчики")
                            ),
                            Flexible(
                                fit: FlexFit.tight,
                                child: const InfoPlate(
                                    main: "356", sub: "Подписки")
                            ),
                            Flexible(
                                fit: FlexFit.tight,
                                child: const InfoPlate(main: "48", sub: "Посты")
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: TextView(
                                input: "Редактировать",
                                textColor: Color(0xff8b78b9),
                                bold: true,
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              child: TextView(
                                input: "Поделиться",
                                textColor: Color(0xff8b78b9),
                                bold: true,
                              ),
                            ),
                          ],
                        ),
                        NewsGrid(width: width),
                      ],
                    );
                  },
                ),
              ),
              Positioned(
                right: 15.0,
                bottom: 15.0,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(
                        20.0), // Adjust padding to control size
                  ),
                  onPressed: () {},
                  label: Icon(
                      Icons.add,
                      size: 25.0,
                      color: Colors.black
                  ),
                ),
              ),
            ]
        ),
      ),
    );
  }
}
