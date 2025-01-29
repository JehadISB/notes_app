import 'package:flutter/material.dart';
import 'package:my_notes_app/constants/colors_app.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });
  final Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: KPrimaryColor, borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 30,
                  width: 30,
                  child: const CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : const Text(
                  "Add",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
        ),
      ),
    );
  }
}
