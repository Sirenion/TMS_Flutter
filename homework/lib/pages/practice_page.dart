import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:homework/network/network_service.dart';
import 'package:homework/widgets/text_view.dart';
import 'package:provider/provider.dart';

class PracticePage extends StatelessWidget {
  const PracticePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffbbdefb),
        title: const TextView(input: 'Практическое №12', textSize: 20.0),
        leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => context.go('/')),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FutureBuilder(
            future: context.read<NetworkService>().getUsers(),
            builder: (context, asyncSnapshot) {
              if (asyncSnapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              if (asyncSnapshot.hasError) {
                return Center(child: TextView(input: asyncSnapshot.error.toString()));
              }

              final users = asyncSnapshot.data ?? List.empty();

              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (BuildContext context, int index) {
                  final user = users[index];
                  return ListTile(
                    title: Text(user.name ?? 'No data'),
                    subtitle: Text(user.phone ?? 'No data'),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
