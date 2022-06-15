import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';
import '../models/models.dart';

class GroceryItemScreen extends StatefulWidget {
  final Function(GroceryItem) onCreate;

  final Function(GroceryItem) onUpdate;

  final GroceryItem? originalItem;

  final bool isUpdating;

  GroceryItemScreen({
    Key? key,
    required this.onCreate,
    required this.onUpdate,
    this.originalItem,
  })  : isUpdating = (originalItem != null),
        super(key: key);

  @override
  State<GroceryItemScreen> createState() => _GroceryItemScreenState();
}

class _GroceryItemScreenState extends State<GroceryItemScreen> {
  // todo: Add grocery item screen state properties
  @override
  Widget build(BuildContext context) {
    // todo 12: add groceryitemscreen scaffold
    return Container(
      color: Colors.orange,
    );
  }
  // todo:add buildNameField()
  // todo:add buildImportanceField()
  // todo:add buildDateField()
  // todo:add buildTimeField()
  // todo:add buildColorPicker()
  // todo:add buildQuantityField()
}
