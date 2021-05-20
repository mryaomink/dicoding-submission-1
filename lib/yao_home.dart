import 'package:flutter/material.dart';
import 'package:my_microblog/gaming_page.dart';
import 'package:my_microblog/tech_page.dart';
import 'package:my_microblog/yao_detail.dart';

class YaoHome extends StatelessWidget {
  final textController;

  YaoHome({this.textController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text(
                      'Hello and Welcome $textController\nHappy Reading and Get Inspired',
                      style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 400,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TechPage(),
                              ),
                            );
                          },
                          child: KategoriMenu(
                            imgUrl:
                                'https://images.unsplash.com/photo-1504270997636-07ddfbd48945?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80',
                            judul: 'Tech',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GamingPage(),
                              ),
                            );
                          },
                          child: KategoriMenu(
                            imgUrl:
                                'https://images.unsplash.com/photo-1535223289827-42f1e9919769?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
                            judul: 'Gaming',
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        KategoriMenu(
                          imgUrl:
                              'https://images.unsplash.com/photo-1542038784456-1ea8e935640e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
                          judul: 'Photography',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        KategoriMenu(
                          imgUrl:
                              'https://images.unsplash.com/photo-1541728472741-03e45a58cf88?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80',
                          judul: 'Programming',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Most Reading',
                    style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.redAccent,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: MostReading(),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: MostReading(),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: MostReading(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MostReading extends StatelessWidget {
  const MostReading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
            child: Image.network(
              'https://images.unsplash.com/photo-1541176447985-6bb45fb77a14?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          child: Text(
              'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,'),
        ),
        SizedBox(
          height: 5,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YaoDetail(),
                ),
              );
            },
            child: Text('Read more'))
      ],
    );
  }
}

class KategoriMenu extends StatelessWidget {
  final String imgUrl;
  final String judul;
  KategoriMenu({
    required this.imgUrl,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: NetworkImage(imgUrl), fit: BoxFit.cover),
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          judul,
          style: TextStyle(
              fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
