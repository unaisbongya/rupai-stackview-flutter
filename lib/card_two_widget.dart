import 'package:flutter/material.dart';

class Card2Widget extends StatelessWidget {
  const Card2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF171e27),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "how do you wish to repay?",
            style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Color(0xFF7f9fa8),
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "choose one of the recommended plan or make your own",
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Color(0xFF7f9fa8).withOpacity(.6),
                  fontWeight: FontWeight.w500,
                ),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF43323a),
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.check_circle,
                          size: 42,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "₹ 4,247/ mo",
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "fot 12 months",
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                color: Colors.white.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "See calculations",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.white.withOpacity(.5),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF43323a),
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 42,
                          color: Colors.white.withOpacity(.5),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "₹ 5,830/ mo",
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "fot 12 months",
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                color: Colors.white.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "See calculations",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.white.withOpacity(.5),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
                AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF43323a),
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 42,
                          color: Colors.white.withOpacity(.5),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "₹ 6,403/ mo",
                          style: Theme.of(context).textTheme.headline5?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "fot 12 months",
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                                color: Colors.white.withOpacity(.7),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "See calculations",
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Colors.white.withOpacity(.5),
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
              "Create you own plan",
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

class Header2Widget extends StatelessWidget {
  const Header2Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF171e27),
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
