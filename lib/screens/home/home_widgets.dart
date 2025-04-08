import 'package:alpha_edge_web/core/button_widget.dart';
import 'package:alpha_edge_web/core/clickable_widget.dart';
import 'package:alpha_edge_web/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

//menu items widget...
class MenuItemWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function()? onTap;

  const MenuItemWidget({
    super.key,
    required this.title,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: InkWellWidget(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isSelected ? whiteColor : Color(0xFFACACAC),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              height: 13,
              width: 13,
              margin: EdgeInsets.only(top: 6),
              decoration: BoxDecoration(
                color: isSelected ? bColorOne : Colors.transparent,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}

//trading edge widget...
class TradingEdgeWidget extends StatelessWidget {
  final String icon, title, subTitle1, subTitle2;
  final Function()? onTap;

  const TradingEdgeWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle1,
    required this.subTitle2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        // height: 534,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 46, vertical: 38),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: bColorOne,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              icon,
              height: 123,
              width: 123,
            ),
            SizedBox(height: 44),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: whiteColor,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                CircleIconWidget(),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    subTitle1,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                CircleIconWidget(),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    subTitle2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color(0xFF001137),
                shape: BoxShape.circle,
                border: Border.all(
                  color: bColorOne,
                  width: 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF354ABD).withValues(alpha: .45),
                    offset: Offset(0, 4),
                    blurRadius: 16.8,
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Center(
                child: SvgPicture.asset("assets/web_icons/right_side.svg"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//circle icon widget...
class CircleIconWidget extends StatelessWidget {
  final double height, width, imageSize;
  final String icon;
  final Function()? onTap;
  final Color boxColor, borderColor;
  final bool isPng;

  const CircleIconWidget({
    super.key,
    this.height = 28,
    this.width = 28,
    this.imageSize = 24,
    this.icon = "assets/web_icons/tick.svg",
    this.onTap,
    this.boxColor = Colors.transparent,
    this.borderColor = whiteColor,
    this.isPng = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: boxColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: 1,
          ),
        ),
        child: Center(
          child: isPng
              ? Image.asset(
                  icon,
                  height: imageSize,
                  width: imageSize,
                )
              : SvgPicture.asset(icon),
        ),
      ),
    );
  }
}

//live token widget...
class LiveTokenWidget extends StatelessWidget {
  final String name, price, address;
  final bool isHeader, isYes;
  final Function()? onTap;

  const LiveTokenWidget({
    super.key,
    this.onTap,
    required this.name,
    required this.price,
    required this.address,
    this.isHeader = false,
    required this.isYes,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 18),
      padding: EdgeInsets.symmetric(horizontal: 70),
      decoration: BoxDecoration(
        color: isHeader || isYes == false ? bColorTwo : Color(0xFF10275A),
      ),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: isHeader ? 18 : 16,
                  fontWeight: isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                price,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: isHeader ? 18 : 16,
                  fontWeight: isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                address,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: isHeader ? 18 : 16,
                  fontWeight: isHeader ? FontWeight.w600 : FontWeight.w400,
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: isHeader
                  ? Text(
                      "Is LP Locked?",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: isHeader ? 18 : 16,
                        fontWeight:
                            isHeader ? FontWeight.w600 : FontWeight.w400,
                      ),
                    )
                  : isYes
                      ? Align(
                          alignment: Alignment.centerRight,
                          child: ButtonWidget(
                            text: "Yes",
                            height: 37,
                            width: 70,
                            borderRadius: 6,
                            btnColor: greenColor,
                            borderColor: greenColor,
                            onPressed: onTap,
                          ),
                        )
                      : Align(
                          alignment: Alignment.centerRight,
                          child: ButtonWidget(
                            text: "No",
                            height: 37,
                            width: 70,
                            borderRadius: 6,
                            btnColor: redColor,
                            borderColor: redColor,
                            onPressed: onTap,
                          ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}

//reason items widget...
class ReasonItemsWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;

  const ReasonItemsWidget({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 123,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(13),
          border: Border.all(
            color: bColorOne,
            width: 1,
          ),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              CircleIconWidget(
                height: 72,
                width: 72,
                boxColor: bColorOne,
                borderColor: bColorOne,
                icon: "assets/web_icons/tick1.svg",
              ),
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//plan items widget...
class PlanItemsWidget extends StatelessWidget {
  final String plan, amount, d1, d2, d3, d4, d5, d6;
  final bool d1True, d2True, d3True, d4True, d5True, d6True, isBtnColored;
  final Function()? onTap;

  const PlanItemsWidget({
    super.key,
    this.onTap,
    required this.plan,
    required this.amount,
    required this.d1,
    required this.d2,
    required this.d3,
    required this.d4,
    required this.d5,
    required this.d6,
    this.d1True = false,
    this.d2True = false,
    this.d3True = false,
    this.d4True = false,
    this.d5True = false,
    this.d6True = false,
    required this.isBtnColored,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        // height: 710,
        width: 365,
        decoration: BoxDecoration(
          color: Color(0xFF002553),
          borderRadius: BorderRadius.circular(33),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 30),
                  Text(
                    plan,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    amount,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 28),
              decoration: BoxDecoration(
                color: bColorTwo,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(33),
                  bottomRight: Radius.circular(33),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d1True ? greenColor : redColor,
                        borderColor: d1True ? greenColor : redColor,
                        icon: d1True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: whiteColor.withValues(alpha: .47),
                    margin: EdgeInsets.symmetric(vertical: 25),
                  ),
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d2True ? greenColor : redColor,
                        borderColor: d2True ? greenColor : redColor,
                        icon: d2True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: whiteColor.withValues(alpha: .47),
                    margin: EdgeInsets.symmetric(vertical: 25),
                  ),
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d3True ? greenColor : redColor,
                        borderColor: d3True ? greenColor : redColor,
                        icon: d3True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d3,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: whiteColor.withValues(alpha: .47),
                    margin: EdgeInsets.symmetric(vertical: 25),
                  ),
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d4True ? greenColor : redColor,
                        borderColor: d4True ? greenColor : redColor,
                        icon: d4True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d4,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: whiteColor.withValues(alpha: .47),
                    margin: EdgeInsets.symmetric(vertical: 25),
                  ),
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d5True ? greenColor : redColor,
                        borderColor: d5True ? greenColor : redColor,
                        icon: d5True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d5,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: whiteColor.withValues(alpha: .47),
                    margin: EdgeInsets.symmetric(vertical: 25),
                  ),
                  Row(
                    children: <Widget>[
                      CircleIconWidget(
                        boxColor: d6True ? greenColor : redColor,
                        borderColor: d6True ? greenColor : redColor,
                        icon: d6True
                            ? "assets/web_icons/tick.svg"
                            : "assets/web_icons/cross.svg",
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          d6,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: ButtonWidget(
                      text: "Close",
                      height: 50,
                      width: 172,
                      borderRadius: 10,
                      btnColor: isBtnColored ? bColorOne : bColorThree,
                      borderColor: isBtnColored ? bColorOne : bColorThree,
                      onPressed: onTap,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//comment items widget...
class CommentItemsWidget extends StatelessWidget {
  final String image, accName, comment;
  final double rating;
  final Function()? onTap;

  const CommentItemsWidget({
    super.key,
    required this.comment,
    this.onTap,
    required this.image,
    required this.accName,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 190,
        width: 820,
        margin: EdgeInsets.symmetric(horizontal: 22),
        padding: EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: Color(0xFF000F2D),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: bColorOne,
            width: 1,
          ),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 108,
                    width: 108,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleIconWidget(
                      height: 44,
                      width: 44,
                      boxColor: bColorOne,
                      borderColor: bColorOne,
                      icon: "assets/web_icons/coment.svg",
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RatingBar.builder(
                      itemSize: 16,
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 2),
                      unratedColor: whiteColor.withValues(alpha: .65),
                      itemBuilder: (context, _) =>
                          SvgPicture.asset("assets/web_icons/star.svg"),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(height: 12),
                    if (accName.isNotEmpty)
                      Text(
                        accName,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: whiteColor.withValues(alpha: .65),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    if (accName.isNotEmpty) SizedBox(height: 8),
                    Text(
                      comment,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//x items widget...
class XItemsWidget extends StatelessWidget {
  final String name, accName, comment;
  final Function()? onTap;

  const XItemsWidget({
    super.key,
    required this.comment,
    this.onTap,
    required this.accName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWellWidget(
      onTap: onTap,
      child: Container(
        height: 270,
        width: 400,
        padding: EdgeInsets.symmetric(horizontal: 36, vertical: 30),
        decoration: BoxDecoration(
          color: Color(0xFF000F2D),
          borderRadius: BorderRadius.circular(27),
          border: Border.all(
            color: bColorOne,
            width: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleIconWidget(
                    height: 75,
                    width: 75,
                    boxColor: bColorOne,
                    borderColor: bColorOne,
                    icon: "assets/web_icons/logo5.svg",
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          accName,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: whiteColor.withValues(alpha: .65),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  SvgPicture.asset("assets/web_icons/x.svg"),
                ],
              ),
              SizedBox(height: 40),
              Text(
                comment,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//column widget...
class ColumnWidgets extends StatelessWidget {
  final String title, subTitle;
  final Color titleColor, subTitleColor;
  final double titleFont, subTitleFont;
  final FontWeight titleWeight, subTitleWeight;
  final double height;
  final int subTitleMaxLine;
  final CrossAxisAlignment crossAxisAlignment;

  const ColumnWidgets({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleColor = whiteColor,
    this.subTitleColor = whiteColor,
    this.titleFont = 14,
    this.subTitleFont = 18,
    this.titleWeight = FontWeight.w500,
    this.subTitleWeight = FontWeight.w500,
    this.height = 12,
    this.subTitleMaxLine = 1,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      children: <Widget>[
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: titleColor,
            fontSize: titleFont,
            fontWeight: titleWeight,
          ),
        ),
        SizedBox(height: height),
        Text(
          subTitle,
          maxLines: subTitleMaxLine,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: subTitleColor,
            fontSize: subTitleFont,
            fontWeight: subTitleWeight,
          ),
        ),
      ],
    );
  }
}

//row widget...
class RowWidgets extends StatelessWidget {
  final String title, subTitle;
  final Color titleColor, subTitleColor;
  final double titleFont, subTitleFont;
  final FontWeight titleWeight, subTitleWeight;
  final double bottomPadding;
  final int titleMaxLine, subTitleMaxLine;
  final TextAlign textAlign;

  const RowWidgets({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleColor = whiteColor,
    this.subTitleColor = whiteColor,
    this.titleFont = 14,
    this.subTitleFont = 18,
    this.titleWeight = FontWeight.w500,
    this.subTitleWeight = FontWeight.w500,
    this.bottomPadding = 12,
    this.titleMaxLine = 1,
    this.subTitleMaxLine = 1,
    this.textAlign = TextAlign.end,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              maxLines: titleMaxLine,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: titleColor,
                fontSize: titleFont,
                fontWeight: titleWeight,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Text(
              subTitle,
              maxLines: subTitleMaxLine,
              overflow: TextOverflow.ellipsis,
              textAlign: textAlign,
              style: TextStyle(
                color: subTitleColor,
                fontSize: subTitleFont,
                fontWeight: subTitleWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
