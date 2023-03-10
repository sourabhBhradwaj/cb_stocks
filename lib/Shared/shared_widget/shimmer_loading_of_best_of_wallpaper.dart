import 'package:cb_stocks/Shared/shared_widget/skeleton_container.dart';
import 'package:flutter/cupertino.dart';

class ShimmerLoadingOfBestOfWallpaper extends StatelessWidget {
  const ShimmerLoadingOfBestOfWallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double horizontalPadding = size.width * 0.05;
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  EdgeInsets.only(left: index == 0 ? horizontalPadding : 8.0),
              child: SkeletonContainer.rounded(
                width: MediaQuery.of(context).size.width / 2.5,
              ),
            );
          }),
    );
  }
}
