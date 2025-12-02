import 'package:flutter/material.dart';

class MarketplaceCompleteScreen extends StatelessWidget {
  const MarketplaceCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Color(0xFFFF7900),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text('Max it', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
          ),
        ),
        title: Text('Marketplace', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.black), onPressed: () {}),
          Stack(
            children: [
              IconButton(icon: Icon(Icons.notifications_outlined, color: Colors.black), onPressed: () {}),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(color: Color(0xFFFF7900), shape: BoxShape.circle),
                  child: Text('20', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
          IconButton(icon: Icon(Icons.help_outline, color: Colors.black), onPressed: () {}),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(Icons.person, color: Colors.grey[600]),
          ),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            
            // Top Services Row 1
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildServiceIcon(Icons.phone, 'PAWA'),
                  _buildServiceIcon(Icons.flash_on, 'Univers Pulse'),
                  _buildServiceIcon(Icons.analytics, 'Suivi de ma\nconsommation'),
                  _buildServiceIcon(Icons.store, 'Sembe Woila'),
                ],
              ),
            ),
            
            SizedBox(height: 16),
            
            // Top Services Row 2
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  _buildServiceIcon(Icons.discount, 'Best Deal'),
                  SizedBox(width: 60),
                  _buildServiceIcon(Icons.headset_mic, 'Mon avis'),
                ],
              ),
            ),
            
            SizedBox(height: 16),
            
            Divider(thickness: 8, color: Colors.grey[200]),
            
            SizedBox(height: 16),
            
            // Mes achats via MarketPlace
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Mes achats via MarketPlace', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            
            SizedBox(height: 20),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildMarketplaceCard(Icons.public, 'Mes services\nactifs'),
                  _buildMarketplaceCard(Icons.confirmation_number, 'Mes tickets'),
                  _buildMarketplaceCard(Icons.public, 'Orange\nEnergies'),
                ],
              ),
            ),
            
            SizedBox(height: 24),
            
            Divider(thickness: 8, color: Colors.grey[200]),
            
            SizedBox(height: 16),
            
            // Besoin d'aide ?
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Besoin d\'aide ?', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            
            SizedBox(height: 20),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildHelpCard(Icons.headset_mic, 'Contacter un\nagent'),
                  _buildHelpCard(Icons.lock, 'Mon\nIdentification'),
                  _buildHelpCard(Icons.location_on, 'Localiser une\nagence'),
                ],
              ),
            ),
            
            SizedBox(height: 24),
            
            // Promotional Banner
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  colors: [Color(0xFFFF7900), Color(0xFFFFB366)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Découvrez nos',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Offres Spéciales',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Voir plus',
                            style: TextStyle(
                              color: Color(0xFFFF7900),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Icon(
                      Icons.shopping_bag,
                      size: 80,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 24),
            
            // Categories populaires
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Catégories populaires', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            
            SizedBox(height: 16),
            
            Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildCategoryCard('Téléphones', Icons.phone_android),
                  _buildCategoryCard('Électronique', Icons.devices),
                  _buildCategoryCard('Mode', Icons.checkroom),
                  _buildCategoryCard('Maison', Icons.home),
                  _buildCategoryCard('Sports', Icons.sports_soccer),
                ],
              ),
            ),
            
            SizedBox(height: 24),
            
            // Produits recommandés
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Produits recommandés', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  TextButton(
                    onPressed: () {},
                    child: Text('Voir tout', style: TextStyle(color: Color(0xFFFF7900))),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 12),
            
            Container(
              height: 220,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  _buildProductCard('Smartphone X', '150,000 FCFA', 4.5),
                  _buildProductCard('Écouteurs Pro', '25,000 FCFA', 4.8),
                  _buildProductCard('Montre Smart', '45,000 FCFA', 4.3),
                  _buildProductCard('Tablette Plus', '120,000 FCFA', 4.6),
                ],
              ),
            ),
            
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceIcon(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Color(0xFFFF7900), size: 32),
        ),
        SizedBox(height: 8),
        Container(
          width: 75,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 11),
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildMarketplaceCard(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Color(0xFFFF7900), size: 40),
              SizedBox(height: 6),
              Container(
                height: 4,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFFF7900),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 95,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildHelpCard(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 95,
          height: 95,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Color(0xFFFF7900), size: 40),
        ),
        SizedBox(height: 8),
        Container(
          width: 95,
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
            maxLines: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryCard(String label, IconData icon) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Color(0xFFFF7900).withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFFF7900), width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Color(0xFFFF7900), size: 36),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              color: Color(0xFFFF7900),
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String name, String price, double rating) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Center(
              child: Icon(Icons.image, size: 50, color: Colors.grey[400]),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(
                    color: Color(0xFFFF7900),
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    SizedBox(width: 4),
                    Text(
                      rating.toString(),
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}