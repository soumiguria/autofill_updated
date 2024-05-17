// import 'package:autofill_frontend/screens/dashboard_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController fullNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   Future<void> signUp(BuildContext context) async {
//     final url = 'http://192.168.29.73:5000/api/users/register'; // Replace with your backend URL
//     final response = await http.post(
//       Uri.parse(url),
//       body: json.encode({
//         'username': fullNameController.text,
//         'email': emailController.text,
//         'password': passwordController.text,
//       }),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 201) {
//       // Registration successful, navigate to dashboard or login screen
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => DashboardScreen(token: json.decode(response.body)['token'],)),
//       );
//     } else {
//       // Registration failed, display error message
//       final responseData = json.decode(response.body);
//       final errorMessage = responseData['message'];
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Sign Up Failed'),
//           content: Text(errorMessage),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Image.asset(
//             'assets/images/autofill_splash_updated.png',
//             fit: BoxFit.cover,
//           ),
//           Container(
//             color: Colors.white.withOpacity(0.7),
//           ),
//           Center(
//             child: Card(
//               margin: EdgeInsets.symmetric(horizontal: 20),
//               color: Colors.white,
//               elevation: 8,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(20),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       controller: fullNameController,
//                       decoration: InputDecoration(
//                         labelText: 'Full Name',
//                         prefixIcon: Icon(Icons.person),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       controller: emailController,
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         prefixIcon: Icon(Icons.email),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       controller: passwordController,
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         prefixIcon: Icon(Icons.lock),
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       obscureText: true,
//                     ),
//                     SizedBox(height: 20),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 60,
//                       child: ElevatedButton(
//                         onPressed: () => signUp(context),
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Colors.greenAccent,
//                           shape: RoundedRectangleBorder(
//                             side: BorderSide(color: Colors.greenAccent, width: 1),
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           padding: EdgeInsets.all(16),
//                         ),
//                         child: Text(
//                           'Sign Up',
//                           style: TextStyle(fontSize: 18),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:frontend/screens/dashboard_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// class SignUpScreen extends StatelessWidget {
//   final TextEditingController fullNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   Future<void> signUp(BuildContext context) async {
//     final url = 'http://192.168.29.73:5000/api/users/register'; // Replace with your backend URL
//     final response = await http.post(
//       Uri.parse(url),
//       body: json.encode({
//         'username': fullNameController.text,
//         'email': emailController.text,
//         'password': passwordController.text,
//       }),
//       headers: {'Content-Type': 'application/json'},
//     );

//     if (response.statusCode == 201) {
//       // Registration successful, navigate to dashboard screen
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context) => DashboardScreen(token: json.decode(response.body)['token'])),
//       );
//     } else {
//       // Registration failed, display error message
//       final responseData = json.decode(response.body);
//       final errorMessage = responseData['message'];
//       showDialog(
//         context: context,
//         builder: (context) => AlertDialog(
//           title: Text('Sign Up Failed'),
//           content: Text(errorMessage),
//           actions: [
//             TextButton(
//               onPressed: () => Navigator.pop(context),
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

class SignUpScreen extends StatelessWidget {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUp(BuildContext context) async {
    final url = 'http://192.168.137.23:5000/api/users/register';
    final response = await http.post(
      Uri.parse(url),
      body: json.encode({
        'username': fullNameController.text,
        'email': emailController.text,
        'password': passwordController.text,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 201) {
      final responseData = json.decode(response.body);
      final token = responseData['token']; // Extract token
      final userId = responseData['userId']; // Extract userId
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen(token: token, userId: userId)),
      );
    } else {
      final responseData = json.decode(response.body);
      final errorMessage = responseData['message'];
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Sign Up Failed'),
          content: Text(errorMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/autofill_splash_updated.png',
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.white.withOpacity(0.7),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: fullNameController,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () => signUp(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(16),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
