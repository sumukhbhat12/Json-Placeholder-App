import 'package:flutter/material.dart';
import 'package:json_app/views/album_page.dart';
import 'package:json_app/views/comments_page.dart';
import 'package:json_app/views/photos_page.dart';
import 'package:json_app/views/posts_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Column(
          children: [
            //Posts
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PostsPage(),
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.align_horizontal_left,
                      size: 80.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //Comments
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommentsPage(),
                  ),
                );
              }),
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.comment,
                      size: 80.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Comments',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //Albums
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AlbumPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.album,
                      size: 80.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Albums',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            //Photos
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhotosPage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.photo,
                      size: 80.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Photos',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
