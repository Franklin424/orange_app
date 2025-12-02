import 'package:flutter/material.dart';

class OrangeMoneyCompleteScreen extends StatelessWidget {
  const OrangeMoneyCompleteScreen({super.key});

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
            child: Text(
              'Max it',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        title: Text(
          'Orange Money',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.notifications_outlined, color: Colors.black),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF7900),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '20',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
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
            // Numéro Orange Money
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFF2A2A2A),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xFFFF7900),
                    ),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mon numéro',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        '237694233417',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // QR Code et Solde Principal
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF2A2A2A),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // QR Code Section
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFFF7900),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CustomPaint(painter: QRCodePainter()),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Scanner et payer',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 20),

                  // Solde Section
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_balance_wallet,
                              color: Color(0xFFFF7900),
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Solde Principal',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Icon(
                              Icons.visibility_off,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 8),
                            Text(
                              '******',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {},
                          child: Row(
                            children: [
                              Text(
                                'Mes transactions',
                                style: TextStyle(
                                  color: Color(0xFFFF7900),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: 4),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFFF7900),
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Mes favoris
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Mes favoris',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Text(
                      'Personnaliser',
                      style: TextStyle(color: Color(0xFFFF7900), fontSize: 14),
                    ),
                    label: Icon(Icons.edit, color: Color(0xFFFF7900), size: 18),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildFavoriteAction(Icons.swap_horiz, "Transfert\nd'argent"),
                  _buildFavoriteAction(Icons.atm, "Retrait\nd'argent"),
                  _buildFavoriteAction(
                    Icons.shopping_cart,
                    "Payer vos\nachats",
                  ),
                  _buildFavoriteAction(Icons.credit_card, "Achat de\ncrédit"),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Audio Banner
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.volume_up, color: Colors.white, size: 32),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'La liste des fêtes',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'La liste des fêtes',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Color(0xFFFF7900), size: 24),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Services Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildServiceCard(Icons.loyalty, 'OM Fidélité'),
                      _buildServiceCard(
                        Icons.account_balance,
                        'Gérer mon\nargent',
                      ),
                      _buildServiceCard(Icons.flash_on, "J'emprunte"),
                      _buildServiceCard(Icons.receipt_long, 'Factures'),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildServiceCard(
                        Icons.account_balance_wallet,
                        'Services\nFinanciers',
                      ),
                      _buildServiceCard(Icons.tv, 'Abonnement\nTV'),
                      _buildServiceCard(Icons.phone, 'Paiements\nforfaits'),
                      _buildServiceCard(Icons.more_horiz, 'Autres\nservices'),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 24),

            // Promotional Banner
            Container(
              margin: EdgeInsets.all(16),
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
                    top: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '500 million',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'à se partager toute l\'année',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          'avec Orange Money Fidelity',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            'Souscrivez via #150# ou Max it📱',
                            style: TextStyle(
                              color: Color(0xFFFF7900),
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteAction(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.black,
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

  Widget _buildServiceCard(IconData icon, String label) {
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
}

// Custom QR Code Painter (simplified pattern)
class QRCodePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final double blockSize = size.width / 8;

    // Draw simplified QR pattern
    for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
        if ((i + j) % 2 == 0) {
          canvas.drawRect(
            Rect.fromLTWH(
              i * blockSize,
              j * blockSize,
              blockSize - 2,
              blockSize - 2,
            ),
            paint,
          );
        }
      }
    }

    // Draw corner markers
    final cornerPaint = Paint()
      ..color = Color(0xFFFF7900)
      ..style = PaintingStyle.fill;

    canvas.drawRect(
      Rect.fromLTWH(0, 0, blockSize * 2, blockSize * 2),
      cornerPaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(
        size.width - blockSize * 2,
        0,
        blockSize * 2,
        blockSize * 2,
      ),
      cornerPaint,
    );
    canvas.drawRect(
      Rect.fromLTWH(
        0,
        size.height - blockSize * 2,
        blockSize * 2,
        blockSize * 2,
      ),
      cornerPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
