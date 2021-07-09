import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExapndMoreBtmSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("Build() - ExpandMoreBtmSheet");
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 54,
                    height: 54,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                        image: AssetImage("assets/jhanvi.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    "_jhanvi_soni_",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Center(
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14, bottom: 8),
          child: Row(
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300],
                    width: 1.2,
                  ),
                ),
                child: const Icon(CupertinoIcons.add, size: 36),
              ),
              const SizedBox(width: 12),
              const Text(
                "Add Account",
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
