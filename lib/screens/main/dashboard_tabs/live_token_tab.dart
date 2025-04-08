import 'package:alpha_edge_web/core/consts.dart';
import 'package:alpha_edge_web/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main_one_widgets.dart';

class LiveTokenTab extends StatefulWidget {
  const LiveTokenTab({super.key});

  @override
  State<LiveTokenTab> createState() => _LiveTokenTabState();
}

enum SampleItem { itemOne, itemTwo, itemThree, itemFour }

class _LiveTokenTabState extends State<LiveTokenTab> {
  TextEditingController mySearchController = TextEditingController();
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Trending Developers",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(width: 20),
            PopupMenuButton<SampleItem>(
              initialValue: selectedItem,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: bColorOne.withValues(alpha: .48),
                  width: 1,
                ),
              ),
              color: Color(0xFF001B3E),
              onSelected: (SampleItem item) {
                setState(() {
                  selectedItem = item;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Filters",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 6),
                  SvgPicture.asset(
                    "assets/web_icons/filter.svg",
                    colorFilter: ColorFilter.mode(
                      whiteColor,
                      BlendMode.srcIn,
                    ),
                  )
                ],
              ),
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<SampleItem>>[
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemOne,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: bColorOne.withValues(alpha: .45),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      "Show Only Devs With High Success Rate",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemTwo,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: bColorOne.withValues(alpha: .45),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      "Show Only Tokens With >\$50K Liquidity",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemThree,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: bColorOne.withValues(alpha: .45),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      "Exclude Unbonded Tokens",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                PopupMenuItem<SampleItem>(
                  value: SampleItem.itemFour,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: bColorOne.withValues(alpha: .45),
                          width: 1,
                        ),
                      ),
                    ),
                    child: Text(
                      "Volume & Whale Buys Analysis",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 70),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isDesktop(context) ? 4 : 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            mainAxisExtent: 660,
          ),
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return LiveItemsWidget(
              name: "Alias",
              time: "12 seconds ago",
              subTitle: "6qAb456…",
              isLow: true,
              isHigh: false,
              isModerate: false,
              poolSize: "54",
              isYes: true,
              developerWallet: "6qAb456…",
              tokenAddress: "6qAb456…",
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "© 2025 Alpha Edge. All rights reserved.",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: whiteColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  "Terms of Service",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 30),
                const Text(
                  "Contact Support",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
