import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  CommonText({this.label, this.textStyle, this.maxLines});
  final label;
  final textStyle;
  final maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: textStyle,
      maxLines: maxLines,
      textDirection: TextDirection.ltr,
      overflow: TextOverflow.fade,
    );
  }
}

///ButtonTextSize (White)
const mTextStyleWhite_11 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFFFFFFF));

const labelTextStyleGreyReguler11 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextFormColor = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xffCDCDCD),
    fontFamily: 'Nunito Sans');

const mTextStyleWhite_13 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFFFFFFF));

const mTextStyleWhite_15 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFFFFFFF));

const mTextStyleWhite_17 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFFFFFFF));

///ButtonTextSize (Black)
const mTextStyleBlack_6 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 6,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF333333));

const mTextStyleBlack_9 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 9,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF333333));

const mTextStyleBlack_10 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF707070));

const mTextStyleBlack_13 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF333333));

const mTextStyleBlack_15 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF333333));

const mTextStyleBlack_17 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 17,
  fontFamily: 'Nunito Sans',
  // color: Color(0xFF333333),
);

///ButtonTextSize (Blue)
const mTextStyleBlue_5 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 5,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF05A6F0));

const mTextStyleBlue_9 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 9,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF05A6F0));

// const mTextStyleBlue_12 = TextStyle(fontWeight: FontWeight.w400, fontSize: 12,fontFamily: 'Nunito Sans',color: Color(0xFF05A6F0));

const mTextStyleBlue_17 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF05A6F0));

///ButtonTextSize (GreyLight)
const mTextStyleGreyLight_11 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF9E9E9E));

const mTextStyleGreyLight_15 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF9E9E9E));

///ButtonTextSize (GreyMedium)
const mTextStyleGreyMedium_9 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 9,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFB2B2B2));

const mTextStyleGreyMedium_11 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    fontFamily: 'Nunito Sans',
    color: Color(0xFFB2B2B2));

///ButtonTextSize (GreyDark)
const mTextStyleGreyDark_8 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 8,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF707070));

const mTextStyleGreyDark_9 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 9,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF707070));

const mTextStyleGreyDark_11 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 11,
  fontFamily: 'Nunito Sans',
  color: Color(0xFF707070),
);
const mTextStyleGreyDark_14 = TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  fontFamily: 'Nunito Sans',
  color: Color(0xFF707070),
);

const mTextStyleGreyDark_30 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
    fontFamily: 'Nunito Sans',
    color: Color(0xFF707070));

///

const labelTextStyleReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');
const labelTextStyleGreyReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Color(0xff5E5E5E),
    fontFamily: 'Nunito Sans');
const labelTextStyleRedReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xffFF3C38),
    fontFamily: 'Nunito Sans');

const labelTextStyleMedium12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleBold12 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 11,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleBlueReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');
const labelTextStyleBlueReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');
const labelTextStyleBlueReguler18 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');
const labelTextStyleBlueMedium12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');

const labelTextStyleBlueBold12 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 11,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');

const labelTextStyleGreenReguler24 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 25,
    color: Color(0xff52B788),
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteMedium12 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteBold12 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 11,
    color: Colors.white,
    fontFamily: 'Nunito Sans');
const labelTextStyleBlackReguler11 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 10, fontFamily: 'Nunito Sans');

const labelTextStyleBlackReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 11,
    fontFamily: 'Nunito Sans',
    color: Colors.black);
const labelTextStyleGreenReguler12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    fontFamily: 'Nunito Sans',
    color: Color(0xff74C69D));

const labelTextStyleBlackMedium12 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 11, fontFamily: 'Nunito Sans');

const labelTextStyleBlackBold12 = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 11, fontFamily: 'Nunito Sans');

const labelTextStyleReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteMedium14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Colors.white,
    fontFamily: 'Nunito Sans');
const labelTextStyleWhiteMedium15 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteBold14 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 13,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleBlackReguler14 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 13, fontFamily: 'Nunito Sans');

const labelTextStyleBlackReguler16 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleBlackMedium16 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleREdReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    fontFamily: 'Nunito Sans',
    color: Colors.red);

const labelTextStyleBlackMedium14 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 13, fontFamily: 'Nunito Sans');

const labelTextStyleBlackBold14 = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 13, fontFamily: 'Nunito Sans');

const labelTextStyleBlackBold16 = TextStyle(
    fontWeight: FontWeight.w600, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleMedium16 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleMedium14 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 13, fontFamily: 'Nunito Sans');

const labelTextStyleReguler16 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleReguler20 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 20, fontFamily: 'Nunito Sans');

const labelTextStyleBold16 = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 15, fontFamily: 'Nunito Sans');

const labelTextStyleGreyReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');
const labelTextStyleGreyReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleGreyMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleGreyBold16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Color(0xFF707070),
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Colors.white,
    fontFamily: 'Nunito Sans');
const labelTextStyleWhiteReguler19 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    color: Colors.white,
    fontFamily: 'Nunito Sans');
const labelTextStyleWhiteReguler25 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 22,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleWhiteBold16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Colors.white,
    fontFamily: 'Nunito Sans');

const labelTextStyleBlueReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');

const labelTextStyleGreenReguler16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: Color(0xff52B788),
    fontFamily: 'Nunito Sans');

const labelTextStyleGreenReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color(0xff52B788),
    fontFamily: 'Nunito Sans');
const labelTextStyleDarkBlueReguler14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 13,
    color: Color.fromARGB(255, 109, 99, 243),
    fontFamily: 'Nunito Sans');
const labelTextStyleGreenReguler20 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 19,
    color: Color(0xff52B788),
    fontFamily: 'Nunito Sans');

const labelTextStyleBlueMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');

const labelTextStyleBlueBold16 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 15,
    color: Color(0xff2479AB),
    fontFamily: 'Nunito Sans');

const labelTextStyleReguler19 = TextStyle(
    fontWeight: FontWeight.w400, fontSize: 18, fontFamily: 'Nunito Sans');
const labelTextStyleBlackReguler19 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: 'Nunito Sans',
    color: Color(0xff333333));

const labelTextStyleMedium19 = TextStyle(
    fontWeight: FontWeight.w500, fontSize: 18, fontFamily: 'Nunito Sans');

const labelTextStyleBold19 = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nunito Sans');

const labelTextStyleFontGreyReguler19 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 18,
    fontFamily: 'Nunito Sans',
    color: Color(0xffb2b2b2));

const labelTextStyleFontGreyMedium19 = TextStyle(
    fontWeight: FontWeight.w500,
    color: Color(0xFF707070),
    fontSize: 18,
    fontFamily: 'Nunito Sans');

const labelTextStyleFontGreyBold19 = TextStyle(
    fontWeight: FontWeight.w700, fontSize: 18, fontFamily: 'Nunito Sans');

const labelTextStyle26 = TextStyle(
    fontSize: 26, fontWeight: FontWeight.w600, fontFamily: 'Nunito Sans');

const labelTextStyle32 = TextStyle(
    fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Nunito Sans');



//const labelTestStyleFontFamily = TextStyle(fontSize:40,color: Colors.grey,fontWeight: FontWeight.w100,fontFamily: "Bauhaus");