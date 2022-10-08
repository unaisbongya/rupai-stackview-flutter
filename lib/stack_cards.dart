import 'package:flutter/material.dart';

class StackCardsWidget extends StatefulWidget {
  const StackCardsWidget({
    Key? key,
    this.stackHeaderHeight = 100,
    this.activeItemIndex = 0,
    required this.collapsedWidgets,
    required this.expandedWidgets,
    this.onTap,
    this.onHeaderTap,
    required this.nextButtonTexts,
  }) : super(key: key);

  final int stackHeaderHeight;
  final int activeItemIndex;

  final List<Widget> collapsedWidgets;
  final List<Widget> expandedWidgets;
  final List<String> nextButtonTexts;

  final Function(int)? onTap;
  final Function(int)? onHeaderTap;

  @override
  State<StackCardsWidget> createState() => _StackCardsWidgetState();
}

class _StackCardsWidgetState extends State<StackCardsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0f151a),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              key: const Key('stack'),
              children: [
                for (int i = 0; i < widget.expandedWidgets.length; i++)
                  AnimatedPositioned(
                    key: ValueKey('position_$i'),
                    left: 0,
                    right: 0,
                    bottom: 0,
                    top: i < widget.activeItemIndex + 1 ? (widget.stackHeaderHeight * i).toDouble() : MediaQuery.of(context).size.height,
                    duration: const Duration(milliseconds: 250),
                    child: i < widget.activeItemIndex
                        ? InkWell(
                            onTap: () {
                              widget.onHeaderTap?.call(i);
                            },
                            child: widget.collapsedWidgets[i],
                          )
                        : widget.expandedWidgets[i],
                  ),
              ],
            ),
          ),
          // if (widget.activeItemIndex + 1 < widget.expandedWidgets.length)
          Container(
            color: Colors.grey.withOpacity(.2),
            child: InkWell(
              onTap: () {
                if (widget.activeItemIndex + 1 < widget.expandedWidgets.length) {
                  widget.onTap?.call(widget.activeItemIndex + 1);
                }
              },
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFF37449c),
                  ),
                  child: Center(
                    child: Text(
                      widget.nextButtonTexts[widget.activeItemIndex],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
