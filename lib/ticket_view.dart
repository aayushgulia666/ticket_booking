import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_styles.dart';
import 'package:ticket_booking/widgets/circle_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,

      child: Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            /*
            Shows the blue part of the ticket.
             */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
                
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Expanded(child: Container()),
                      const CircleContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children:
                                  List.generate((constraints.constrainWidth()/6).floor(), (index) => const Text("-", style: TextStyle(color: Colors.white),),),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(angle: 1.5, child: const Icon(Icons.local_airport_rounded, color: Colors.white,),),
                          ),
                        ],
                      )),
                      const CircleContainer(),
                      Expanded(child: Container()),
                      Text("LDN", style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text("New York", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100,
                        child: Text("London", textAlign: TextAlign.end, style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*
            Shows the orange part of the ticket.
             */
            Container(
              child: Row(
                children: [
                  SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
