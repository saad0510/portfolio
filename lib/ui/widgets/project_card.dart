import 'package:flutter/material.dart';

import '../../core/extensions/theme_ext.dart';
import '../../entities/project_data.dart';
import '../../theme/app_colors.dart';
import '../../theme/sizes.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    super.key,
    required this.project,
  });

  final ProjectData project;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool hovered = false;

  static const duration = Duration(milliseconds: 400);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (_) => setState(() => hovered = true),
      onExit: (_) => setState(() => hovered = false),
      child: InkWell(
        onTap: () => Scaffold.of(context).openEndDrawer(),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: SizedBox(
            height: widget.project.type.height,
            width: widget.project.type.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  child: AnimatedContainer(
                    duration: duration,
                    curve: Curves.decelerate,
                    decoration: BoxDecoration(
                      color: AppColors.gray.shade400,
                      image: DecorationImage(
                        image: NetworkImage(widget.project.images.first),
                        fit: BoxFit.cover,
                        alignment: widget.project.type.imageAlignment,
                      ),
                    ),
                    foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: hovered //
                            ? [Colors.black87, Colors.black12]
                            : [Colors.transparent, Colors.transparent],
                      ),
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: duration,
                  curve: Curves.elasticInOut,
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: hovered ? 0 : -100,
                  child: hovered
                      ? Padding(
                          padding: Sizes.s16.pad,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                widget.project.title,
                                style: context.typography.labelSmall.colored(Colors.white),
                              ),
                              Sizes.s10.spaceY,
                              Text(
                                widget.project.description,
                                style: context.typography.bodySmall.colored(Colors.white),
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
