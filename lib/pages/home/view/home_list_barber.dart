import 'package:barux/pages/home/barber.card.dart';
import 'package:flutter/material.dart';

class HomeListBarber extends StatelessWidget {
  const HomeListBarber({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return BarberCard(
          name: 'name',
          specialization: 'specialization',
          imageUrl: 'imageUrl',
          onTap: () {},
        );
      },
    );
  }
}
