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
  int subhanCount = 0;
  int hamdCount = 0;
  int akbarCount = 0;

  void incrementSubhan() {
    setState(() {
      subhanCount++;
    });
  }

  void incrementHamd() {
    setState(() {
      hamdCount++;
    });
  }

  void incrementAkbar() {
    setState(() {
      akbarCount++;
    });
  }



@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(
        title: Text(
          'سبحه الكترونيه',
          style: TextStyle(fontFamily: 'Arial', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('سبحان الله', style: TextStyle(fontSize: 18)),
            Text('$subhanCount', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: incrementSubhan,
              child: Text('سبحان الله'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple.shade700,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
            ),
            SizedBox(height: 20),
            Text('الحمد لله', style: TextStyle(fontSize: 18)),
            Text('$hamdCount', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: incrementHamd,
              child: Text('الحمد لله'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple.shade700,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
            ),
            SizedBox(height: 20),
            Text('الله اكبر', style: TextStyle(fontSize: 18)),
            Text('$akbarCount', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: incrementAkbar,
              child: Text('الله اكبر'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple.shade700,
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
