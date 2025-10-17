import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasbeehScreen(),
    );
  }
}

class TasbeehScreen extends StatefulWidget {
  @override
  _TasbeehScreenState createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
  String subhantext = 'سبحان الله';
  String hamdtext = 'الحمد لله';
  String akbartext = 'الله أكبر';

  int subhanCount = 0;
  int hamdCount = 0;
  int akbarCount = 0;

  String displayedText = '';
  String dispalyedCount = '0';

  void incrementSubhan() {
    setState(() {
      subhanCount++;
      displayedText = subhantext;
      dispalyedCount = subhanCount.toString();
    });
  }

  void incrementHamd() {
    setState(() {
      hamdCount++;
      displayedText = hamdtext;
      dispalyedCount = hamdCount.toString();
    });
  }

  void incrementAkbar() {
    setState(() {
      akbarCount++;
      displayedText = akbartext;
      dispalyedCount = akbarCount.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: Text(
          'مسبحة إلكترونية',
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              displayedText,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Text(
              dispalyedCount,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: incrementSubhan,
                      child: Text('سبحان الله'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.purple.shade700,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25, width: 25),

                Column(
                  children: [
                    ElevatedButton(
                      onPressed: incrementHamd,
                      child: Text('الحمد لله'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.purple.shade700,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25, width: 25),

                Column(
                  children: [
                    ElevatedButton(
                      onPressed: incrementAkbar,
                      child: Text('الله أكبر'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.purple.shade700,
                        shape: StadiumBorder(),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
