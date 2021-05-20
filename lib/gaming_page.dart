import 'package:flutter/material.dart';
import 'package:my_microblog/yao_detail.dart';

class GamingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 80,
                  child: Card(
                    child: ListTile(
                      leading: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://images.unsplash.com/photo-1550745165-9bc0b252726f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Text('Judul $index'),
                      subtitle: Text('deskripsi $index'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => YaoDetail(),
                            ),
                          );
                        },
                        icon: Icon(Icons.read_more),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
