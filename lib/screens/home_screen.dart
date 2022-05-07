import 'package:flutter/material.dart';
import '../widgets/widgets.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarHomePage(),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.06),
              child: Container(
                width: size.width,
                height: size.height * 0.7,
                child: ListView(
                  padding: EdgeInsets.only(top: size.height * 0.02),
                  children: [
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.35,
                      child: const FoodsListView(),
                    ),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.09,
                      child: const CategoryList(),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text('Popular Food',
                          style: Theme.of(context).textTheme.headline5),
                    ),
                    SizedBox(
                      width: size.width,
                      height: size.height * 0.35,
                      child: const FoodsListView(),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
