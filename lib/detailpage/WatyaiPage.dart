import 'package:flutter/material.dart';

class Watyaipage extends StatelessWidget {
  const Watyaipage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //background: Image.asset('Name'), Change from pink container to picture
              background: Container(color: Colors.pink),
              title: const Text('W A T Y A I'),
              centerTitle: true,
            ),
            expandedHeight: 300,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.deepPurple.shade300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
