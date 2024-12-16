import 'package:flutter/material.dart';

class BookingBarber extends StatelessWidget {
  const BookingBarber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Barber'),
      ),
      body: ListView(
        children: const [
          BarbershopTile(
            name: 'Keluncum Barbershop Siaga',
            location: 'Siaga Street',
            rating: 4.6,
          ),
          BarbershopTile(
            name: 'Lucky Barbershop Ringroad',
            location: 'Ringroad Avenue',
            rating: 4.5,
          ),
          BarbershopTile(
            name: 'Cut & Ro Barbershop',
            location: 'Downtown Road',
            rating: 4.8,
          ),
          BarbershopTile(
            name: 'Gentlefox Barbershop',
            location: 'Fox Hill',
            rating: 4.2,
          ),
        ],
      ),
    );
  }
}

class BarbershopTile extends StatelessWidget {
  final String name;
  final String location;
  final double rating;

  const BarbershopTile({
    required this.name,
    required this.location,
    required this.rating,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('Location: $location\nRating: $rating'),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        // Tambahkan navigasi atau fungsi lainnya di sini
      },
    );
  }
}
