// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
//
// class CertificateGenerator extends StatelessWidget {
//   final String className;
//   final String eventName;
//   final String year;
//   final String date;
//   final String location;
//   final String rank;
//
//   CertificateGenerator({
//     required this.className,
//     required this.eventName,
//     required this.year,
//     required this.date,
//     required this.location,
//     required this.rank,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Certificate Generator'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             generateCertificate(context);
//           },
//           child: Text('Generate Certificate'),
//         ),
//       ),
//     );
//   }
//
//   Future<void> generateCertificate(BuildContext context) async {
//     final pdf = pw.Document();
//
//     // Certificate Content
//     final content = pw.Column(
//       mainAxisAlignment: pw.MainAxisAlignment.center,
//       crossAxisAlignment: pw.CrossAxisAlignment.center,
//       children: [
//         pw.Text(className, style: pw.TextStyle(fontSize: 24, fontWeight: pw.FontWeight.bold)),
//         pw.SizedBox(height: 20),
//         pw.Text(eventName, style: pw.TextStyle(fontSize: 20)),
//         pw.SizedBox(height: 10),
//         pw.Text('Year: $year', style: pw.TextStyle(fontSize: 16)),
//         pw.Text('Date: $date', style: pw.TextStyle(fontSize: 16)),
//         pw.Text('Location: $location', style: pw.TextStyle(fontSize: 16)),
//         pw.SizedBox(height: 20),
//         pw.Text('Awarded Rank: $rank', style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold)),
//       ],
//     );
//
//     // Add content to the pdf
//     pdf.addPage(
//       pw.Page(
//         build: (pw.Context context) {
//           return pw.Center(child: content);
//         },
//       ),
//     );
//
//     // Save the pdf with the given name
//     final Uint8List pdfBytes = await pdf.save();
//     final pdfFile = pw.File('certificate_${DateTime.now().millisecondsSinceEpoch}.pdf');
//     await pdfFile.writeAsBytes(pdfBytes);
//
//     // Open the PDF using a PDF viewer
//     // You can replace 'openFile' with another method to suit your needs
//     // For example, you might want to share the PDF, upload it, or print it.
//     pdfFile.save();
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: CertificateGenerator(
//       className: 'Flutter Workshop',
//       eventName: 'Certificate of Achievement',
//       year: '2022',
//       date: 'January 15, 2022',
//       location: 'Virtual Event',
//       rank: '1st Place',
//     ),
//   ));
// }
