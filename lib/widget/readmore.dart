

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class ReadMoreText extends StatefulWidget {
  final String text;
  final TextStyle textStyle;

  const ReadMoreText({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final text = widget.text;
    final textStyle = widget.textStyle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          constraints: BoxConstraints(
            maxHeight: _isExpanded ? 300 : 100.0,
          ),
          child: Text(
            text,
            style: textStyle,
            overflow: TextOverflow.fade,
          ),
        ),
        const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? 'Read less' : 'Read more',
            style: GoogleFonts.poppins(
              color: AppColors.secondoryColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}