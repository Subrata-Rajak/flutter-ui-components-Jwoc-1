import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert10 extends StatefulWidget {
  const Alert10({super.key});

  @override
  State<Alert10> createState() => _Alert10State();
}

class _Alert10State extends State<Alert10> {
  late bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _visible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        height: 68,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Container(
                height: 68,
                width: 10,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(253, 176, 34, 1),
                    borderRadius: BorderRadius.circular(2))),
            const SizedBox(
              width: 15,
            ),
            const Icon(
              Icons.info,
              color: Color.fromRGBO(253, 176, 34, 1),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Message',
                    style: TextStyle(
                        fontFamily:
                            GoogleFonts.publicSans(fontWeight: FontWeight.w600)
                                .fontFamily,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                  Text('Description',
                      style: TextStyle(
                          fontFamily: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w400)
                              .fontFamily,
                          fontSize: 18,
                          color: const Color.fromRGBO(100, 116, 139, 1))),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _visible = !_visible;
                });
              },
              child: const Icon(
                Icons.cancel_sharp,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
