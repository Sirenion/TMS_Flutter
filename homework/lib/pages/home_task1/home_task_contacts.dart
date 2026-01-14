import 'package:flutter/material.dart';
import 'package:homework/models/contacts.dart';
import 'package:homework/widgets/text_view.dart';

class HomeTaskContacts extends StatelessWidget {
  const HomeTaskContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contacts> contactsList = [
      Contacts(
        name: 'Иван Петров',
        phone: '+7 912 345-67-01',
        birthday: '12.03.1990',
        additionalInfo: 'Друг со школы',
      ),
      Contacts(
        name: 'Анна Смирнова',
        phone: '+7 903 456-78-12',
        birthday: '25.07.1992',
        additionalInfo: 'Коллега по работе',
      ),
      Contacts(
        name: 'Алексей Иванов',
        phone: '+7 905 111-22-33',
        birthday: '03.11.1988',
        additionalInfo: 'Сосед',
      ),
      Contacts(
        name: 'Мария Кузнецова',
        phone: '+7 926 333-44-55',
        birthday: '18.01.1995',
        additionalInfo: 'Одногруппница',
      ),
      Contacts(
        name: 'Дмитрий Соколов',
        phone: '+7 916 777-88-99',
        birthday: '09.09.1987',
        additionalInfo: 'Брат',
      ),
      Contacts(
        name: 'Екатерина Орлова',
        phone: '+7 977 222-33-44',
        birthday: '30.05.1993',
        additionalInfo: 'Подруга семьи',
      ),
      Contacts(
        name: 'Сергей Волков',
        phone: '+7 901 654-32-10',
        birthday: '14.02.1991',
        additionalInfo: 'Тренер',
      ),
      Contacts(
        name: 'Ольга Васильева',
        phone: '+7 999 888-77-66',
        birthday: '22.08.1989',
        additionalInfo: 'Врач',
      ),
      Contacts(
        name: 'Николай Фёдоров',
        phone: '+7 904 555-66-77',
        birthday: '06.12.1985',
        additionalInfo: 'Дальний родственник',
      ),
      Contacts(
        name: 'Татьяна Морозова',
        phone: '+7 950 123-45-67',
        birthday: '27.04.1994',
        additionalInfo: 'Знакомая',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Контакты', textSize: 20.0),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: contactsList.length,
            itemBuilder: (BuildContext context, int index) {
              final Contacts currContact = contactsList[index];
              return ListTile(
                title: Text(currContact.name),
                subtitle: Text(currContact.phone),
                onTap: () => Navigator.of(
                  context,
                ).pushNamed('/home_task1&2/contacts/info', arguments: currContact),
              );
            },
          ),
        ),
      ),
    );
  }
}
