import 'package:cosmetics_shop/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class DropDownSort extends StatefulWidget {
  const DropDownSort({
    super.key,
    required this.label,
    required this.items,
    required this.initialValue,
    required this.onSelected,
  });

  final String label;
  final List<String> items;
  final String initialValue;

  final ValueChanged<String> onSelected;

  @override
  State<DropDownSort> createState() => _DropDownSortState();
}

class _DropDownSortState extends State<DropDownSort> {
  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.sortTitle,
        ),
        Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return DropdownButton<String>(
                value: selectedValue,
                items: widget.items
                    .map((option) => DropdownMenuItem(
                          value: option,
                          child: Text(option),
                        ))
                    .toList(),
                selectedItemBuilder: (BuildContext context) {
                  return widget.items.map((option) {
                    return Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        option,
                        style: AppTextStyles.sortDropText,
                      ),
                    );
                  }).toList();
                },
                onChanged: (value) {
                  if (value != null) {
                    setState(() {
                      selectedValue = value;
                    });
                    widget.onSelected(value);
                  }
                },
                underline: const SizedBox(),
                icon: const SizedBox(),
                isExpanded: true,
              );
            },
          ),
        ),
      ],
    );
  }
}
