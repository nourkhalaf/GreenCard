
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color(0xFFF5F4F4),
          filled: true,
          contentPadding: const EdgeInsets.all(4),
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            fontFamily: 'Gotham',
          ),
          hintText: 'Search for restaurants, cafes, etc…',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none),
          prefixIcon: Container(
              margin: const EdgeInsets.only(right: 15),
              width: 56,
              decoration: BoxDecoration(
                  color: const Color(0xFF8BBF4D),
                  borderRadius: BorderRadius.circular(14)),
              child: SvgPicture.asset(
                'lib/assets/search.svg',
              )),
        ),
      ),
    );
  }
}
