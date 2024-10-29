import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  get body => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Travel App'),
            Row(
              children: [
                Icon(Icons.notifications_none),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 2, 90, 194),
                  child: Text('HA'),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Color.fromARGB(255, 0, 202, 224),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              // Container dengan gambar di belakang
              Container(
                margin: EdgeInsets.all(18),
                padding: EdgeInsets.all(18),
                child: Stack(
                  children: [            
                    Positioned.fill(
                      child: Image.asset(
                        'assets/wisata.jpeg', 
                        fit: BoxFit.cover,
                        color: Colors.black.withOpacity(0.2), 
                        colorBlendMode: BlendMode.darken, 
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 0, 202, 224).withOpacity(0.7), // Latar belakang semi-transparan
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dana",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Rp1.000.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, 
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
          
    
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 4,
                children: [
                  _buildIconButton(Icons.flight, 'Flights'),
                  _buildIconButton(Icons.hotel, 'Hotels'),
                  _buildIconButton(Icons.train, 'Trains'),
                  _buildIconButton(Icons.directions_bus, 'Bus'),
                  _buildIconButton(Icons.car_rental, 'Cars'),
                  _buildIconButton(Icons.event, 'Events'),
                  _buildIconButton(Icons.pedal_bike, 'Activities'),
                  _buildIconButton(Icons.local_offer, 'Promotions'),
                  _buildIconButton(Icons.map, 'map'),
                  _buildIconButton(Icons.camera, 'rent camera'),
                  _buildIconButton(Icons.credit_card, 'pay credit'),
                  _buildIconButton(Icons.calendar_month, 'booking'),
                  
                  
                ],
              ),
            ),

          
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.lightBlue[50],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Saat Ini',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildPromoCard('Kupon Diskon Tiket'),
                      _buildPromoCard('Promo Lain'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        onTap: (index) {},
      ),
    );
  }

  Widget _buildIconButton(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        SizedBox(height: 5),
        Text(label, textAlign: TextAlign.center),
      ],
    );
  }

  Widget _buildPromoCard(String title) {
    return Container(
      width: 150,
      height: 100,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
