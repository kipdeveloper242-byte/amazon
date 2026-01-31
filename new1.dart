import 'package:flutter/material.dart';

class New1 extends StatefulWidget {
  const New1({super.key});

  @override
  State<New1> createState() => _New1State();
}

class _New1State extends State<New1> {
  final TextEditingController numcount = TextEditingController();
  void dialogue() {
    double num = double.tryParse(numcount.text) ?? 0.0;

    String r = '';
    if (num == 20) {
      r = 'you win';
    } else {
      r = 'you loose';
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(r),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Number Game'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.casino, size: 80, color: Colors.blue),
              SizedBox(height: 20),
              Text(
                'Enter a Number',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: TextField(
                  controller: numcount,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type here...',
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    dialogue();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Check', style: TextStyle(fontSize: 18)))
            ],
          ),
        ),
      ),
    );
  }
}
