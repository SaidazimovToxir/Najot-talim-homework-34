import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GetSchedules extends StatelessWidget {
  List images = [
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZFTBuJGNMSz5t32X-qsM3z4TLtEZ2pxd1B3eIg6zpt2XDh9TW",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTVpBYGi-LDf5d0dopqmRlE52XjlQVlGD_1_rNnkoQXhVP8V2t",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJRPK_GVlujKuv3v1KE-nhy2S-dqR5wWV9aLybyfbSvC0aHyZ-",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSL6qfh5M7eVaugIour-0sGCF92YRzyI1AzopSYwKUXGKSu7oAK",
  ];
  int imagesize;
  bool boolean;
  int i;
  GetSchedules(
      {required this.i,
      required this.boolean,
      required this.imagesize,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: true == boolean
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            images[i],
            cacheHeight: imagesize,
            cacheWidth: imagesize,
          ),
        ),
        const Gap(20),
        Text(
          true == boolean ? "Wedding" : "Birthday",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          true == boolean ? "03:50 Time" : "",
          style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14),
        ),
      ],
    );
  }
}
