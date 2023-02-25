import 'dart:developer';
import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:sizer/sizer.dart';
import 'package:video_call_app02/view/home/swipe%20card/buttons.dart';
import 'package:video_call_app02/view/home/swipe%20card/candidate_model.dart';
import 'package:video_call_app02/view/home/swipe%20card/card.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({
    Key? key,
  }) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenPageState();
}

class _Home_screenPageState extends State<Home_screen> {
  final AppinioSwiperController controller = AppinioSwiperController();

  List<Home_screenCard> cards = [];

  @override
  void initState() {

    super.initState();
     _loadCards();
  }

  void _loadCards() {
    for (Home_screenCandidateModel candidate in candidates) {
      cards.add(
        Home_screenCard(
          candidate: candidate,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height:75.h,
            width: 93.w,
            child: AppinioSwiper(
              unlimitedUnswipe: true,
              controller: controller,
              unswipe: _unswipe,
              cards: cards,
              onSwipe: _swipe,

            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 80,
              ),
              swipeLeftButton(controller),
              const SizedBox(
                width: 20,
              ),
              swipeRightButton(controller),
              const SizedBox(
                width: 20,
              ),
              unswipeButton(controller),
            ],
          )
        ],
      ),
    );
  }

  void _swipe(int index, AppinioSwiperDirection direction) {
    log("the card was swiped to the: " + direction.name);
  }

  void _unswipe(bool unswiped) {
    if (unswiped) {
      log("SUCCESS: card was unswiped");
    } else {
      log("FAIL: no card left to unswipe");
    }
  }
}
