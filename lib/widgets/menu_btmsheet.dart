import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class MenuBtmSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - MenuBtmSheet");
    var textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
    const edgeInsets = const EdgeInsets.all(10.0);
    return Wrap(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 13, left: 13, right: 13, bottom: 10),
          child: Center(
            child: Container(
              height: 4,
              width: 38,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: const BorderRadius.horizontal(
                  left: const Radius.circular(10),
                  right: const Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/options.svg", width: 21),
                    const SizedBox(width: 15),
                    Text("Settings", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    const Icon(Icons.restore_rounded),
                    const SizedBox(width: 12),
                    Text("Archive", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    const Icon(Icons.query_stats_rounded),
                    const SizedBox(width: 12),
                    Text("Your Activity", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    const Icon(Icons.qr_code_2_outlined),
                    const SizedBox(width: 12),
                    Text("QR Code", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/save.svg", width: 21),
                    const SizedBox(width: 15),
                    Text("Saved", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    const Icon(Icons.list_rounded),
                    const SizedBox(width: 12),
                    Text("Close Friends", style: textStyle),
                  ],
                ),
              ),
              Padding(
                padding: edgeInsets,
                child: Row(
                  children: [
                    SvgPicture.asset("assets/discover_people.svg", width: 21),
                    const SizedBox(width: 15),
                    Text("Discover People", style: textStyle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
