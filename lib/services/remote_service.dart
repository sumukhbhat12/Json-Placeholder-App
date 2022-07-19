import 'package:json_app/models/album.dart';
import 'package:json_app/models/comments.dart';
import 'package:json_app/models/photos.dart';

import '../models/post.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  var uri2 = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  var uri3 = Uri.parse('https://jsonplaceholder.typicode.com/albums');
  var uri4 = Uri.parse('https://jsonplaceholder.typicode.com/photos');

  Future<List<Post>?> getPosts() async {
    var client = http.Client();
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    } else {
      return null;
    }
  }

  Future<List<Comments>?> getComments() async {
    var client = http.Client();
    var response = await client.get(uri2);
    if (response.statusCode == 200) {
      var json = response.body;
      return commentsFromJson(json);
    } else {
      return null;
    }
  }

  Future<List<Album>?> getAlbums() async {
    var client = http.Client();
    var response = await client.get(uri3);
    if (response.statusCode == 200) {
      var json = response.body;
      return albumFromJson(json);
    } else {
      return null;
    }
  }

  Future<List<Photos>?> getPhotos() async {
    var client = http.Client();
    var response = await client.get(uri4);
    if (response.statusCode == 200) {
      var json = response.body;
      return photosFromJson(json);
    } else {
      return null;
    }
  }
}
