import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/app/components/custom_app_bar_widget.dart';
import 'package:notepad/app/components/custom_scaffold_widget.dart';
import 'package:notepad/app/pages/reader/reader_controller.dart';

class ReaderView extends GetView<ReaderController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    controller.note.title,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    controller.note.content,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      appBar: CustomAppBar(
        title: Text(controller.note.title),
      ),
    );
  }
}
