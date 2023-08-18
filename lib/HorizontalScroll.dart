import 'package:flutter/material.dart';

class HorizontalScroll extends StatelessWidget {
  HorizontalScroll({super.key});
  final List _contents = ['content 1', 'content 2', 'content 3', 'content 4'];
  final List _images = ['cat1.jpg', 'cat2.jpg', 'cat3.jpg', 'cat4.jpg'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal Scroll'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _contents.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 200,
                      child: Center(
                        child: Text(
                          _contents[index],
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      color: Colors.indigo,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _contents.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      Container(
                        height: 200,
                        width: 200,
                        child: 
                          Image.asset('assets/${_images[index]}',
                          fit: BoxFit.cover,
                        )
                        
                      ),
                    
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
