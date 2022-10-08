import 'package:flutter/material.dart';

class Card3Widget extends StatelessWidget {
  const Card3Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1b232c),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Where should we send the money",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Color(0xFF7f9fa8),
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "amount will be credited to this bank accoun, EMI will also eb debited from this bank account",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color(0xFF7f9fa8).withOpacity(.6),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 24,
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                ),
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Paytm payments bank",
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "919xxxxxxxxx",
                            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                  fontSize: 10,
                                  color: Colors.white.withOpacity(.7),
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.check_circle,
                      size: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF7f9fa8),
              ),
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: Text(
              "Create account",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Color(0xFF7f9fa8),
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class Header3Widget extends StatelessWidget {
  const Header3Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF12181f),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "EMI",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xFF7f9fa8).withOpacity(.6),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "₹ 4,430/ mo",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Color(0xFF7f9fa8),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Duration",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Color(0xFF7f9fa8).withOpacity(.6),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "12 months",
                style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: Color(0xFF7f9fa8),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
