import 'package:barux/pages/onboardingScreen/view/barber.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Onboardingscreenbody extends StatefulWidget {
  const Onboardingscreenbody({super.key});

  @override
  State<Onboardingscreenbody> createState() => _OnboardingscreenbodyState();
}

class _OnboardingscreenbodyState extends State<Onboardingscreenbody> {
  GoogleMapController? _controller;
  LatLng _lastTappedLocation = LatLng(10.3142, 123.8988);
  final Set<Marker> _markers = {};

  static const _initialPosition = CameraPosition(
    target: LatLng(10.3142, 123.8988),
    zoom: 12,
  );

  final List<Barber> barbers = [
    Barber(lat: 10.3142, lang: 123.8988, name: "Barber 1"),
    Barber(lat: 10.3145, lang: 123.8978, name: "Barber 2"),
    Barber(lat: 10.3149, lang: 123.8989, name: "Barber 3"),
  ];
  @override
  void initState() {
    super.initState();
    _loadMarkers();
  }

  void _loadMarkers() {
    // Convert barber list into Marker objects
    setState(() {
      _markers.clear(); // clear existing markers if any
      for (var barber in barbers) {
        _markers.add(
          Marker(
            markerId: MarkerId(barber.name),
            position: LatLng(barber.lat, barber.lang),
            infoWindow: InfoWindow(title: barber.name),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BARUX - Locate your barber next to you')),
      body: GoogleMap(
        buildingsEnabled: true,
        myLocationEnabled: true,
        onTap: (LatLng location) {
          setState(() {
            _lastTappedLocation = location;
          });
        },
        // markers: {
        //   Marker(
        //       markerId: MarkerId('tappedLocation'),
        //       position: _lastTappedLocation),
        // },
        initialCameraPosition: _initialPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
        markers: _markers,
        // markers: {
        //   Marker(
        //     markerId: MarkerId('Cebu City'),
        //     position: LatLng(10.3142, 123.8988),
        //     position: _lastTappedLocation,
        //   ),
        // },
      ),
    );
    // return Column(
    //   children: [
    //     ElevatedButton(
    //       onPressed: () {},
    //       child: Text(
    //         'Login',
    //       ),
    //     ),
    //     Padding(
    //       padding: EdgeInsets.symmetric(
    //         vertical: 16,
    //       ),
    //       child: ElevatedButton(
    //         onPressed: () {
    //           context.push(SignupPage.route);
    //         },
    //         child: Text(
    //           'Sign up',
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
