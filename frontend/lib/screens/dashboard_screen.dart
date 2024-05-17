// // import 'package:autofill_frontend/widgets/navbar.dart';
// // import 'package:flutter/material.dart';
// // import 'uploaded_documents_screen.dart'; // Import the uploaded documents screen
// // import 'form_fill_screen.dart'; // Import the form fill screen

// // class DashboardScreen extends StatefulWidget {
// //   @override
  
// //   _DashboardScreenState createState() => _DashboardScreenState();
// // }

// // class _DashboardScreenState extends State<DashboardScreen>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _animationController;
// //   bool _isSidebarOpen = false;
  

// //   @override
// //   void initState() {
// //     super.initState();
// //     _animationController = AnimationController(
// //       vsync: this,
// //       duration: Duration(milliseconds: 300),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Dashboard'),
// //       ),
// //       body: Stack(
// //         children: [
// //           // Background image
// //           Container(
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage('assets/images/autofill_splash_updated.png'),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             child: Container(
// //               color: Colors.white.withOpacity(0.5),
// //             ),
// //           ),
// //           // Main content
// //           Container(
// //             color: Colors.transparent,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 // Uploaded documents container
// //                 Expanded(
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => UploadedScreen(userId: '',),
// //                         ),
// //                       );
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: Container(
// //                         margin: EdgeInsets.symmetric(horizontal: 20),
// //                         padding: EdgeInsets.all(20),
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter,
// //                             colors: [Colors.orangeAccent.withOpacity(0.8), Colors.deepOrange.withOpacity(0.8)],
// //                           ),
// //                           borderRadius: BorderRadius.circular(10),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.grey.withOpacity(0.5),
// //                               spreadRadius: 2,
// //                               blurRadius: 5,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Center(
// //                           child: Text(
// //                             'Uploaded Documents',
// //                             style: TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Form fill-up container
// //                 Expanded(
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => FormFillScreen(),
// //                         ),
// //                       );
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: Container(
// //                         margin: EdgeInsets.symmetric(horizontal: 20),
// //                         padding: EdgeInsets.all(20),
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter,
// //                             colors: [Colors.greenAccent.withOpacity(0.8), Colors.lightGreen.withOpacity(0.8)],
// //                           ),
// //                           borderRadius: BorderRadius.circular(10),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.grey.withOpacity(0.5),
// //                               spreadRadius: 2,
// //                               blurRadius: 5,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Center(
// //                           child: Text(
// //                             'Fill Up Form',
// //                             style: TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           // Sidebar
// //           AnimatedPositioned(
// //             duration: Duration(milliseconds: 300),
// //             top: 0,
// //             bottom: 0,
// //             left: _isSidebarOpen ? 0 : -200,
// //             right: _isSidebarOpen ? 0 : 0,
// //             child: Container(
// //               // color: Colors.white.withOpacity(0.7),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   SizedBox(height: 50),
// //                   Padding(
// //                     padding: EdgeInsets.symmetric(horizontal: 20),
// //                     child: Text(
// //                       'Sidebar',
// //                       style: TextStyle(
// //                         fontSize: 24,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                   ),
// //                   SizedBox(height: 20),
// //                   // Add sidebar items here
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //       bottomNavigationBar: CustomBottomNavigationBar( // Replace with custom bottom navigation bar
// //         // currentIndex: 0,
// //         // onTap: (index) {
// //         //   // Handle bottom navigation
// //         // },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Handle floating action button tap
// //         },
// //         child: Icon(Icons.add),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _animationController.dispose();
// //     super.dispose();
// //   }
// // }


// // import 'package:flutter/material.dart';
// // import 'package:autofill_frontend/widgets/navbar.dart';
// // import 'package:autofill_frontend/screens/uploaded_documents_screen.dart'; // Import the uploaded documents screen
// // import 'package:autofill_frontend/screens/form_fill_screen.dart'; // Import the form fill screen

// // class DashboardScreen extends StatelessWidget {
// //   final String token;

// //   DashboardScreen({required this.token});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Dashboard'),
// //       ),
// //       body: Stack(
// //         children: [
// //           // Background image
// //           Container(
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage('assets/images/autofill_splash_updated.png'),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             child: Container(
// //               color: Colors.white.withOpacity(0.5),
// //             ),
// //           ),
// //           // Main content
// //           Container(
// //             color: Colors.transparent,
// //             child: Column(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: [
// //                 // Uploaded documents container
// //                 Expanded(
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => UploadedScreen(userId: token, jwtToken: '',),
// //                         ),
// //                       );
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: Container(
// //                         margin: EdgeInsets.symmetric(horizontal: 20),
// //                         padding: EdgeInsets.all(20),
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter,
// //                             colors: [Colors.orangeAccent.withOpacity(0.8), Colors.deepOrange.withOpacity(0.8)],
// //                           ),
// //                           borderRadius: BorderRadius.circular(10),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.grey.withOpacity(0.5),
// //                               spreadRadius: 2,
// //                               blurRadius: 5,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Center(
// //                           child: Text(
// //                             'Uploaded Documents',
// //                             style: TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 SizedBox(height: 20),
// //                 // Form fill-up container
// //                 Expanded(
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => FormFillScreen(),
// //                         ),
// //                       );
// //                     },
// //                     child: Padding(
// //                       padding: const EdgeInsets.all(20.0),
// //                       child: Container(
// //                         margin: EdgeInsets.symmetric(horizontal: 20),
// //                         padding: EdgeInsets.all(20),
// //                         decoration: BoxDecoration(
// //                           gradient: LinearGradient(
// //                             begin: Alignment.topCenter,
// //                             end: Alignment.bottomCenter,
// //                             colors: [Colors.greenAccent.withOpacity(0.8), Colors.lightGreen.withOpacity(0.8)],
// //                           ),
// //                           borderRadius: BorderRadius.circular(10),
// //                           boxShadow: [
// //                             BoxShadow(
// //                               color: Colors.grey.withOpacity(0.5),
// //                               spreadRadius: 2,
// //                               blurRadius: 5,
// //                               offset: Offset(0, 3),
// //                             ),
// //                           ],
// //                         ),
// //                         child: Center(
// //                           child: Text(
// //                             'Fill Up Form',
// //                             style: TextStyle(
// //                               fontSize: 18,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           // Sidebar
// //           // AnimatedPositioned(
// //           //   duration: Duration(milliseconds: 300),
// //           //   top: 0,
// //           //   bottom: 0,
// //           //   left: 0,
// //           //   right: 0,
// //           //   child: Container(
// //           //     child: Column(
// //           //       crossAxisAlignment: CrossAxisAlignment.start,
// //           //       children: [
// //           //         SizedBox(height: 50),
// //           //         Padding(
// //           //           padding: EdgeInsets.symmetric(horizontal: 20),
// //           //           child: Text(
// //           //             // 'Sidebar',
// //           //             style: TextStyle(
// //           //               fontSize: 24,
// //           //               fontWeight: FontWeight.bold,
// //           //               color: Colors.black,
// //           //             ),
// //           //           ),
// //           //         ),
// //           //         SizedBox(height: 20),
// //           //         // Add sidebar items here
// //           //       ],
// //           //     ),
// //           //   ),
// //           // ),
// //         ],
// //       ),
// //       bottomNavigationBar: CustomBottomNavigationBar( // Replace with custom bottom navigation bar
// //         // currentIndex: 0,
// //         // onTap: (index) {
// //         //   // Handle bottom navigation
// //         // },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           // Handle floating action button tap
// //         },
// //         child: Icon(Icons.add),
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:autofill_frontend/widgets/navbar.dart';
// import 'package:autofill_frontend/screens/uploaded_documents_screen.dart'; // Import the uploaded documents screen
// import 'package:autofill_frontend/screens/form_fill_screen.dart'; // Import the form fill screen

// class DashboardScreen extends StatelessWidget {
//   final String token;

//   DashboardScreen({required this.token});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       body: Stack(
//         children: [
//           // Background image
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/autofill_splash_updated.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Container(
//               color: Colors.white.withOpacity(0.5),
//             ),
//           ),
//           // Main content
//           Container(
//             color: Colors.transparent,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Uploaded documents container
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => UploadedScreen(userId: token, jwtToken: '',),
//                         ),
//                       );
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: 20),
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [Colors.orangeAccent.withOpacity(0.8), Colors.deepOrange.withOpacity(0.8)],
//                           ),
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 2,
//                               blurRadius: 5,
//                               offset: Offset(0, 3),
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Uploaded Documents',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Form fill-up container
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => FormFillScreen(),
//                         ),
//                       );
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.all(20.0),
//                       child: Container(
//                         margin: EdgeInsets.symmetric(horizontal: 20),
//                         padding: EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [Colors.greenAccent.withOpacity(0.8), Colors.lightGreen.withOpacity(0.8)],
//                           ),
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 2,
//                               blurRadius: 5,
//                               offset: Offset(0, 3),
//                             ),
//                           ],
//                         ),
//                         child: Center(
//                           child: Text(
//                             'Fill Up Form',
//                             style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar( // Replace with custom bottom navigation bar
//         // currentIndex: 0,
//         // onTap: (index) {
//         //   // Handle bottom navigation
//         // },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Handle floating action button tap
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:frontend/screens/form_fill_screen.dart';
import 'package:frontend/screens/uploaded_documents_screen.dart';
import 'package:frontend/widgets/navbar.dart'; // Import the form fill screen

class DashboardScreen extends StatelessWidget {
  final String token;
  final String userId; // Define userId parameter

  DashboardScreen({required this.token, required this.userId}); // Update constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/autofill_splash_updated.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.white.withOpacity(0.5),
            ),
          ),
          // Main content
          Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Uploaded documents container
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadedScreen(userId: userId, jwtToken: token),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.orangeAccent.withOpacity(0.8), Colors.deepOrange.withOpacity(0.8)],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Uploaded Documents',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Form fill-up container
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormFillScreen(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.greenAccent.withOpacity(0.8), Colors.lightGreen.withOpacity(0.8)],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Fill Up Form',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar( // Replace with custom bottom navigation bar
        // currentIndex: 0,
        // onTap: (index) {
        //   // Handle bottom navigation
        // },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle floating action button tap
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
