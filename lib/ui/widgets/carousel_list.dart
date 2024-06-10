import 'package:flutter/material.dart';

import '../../theme/sizes.dart';
import 'project_card.dart';

class CarouselList extends StatefulWidget {
  const CarouselList({super.key});

  @override
  State<CarouselList> createState() => CarouselStateList();
}

class CarouselStateList extends State<CarouselList> {
  bool showScrollButton = true;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Padding(
        padding: Sizes.s16.padX,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ListView.builder(
                itemCount: 5,
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) => Padding(
                  padding: Sizes.s10.padX,
                  // child: const ProjectCard(),
                ),
              ),
            ),
            if (showScrollButton)
              Positioned(
                top: 0,
                bottom: 0,
                right: -16,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      final width = MediaQuery.sizeOf(context).width;
                      final newPosition = scrollController.offset + width / 2;

                      scrollController.animateTo(
                        newPosition,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn,
                      );
                      Future.microtask(() => setState(() {}));
                    },
                    iconSize: 24,
                    icon: const Icon(
                      Icons.keyboard_double_arrow_right,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    scrollController.addListener(scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  void scrollListener() {
    if (!context.mounted) return;
    if (!scrollController.hasClients) return;
    final minPos = scrollController.position.maxScrollExtent - 200;
    final newValue = scrollController.offset < minPos;
    if (newValue == showScrollButton) return;
    setState(() => showScrollButton = newValue);
  }
}
