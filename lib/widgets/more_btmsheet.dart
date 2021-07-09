import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoreBtmSheet extends StatelessWidget {
  final String id;

  const MoreBtmSheet({this.id});

  @override
  Widget build(BuildContext context) {
    print("Build() - MoreBtmSheet");
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: edgeInsets,
                child: Text("Report...", style: textStyle),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Turn on Post Notifications", style: textStyle),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: GestureDetector(
                  child: Text("Copy Link", style: textStyle),
                  onTap: () async {
                    await Clipboard.setData(
                      ClipboardData(
                        text: 'https://instagram-byjhanvi.web.app/#/p/$id',
                      ),
                    ).then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text("Link Copied"),
                          behavior: SnackBarBehavior.floating,
                          duration: const Duration(seconds: 2),
                        ),
                      );
                      Navigator.pop(context);
                    });
                  },
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Share to...", style: textStyle),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Unfollow", style: textStyle),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: edgeInsets,
                child: Text("Mute", style: textStyle),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
