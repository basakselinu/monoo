import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Yardim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xffd78cf2),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Yardım",
          style: GoogleFonts.playfairDisplay(
            fontSize: 30.0,
            color: Colors.brown[900],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Ürün için beden değişimi yapabilir miyim?",
                  style: TextStyle(
                    color: Color(0xffd78cf2),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1.5,
            ),
            Text(
              """• Satılan ürünlerin sınırlı sayıda stoğu olmasından dolayı değişim sürecimiz yoktur.
• Elinizdeki ürünü hiçbir ücret ödemeden iade ederek size uygun bedeni/numarayı yeniden sipariş verebilirsiniz.
• İade işlemleri için “İade işlemini nasıl yapabilirim?” bölümündeki adımları izleyin.""",

              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              children: <Widget>[
                Text(
                  "İade politikanız nedir?",
                  style: TextStyle(
                    color: Color(0xffd78cf2),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1.5,
            ),
            Text(
             """• İade süresi ürün elinize ulaştığından itibaren 15 gündür.
• Ürünlerinizi ÜCRETSİZ iade edebilmek için iade kargo kodu almanız gerekir. İade kargo kodu almak için “Aldığım ürünleri nasıl iade edebilirim?” sorusundaki adımları takip edin.
• Ürünlerinizi iade adımında gösterilen kargo firması ile iade edebilirsiniz.""",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50.0),
            Row(
              children: <Widget>[
                Text(
                  "Aldığım ürünleri nasıl iade edebilirim?",
                  style: TextStyle(
                    color: Color(0xffd78cf2),
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 1.5,
            ),
            Text(
              """• İade adımları:
  1. Uygulamalada menü kısmında yer alan “Siparişlerim'e“ gidin.
  2. “Detaylar” butonuna basın ve siparişinizin detaylarını görüntüleyin.
  3. İade edilecek ürün ve iade nedeni seçin. 
  4. İade edilecek ürünler ile birlikte faturayı tek bir pakete koyun.Ve kargo şubesiyle yollayın.""",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
