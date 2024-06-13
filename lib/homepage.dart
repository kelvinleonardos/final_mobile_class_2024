import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: AppBar(
            title: const Text('Hai, Kelvin!'),
            actions: [
              CircleAvatar(
                child: FlutterLogo(size: 30),
              )
            ]
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "Tempat Favorit",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(20),
            child: Row(
              children: List<scrollview>.generate(
                10, (index) {
                  return scrollview(index: index + 450,);
                }
              )
            ),
          )
        ],
      )
    );
  }
}

class scrollview extends StatelessWidget {
  const scrollview({
    super.key, required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(30),
      ),
      width: 300,
      height: 500,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.network(
          'https://picsum.photos/id/' + index.toString() + '/200/300',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}