import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/controller/localeController.dart';
import 'package:localization/next_screen.dart';
import 'package:localization/utils/app_string.dart';

class HotelListScreen extends StatefulWidget {
  const HotelListScreen({super.key});

  @override
  State<HotelListScreen> createState() => _HotelListScreenState();
}

class _HotelListScreenState extends State<HotelListScreen> {
  final LocaleController localeController = Get.put(LocaleController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff7abbb1),
        title: Text(AppString.T.hotelDetails), // Use localized title
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.language),
            onSelected: (value) {
              localeController.onChanged(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(value: 'en', child: Text("English")), // Localized
                PopupMenuItem(value: 'hi', child: Text("Hindi")), // Localized
                PopupMenuItem(value: 'bn', child: Text("Bengali")), // Localized
              ];
            },
          ),
        ],
      ),

      body: Obx(() {
        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: localeController.hotels.length,
          itemBuilder: (context, index) {
            final hotel = localeController.hotels[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: InkWell(
                onTap: () {
                  Get.to(NextModuleScreen());
                },
                child: ListTile(
                  leading: const Icon(Icons.apartment, size: 36, color: Colors.teal),
                  title: Text(hotel['title'] ?? '', style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(hotel['description'] ?? '', maxLines: 3, overflow: TextOverflow.ellipsis),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
