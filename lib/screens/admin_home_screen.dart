import 'package:eat_app/widgets/items/item_text_form_field_admin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/food.dart';
import '../providers/foods.dart';
import '../utils/images.dart';
import '../widgets/components/simple_app_bar.dart';
import '../widgets/items/custom_text_from_field_edit_profile.dart';

class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _nameController = TextEditingController();
    final _categoryController = TextEditingController();
    final _priceController = TextEditingController();
    final _imageController = TextEditingController();
    final _ratingController = TextEditingController();
    final _restaurantController = TextEditingController();
    final _descriptionController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    final food = Provider.of<Foods>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Admin',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.91,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.08,
                    right: size.width * 0.06,
                    top: size.height * 0.02),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.13,
                          height: size.height * 0.06,
                          child: const Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/images/parson.png'),
                              radius: 100,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.03,
                        ),
                        Text(
                          'Admin Omar Ezzdeen',
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 13),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () async {
                            food.addNewItemFood(Food(
                              id: '1',
                              name: _nameController.text,
                              category: _categoryController.text,
                              price: double.parse(_priceController.text),
                              image: _imageController.text,
                              rating: _ratingController.text,
                              restaurant: _restaurantController.text,
                              description: _descriptionController.text,
                              isFavorite: false,
                            ));
                          },
                          child: Text('SAVE',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 13)),
                        ),
                      ],
                    ),
                    const ItemTextFormFieldAdmin(),
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
