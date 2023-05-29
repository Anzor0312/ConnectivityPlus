import 'package:flutter/material.dart';
import 'package:ruoter/view/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const ProfilePage(),
      body: CustomScrollView(

        slivers: [
          
          SliverAppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          color: Colors.purple,
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.6,
                          child: TextFormField(),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.home_max_outlined))
            ],
            floating: true,
            snap: true,
            title: const Text('Anor Bank'),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(background: PageView.builder(
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://source.unsplash.com/random/$index"),
                          fit: BoxFit.fill)),
                  child: Image.network(
                    "https://img1.picmix.com/output/stamp/normal/2/2/1/5/1255122_20b7d.gif",
                    fit: BoxFit.fill,
                  ),
                );
              },
            )),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ListTile(
              
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                  "https://source.unsplash.com/random/?$index",
                )),
                title: const Text("Hello"),
              );
            },
          ))
        ],
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, "info");
          },
          child: const Text("Info Pagega o'tish")),
    );
  }
}
