import 'package:flutter/material.dart';
import '/pages/main_pages/user_profile_page.dart';

class DesktopSearchBar extends StatelessWidget {
  const DesktopSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Знайти івент...",
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search_outlined, color: Colors.black, size: 35),
                  onPressed: () {},
                  ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[350],
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                const Icon(Icons.mic_none_rounded, color: Colors.black, size: 35),
                
                Transform.scale(
                  scale: 0.8,
                  child: Switch(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Colors.grey[350],
                    inactiveThumbColor: Colors.grey[350],
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white,
                  ),
                ),
                
                const Icon(Icons.keyboard_alt_outlined, color: Colors.black, size: 35),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.account_circle_outlined, color: Colors.black),
            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  );
                },
            iconSize: 45,
          ),
        ],
      ),
    );
  }
}