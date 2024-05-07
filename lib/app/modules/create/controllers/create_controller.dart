import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CreateController extends GetxController {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController imageUrlController; // Controller for image URL
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  void onInit() {
    titleController = TextEditingController();
    descriptionController = TextEditingController();
    imageUrlController =
        TextEditingController(); // Initialize image URL controller
    super.onInit();
  }

  @override
  void onClose() {
    imageUrlController.dispose(); // Dispose image URL controller
    super.onClose();
  }

  void addData(String title, String description, String imageUrl) async {
    try {
      String dateNow = DateTime.now().toString();
      await firestore.collection('posts').add({
        'title': title,
        'imageUrl': imageUrl, // Add image URL to Firestore document
        'time': dateNow
      });

      Get.back();
      Get.snackbar(
        'Success',
        'Data added successfully',
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 2),
        margin: EdgeInsets.all(12),
      );
      titleController.clear();
      descriptionController.clear();
      imageUrlController.clear(); // Clear image URL controller
    } catch (e) {
      print(e);
    }
  }
}
