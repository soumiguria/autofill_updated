// // // // import 'package:autofill_frontend/widgets/navbar.dart';
// // // // import 'package:file_picker/file_picker.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:http/http.dart' as http;
// // // // import 'dart:convert';
// // // // import 'dart:io';

// // // // class UploadedScreen extends StatefulWidget {
// // // //   final String userId;

// // // //   UploadedScreen({required this.userId});

// // // //   @override
// // // //   _UploadedScreenState createState() => _UploadedScreenState();
// // // // }

// // // // class _UploadedScreenState extends State<UploadedScreen> {
// // // //   List<File> _documents = [];

// // // //   Future<void> _pickFiles() async {
// // // //     FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // // //     if (result != null) {
// // // //       setState(() {
// // // //         _documents = result.paths.map((path) => File(path!)).toList();
// // // //       });
// // // //     }
// // // //   }

// // // //   Future<void> _uploadFiles() async {
// // // //     var request = http.MultipartRequest('POST', Uri.parse('http://<your-server-url>/api/forms/fill'));
// // // //     request.headers['Authorization'] = 'Bearer <your_jwt_token>'; // Replace with actual JWT token

// // // //     request.fields['formName'] = 'Sample Form';
// // // //     request.fields['userId'] = widget.userId;

// // // //     for (File file in _documents) {
// // // //       request.files.add(await http.MultipartFile.fromPath('documents', file.path));
// // // //     }

// // // //     var response = await request.send();

// // // //     if (response.statusCode == 201) {
// // // //       print('Files uploaded successfully');
// // // //     } else {
// // // //       print('Failed to upload files');
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: Text('Uploaded Documents'),
// // // //       ),
// // // //       body: Stack(
// // // //         children: [
// // // //           // Background image with covering
// // // //           Container(
// // // //             decoration: BoxDecoration(
// // // //               image: DecorationImage(
// // // //                 image: AssetImage('assets/images/autofill_splash_updated.png'), // Replace with your image path
// // // //                 fit: BoxFit.cover,
// // // //               ),
// // // //             ),
// // // //           ),
// // // //           // White covering
// // // //           Container(
// // // //             color: Colors.white.withOpacity(0.7), // Adjust opacity as needed
// // // //           ),
// // // //           // Documents list
// // // //           Container(
// // // //             margin: EdgeInsets.only(top: 20), // Adjust margin as needed
// // // //             child: ListView.builder(
// // // //               itemCount: _documents.length,
// // // //               itemBuilder: (context, index) {
// // // //                 return Card(
// // // //                   elevation: 5,
// // // //                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// // // //                   child: ListTile(
// // // //                     contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// // // //                     title: Text(
// // // //                       'Document ${index + 1}',
// // // //                       style: TextStyle(
// // // //                         fontSize: 18,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                     subtitle: Text(
// // // //                       _documents[index].path.split('/').last,
// // // //                       style: TextStyle(
// // // //                         fontSize: 14,
// // // //                       ),
// // // //                     ),
// // // //                     trailing: Icon(Icons.arrow_forward_ios),
// // // //                   ),
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //           // Upload Button
// // // //           Align(
// // // //             alignment: Alignment.bottomCenter,
// // // //             child: Padding(
// // // //               padding: const EdgeInsets.all(16.0),
// // // //               child: ElevatedButton(
// // // //                 onPressed: _uploadFiles,
// // // //                 child: Text('Upload Documents'),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //       floatingActionButton: FloatingActionButton(
// // // //         onPressed: _pickFiles,
// // // //         child: Icon(Icons.add),
// // // //       ),
// // // //       bottomNavigationBar: CustomBottomNavigationBar(
// // // //         // userId: widget.userId, // Pass userId to the custom bottom navigation bar
// // // //       ),
// // // //     );
// // // //   }
// // // // }


// // // import 'dart:convert';
// // // import 'dart:io';

// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'package:autofill_frontend/widgets/navbar.dart';
// // // import 'package:file_picker/file_picker.dart';
// // // import 'package:autofill_frontend/screens/dashboard_screen.dart';

// // // class UploadedScreen extends StatefulWidget {
// // //   final String userId;

// // //   UploadedScreen({required this.userId});

// // //   @override
// // //   _UploadedScreenState createState() => _UploadedScreenState();
// // // }

// // // class _UploadedScreenState extends State<UploadedScreen> {
// // //   List<Map<String, dynamic>> _documents = [];

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _fetchDocuments();
// // //   }

// // //   Future<void> _fetchDocuments() async {
// // //     final url = 'http://192.168.29.73:5000/api/documents/${widget.userId}';
// // //     final response = await http.get(
// // //       Uri.parse(url),
// // //       headers: {
// // //         'Authorization': 'Bearer ${widget.userId}',
// // //       },
// // //     );

// // //     if (response.statusCode == 200) {
// // //       setState(() {
// // //         _documents = List<Map<String, dynamic>>.from(json.decode(response.body));
// // //       });
// // //     } else {
// // //       print('Failed to fetch documents');
// // //     }
// // //   }

// // //   Future<void> _pickFiles() async {
// // //     FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

// // //     if (result != null) {
// // //       setState(() {
// // //         _documents.addAll(result.paths.map((path) => {'file': File(path!), 'name': path.split('/').last}).toList());
// // //       });
// // //     }
// // //   }

// // //   Future<void> _uploadFiles() async {
// // //     for (var doc in _documents) {
// // //       if (doc['file'] != null) {
// // //         var request = http.MultipartRequest('POST', Uri.parse('http://192.168.29.73:5000/api/documents'));
// // //         request.headers['Authorization'] = 'Bearer ${widget.userId}';

// // //         request.fields['userId'] = widget.userId;
// // //         request.fields['documentName'] = doc['name'];
// // //         request.files.add(await http.MultipartFile.fromPath('documentName', doc['file'].path));

// // //         var response = await request.send();

// // //         if (response.statusCode == 201) {
// // //           print('File uploaded successfully');
// // //         } else {
// // //           print('Failed to upload file');
// // //         }
// // //       }
// // //     }
// // //     _fetchDocuments();
// // //   }

// // //   Future<void> _deleteDocument(String documentId) async {
// // //     final url = 'http://192.168.29.73:5000/api/documents/$documentId';
// // //     final response = await http.delete(
// // //       Uri.parse(url),
// // //       headers: {
// // //         'Authorization': 'Bearer ${widget.userId}',
// // //       },
// // //     );

// // //     if (response.statusCode == 200) {
// // //       setState(() {
// // //         _documents.removeWhere((doc) => doc['id'] == documentId);
// // //       });
// // //     } else {
// // //       print('Failed to delete document');
// // //     }
// // //   }

// // //   void _viewDocument(String filePath) {
// // //     // Implement the logic to view the document
// // //     // You might need to use a PDF viewer or an image viewer plugin
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: Text('Uploaded Documents'),
// // //       ),
// // //       body: Stack(
// // //         children: [
// // //           // Background image with covering
// // //           Container(
// // //             decoration: BoxDecoration(
// // //               image: DecorationImage(
// // //                 image: AssetImage('assets/images/autofill_splash_updated.png'), // Replace with your image path
// // //                 fit: BoxFit.cover,
// // //               ),
// // //             ),
// // //           ),
// // //           // White covering
// // //           Container(
// // //             color: Colors.white.withOpacity(0.7), // Adjust opacity as needed
// // //           ),
// // //           // Documents list
// // //           Container(
// // //             margin: EdgeInsets.only(top: 20), // Adjust margin as needed
// // //             child: ListView.builder(
// // //               itemCount: _documents.length,
// // //               itemBuilder: (context, index) {
// // //                 var doc = _documents[index];
// // //                 return Card(
// // //                   elevation: 5,
// // //                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// // //                   child: ListTile(
// // //                     contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// // //                     title: Text(
// // //                       doc['name'] ?? 'Document ${index + 1}',
// // //                       style: TextStyle(
// // //                         fontSize: 18,
// // //                         fontWeight: FontWeight.bold,
// // //                       ),
// // //                     ),
// // //                     subtitle: doc['file'] != null
// // //                         ? Text(
// // //                             doc['file'].path.split('/').last,
// // //                             style: TextStyle(
// // //                               fontSize: 14,
// // //                             ),
// // //                           )
// // //                         : null,
// // //                     trailing: Row(
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         IconButton(
// // //                           icon: Icon(Icons.delete),
// // //                           onPressed: () => _deleteDocument(doc['id']),
// // //                         ),
// // //                         IconButton(
// // //                           icon: Icon(Icons.open_in_new),
// // //                           onPressed: () => _viewDocument(doc['file']?.path ?? ''),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //           // Upload Button
// // //           Align(
// // //             alignment: Alignment.bottomCenter,
// // //             child: Padding(
// // //               padding: const EdgeInsets.all(16.0),
// // //               child: ElevatedButton(
// // //                 onPressed: _uploadFiles,
// // //                 child: Text('Upload Documents'),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //       floatingActionButton: FloatingActionButton(
// // //         onPressed: _pickFiles,
// // //         child: Icon(Icons.add),
// // //       ),
// // //       bottomNavigationBar: CustomBottomNavigationBar(),
// // //     );
// // //   }
// // // }


// // import 'dart:convert';
// // import 'dart:io';

// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:file_picker/file_picker.dart';
// // import 'package:autofill_frontend/widgets/navbar.dart';

// // class UploadedScreen extends StatefulWidget {
// //   final String userId;

// //   UploadedScreen({required this.userId});

// //   @override
// //   _UploadedScreenState createState() => _UploadedScreenState();
// // }

// // class _UploadedScreenState extends State<UploadedScreen> {
// //   List<Map<String, dynamic>> _documents = [];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _fetchDocuments();
// //   }

// //   Future<void> _fetchDocuments() async {
// //     final url = 'http://192.168.29.73:5000/api/documents/${widget.userId}';
// //     final response = await http.get(
// //       Uri.parse(url),
// //       headers: {
// //         'Authorization': 'Bearer <your_jwt_token>', // Replace with actual JWT token
// //       },
// //     );

// //     if (response.statusCode == 200) {
// //       setState(() {
// //         _documents = List<Map<String, dynamic>>.from(json.decode(response.body));
// //       });
// //     } else {
// //       print('Failed to fetch documents');
// //     }
// //   }

// //   Future<void> _pickFiles() async {
// //     FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

// //     if (result != null) {
// //       setState(() {
// //         _documents.addAll(result.paths.map((path) => {'file': File(path!), 'name': path!.split('/').last}).toList());
// //       });
// //     }
// //   }

// //   Future<void> _uploadFiles() async {
// //     for (var doc in _documents) {
// //       if (doc['file'] != null) {
// //         var request = http.MultipartRequest('POST', Uri.parse('http://192.168.29.73:5000/api/documents'));
// //         request.headers['Authorization'] = 'Bearer <your_jwt_token>'; // Replace with actual JWT token

// //         request.fields['userId'] = widget.userId;
// //         request.fields['documentName'] = doc['name'];
// //         request.files.add(await http.MultipartFile.fromPath('document', doc['file'].path));

// //         var response = await request.send();

// //         if (response.statusCode == 201) {
// //           print('File uploaded successfully');
// //         } else {
// //           print('Failed to upload file');
// //         }
// //       }
// //     }
// //     _fetchDocuments();
// //   }

// //   Future<void> _deleteDocument(String documentId) async {
// //     final url = 'http://192.168.29.73:5000/api/documents/$documentId';
// //     final response = await http.delete(
// //       Uri.parse(url),
// //       headers: {
// //         'Authorization': 'Bearer <your_jwt_token>', // Replace with actual JWT token
// //       },
// //     );

// //     if (response.statusCode == 200) {
// //       setState(() {
// //         _documents.removeWhere((doc) => doc['id'] == documentId);
// //       });
// //     } else {
// //       print('Failed to delete document');
// //     }
// //   }

// //   void _viewDocument(String filePath) {
// //     // Implement the logic to view the document
// //     // You might need to use a PDF viewer or an image viewer plugin
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Uploaded Documents'),
// //       ),
// //       body: Stack(
// //         children: [
// //           // Background image with covering
// //           Container(
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage('assets/images/autofill_splash_updated.png'), // Replace with your image path
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //           ),
// //           // White covering
// //           Container(
// //             color: Colors.white.withOpacity(0.7), // Adjust opacity as needed
// //           ),
// //           // Documents list
// //           Container(
// //             margin: EdgeInsets.only(top: 20), // Adjust margin as needed
// //             child: ListView.builder(
// //               itemCount: _documents.length,
// //               itemBuilder: (context, index) {
// //                 var doc = _documents[index];
// //                 return Card(
// //                   elevation: 5,
// //                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
// //                   child: ListTile(
// //                     contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                     title: Text(
// //                       doc['name'] ?? 'Document ${index + 1}',
// //                       style: TextStyle(
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.bold,
// //                       ),
// //                     ),
// //                     subtitle: doc['file'] != null
// //                         ? Text(
// //                             doc['file'].path.split('/').last,
// //                             style: TextStyle(
// //                               fontSize: 14,
// //                             ),
// //                           )
// //                         : null,
// //                     trailing: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         IconButton(
// //                           icon: Icon(Icons.delete),
// //                           onPressed: () => _deleteDocument(doc['id']),
// //                         ),
// //                         IconButton(
// //                           icon: Icon(Icons.open_in_new),
// //                           onPressed: () => _viewDocument(doc['file']?.path ?? ''),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           // Upload Button
// //           Align(
// //             alignment: Alignment.bottomCenter,
// //             child: Padding(
// //               padding: const EdgeInsets.all(16.0),
// //               child: ElevatedButton(
// //                 onPressed: _uploadFiles,
// //                 child: Text('Upload Documents'),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _pickFiles,
// //         child: Icon(Icons.add),
// //       ),
// //       bottomNavigationBar: CustomBottomNavigationBar(),
// //     );
// //   }
// // }


// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:file_picker/file_picker.dart';
// import 'package:autofill_frontend/widgets/navbar.dart';

// class UploadedScreen extends StatefulWidget {
//   final String userId;

//   UploadedScreen({required this.userId});

//   @override
//   _UploadedScreenState createState() => _UploadedScreenState();
// }

// class _UploadedScreenState extends State<UploadedScreen> {
//   List<Map<String, dynamic>> _documents = [];

//   @override
//   void initState() {
//     super.initState();
//     _fetchDocuments();
//   }

//   Future<void> _fetchDocuments() async {
//     final url = 'http://192.168.29.73:5000/api/documents/${widget.userId}';
//     final response = await http.get(
//       Uri.parse(url),
//       headers: {
//         'Authorization': 'Bearer <your_jwt_token>', // Replace with actual JWT token
//       },
//     );

//     if (response.statusCode == 200) {
//       setState(() {
//         _documents = List<Map<String, dynamic>>.from(json.decode(response.body));
//       });
//     } else {
//       print('Failed to fetch documents');
//     }
//   }

//   Future<void> _pickFiles() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

//     if (result != null) {
//       setState(() {
//         _documents.addAll(result.paths.map((path) => {'file': File(path!), 'name': path!.split('/').last}).toList());
//       });
//     }
//   }

//   Future<void> _uploadFiles() async {
//     for (var doc in _documents) {
//       if (doc['file'] != null) {
//         var request = http.MultipartRequest('POST', Uri.parse('http://192.168.29.73:5000/api/documents'));
//         request.headers['Authorization'] = 'Bearer <your_jwt_token>'; // Replace with actual JWT token

//         request.fields['userId'] = widget.userId;
//         request.fields['documentName'] = doc['name'];
//         request.files.add(await http.MultipartFile.fromPath('document', doc['file'].path));

//         var response = await request.send();

//         if (response.statusCode == 201) {
//           print('File uploaded successfully');
//         } else {
//           print('Failed to upload file');
//         }
//       }
//     }
//     _fetchDocuments();
//   }

//   Future<void> _deleteDocument(String documentId) async {
//     final url = 'http://192.168.29.73:5000/api/documents/$documentId';
//     final response = await http.delete(
//       Uri.parse(url),
//       headers: {
//         'Authorization': 'Bearer <your_jwt_token>', // Replace with actual JWT token
//       },
//     );

//     if (response.statusCode == 200) {
//       setState(() {
//         _documents.removeWhere((doc) => doc['id'] == documentId);
//       });
//     } else {
//       print('Failed to delete document');
//     }
//   }

//   void _viewDocument(String filePath) {
//     // Implement the logic to view the document
//     // You might need to use a PDF viewer or an image viewer plugin
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Uploaded Documents'),
//       ),
//       body: Stack(
//         children: [
//           // Background image with covering
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/autofill_splash_updated.png'), // Replace with your image path
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           // White covering
//           Container(
//             color: Colors.white.withOpacity(0.7), // Adjust opacity as needed
//           ),
//           // Documents list
//           Container(
//             margin: EdgeInsets.only(top: 20), // Adjust margin as needed
//             child: ListView.builder(
//               itemCount: _documents.length,
//               itemBuilder: (context, index) {
//                 var doc = _documents[index];
//                 return Card(
//                   elevation: 5,
//                   margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//                   child: ListTile(
//                     contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//                     title: Text(
//                       doc['name'] ?? 'Document ${index + 1}',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     subtitle: doc['file'] != null
//                         ? Text(
//                             doc['file'].path.split('/').last,
//                             style: TextStyle(
//                               fontSize: 14,
//                             ),
//                           )
//                         : null,
//                     trailing: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         IconButton(
//                           icon: Icon(Icons.delete),
//                           onPressed: () => _deleteDocument(doc['id']),
//                         ),
//                         IconButton(
//                           icon: Icon(Icons.open_in_new),
//                           onPressed: () => _viewDocument(doc['file']?.path ?? ''),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // Upload Button
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: ElevatedButton(
//                 onPressed: _uploadFiles,
//                 child: Text('Upload Documents'),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _pickFiles,
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(),
//     );
//   }
// }


import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:frontend/widgets/navbar.dart';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';

class UploadedScreen extends StatefulWidget {
  final String userId;
  final String jwtToken; // Include jwtToken

  UploadedScreen({required this.userId, required this.jwtToken});

  @override
  _UploadedScreenState createState() => _UploadedScreenState();
}

class _UploadedScreenState extends State<UploadedScreen> {
  List<Map<String, dynamic>> _documents = [];

  @override
  void initState() {
    super.initState();
    _fetchDocuments();
  }

  Future<void> _fetchDocuments() async {
    final url = 'http://192.168.29.73:5000/api/documents/${widget.userId}';
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${widget.jwtToken}', // Use jwtToken here
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        _documents = List<Map<String, dynamic>>.from(json.decode(response.body));
      });
    } else {
      print('Failed to fetch documents');
    }
  }

  Future<void> _pickFiles() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      setState(() {
        _documents.addAll(result.paths.map((path) => {'file': File(path!), 'name': path!.split('/').last}).toList());
      });
    }
  }

  Future<void> _uploadFiles() async {
    for (var doc in _documents) {
      if (doc['file'] != null) {
        var request = http.MultipartRequest('POST', Uri.parse('http://192.168.29.73:5000/api/documents'));
        request.headers['Authorization'] = 'Bearer ${widget.jwtToken}'; // Use jwtToken here

        request.fields['userId'] = widget.userId;
        request.fields['documentName'] = doc['name'];
        request.files.add(await http.MultipartFile.fromPath('document', doc['file'].path));

        var response = await request.send();

        if (response.statusCode == 201) {
          print('File uploaded successfully');
        } else {
          print('Failed to upload file');
        }
      }
    }
    _fetchDocuments();
  }

  Future<void> _deleteDocument(String documentId) async {
    final url = 'http://192.168.137.23:5000/api/documents/$documentId';
    final response = await http.delete(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer ${widget.jwtToken}', // Use jwtToken here
      },
    );

    if (response.statusCode == 200) {
      setState(() {
        _documents.removeWhere((doc) => doc['id'] == documentId);
      });
    } else {
      print('Failed to delete document');
    }
  }

  void _viewDocument(String filePath) {
    // Implement the logic to view the document
    // You might need to use a PDF viewer or an image viewer plugin
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Uploaded Documents'),
      ),
      body: Stack(
        children: [
          // Background image with covering
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/autofill_splash_updated.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // White covering
          Container(
            color: Colors.white.withOpacity(0.7), // Adjust opacity as needed
          ),
          // Documents list
          Container(
            margin: EdgeInsets.only(top: 20), // Adjust margin as needed
            child: ListView.builder(
              itemCount: _documents.length,
              itemBuilder: (context, index) {
                var doc = _documents[index];
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    title: Text(
                      doc['name'] ?? 'Document ${index + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: doc['file'] != null
                        ? Text(
                            doc['file'].path.split('/').last,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                        : null,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => _deleteDocument(doc['id']),
                        ),
                        IconButton(
                          icon: Icon(Icons.open_in_new),
                          onPressed: () => _viewDocument(doc['file']?.path ?? ''),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Upload Button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _uploadFiles,
                child: Text('Upload Documents'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _pickFiles,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
