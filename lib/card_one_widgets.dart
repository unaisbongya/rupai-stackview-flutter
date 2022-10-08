import 'package:rupai/circular_dial.dart';
import 'package:flutter/material.dart';

class Card1Widget extends StatelessWidget {
  const Card1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "nikunj, how much do you need",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Color(0xFF7f9fa8),
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "move the dial and set an amount you need up to ₹450000",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color(0xFF7f9fa8).withOpacity(.6),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                children: const [
                  CircularDial(),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Stash is instant. money will be credited',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Header1Widget extends StatelessWidget {
  const Header1Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF12181f),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Credit amount",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color(0xFF7f9fa8).withOpacity(.6),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "145000",
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Color(0xFF7f9fa8),
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}
