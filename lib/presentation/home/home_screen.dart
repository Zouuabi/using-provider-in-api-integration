import 'package:flutter/material.dart';
import 'home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Provider.of<HomeProvider>(context).isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    Provider.of<HomeProvider>(context).f,
                    style: const TextStyle(fontSize: 25),
                  ),
                ),
                OutlinedButton(
                    onPressed: () {
                      Provider.of<HomeProvider>(context, listen: false)
                          .getData();
                    },
                    child: const Text('Get Data'))
              ],
            ),
    );
  }
}
