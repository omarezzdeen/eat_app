import 'package:flutter/material.dart';

import 'custom_text_from_field_edit_profile.dart';

class ItemTextFormFieldAdmin extends StatelessWidget {
  const ItemTextFormFieldAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    final _nameController = TextEditingController();
    final _categoryController = TextEditingController();
    final _priceController = TextEditingController();
    final _imageController = TextEditingController();
    final _ratingController = TextEditingController();
    final _restaurantController = TextEditingController();
    final _descriptionController = TextEditingController();

    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFromFieldEditProfile(
            key: const Key('name'),
            text: 'Name Item Food',
            controller: _nameController,
          ),
          CustomTextFromFieldEditProfile(
            key: const Key('category'),
            text: 'category',
            controller: _categoryController,
          ),
          CustomTextFromFieldEditProfile(
            key: const Key('price'),
            text: 'price',
            controller: _priceController,
          ),
          CustomTextFromFieldEditProfile(
            key: const Key('image'),
            text: 'image',
            controller: _imageController,
          ),
          CustomTextFromFieldEditProfile(
            key: const Key('rating'),
            text: 'rating',
            controller: _ratingController,
          ),
          CustomTextFromFieldEditProfile(
            key: const Key('restaurant'),
            text: 'restaurant',
            controller: _restaurantController,
          ),
        ],
      ),
    );
  }
}
