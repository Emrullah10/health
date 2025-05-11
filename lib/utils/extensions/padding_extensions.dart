import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension PaddingExtension on num {
  EdgeInsets get allP => EdgeInsets.all(toDouble().r);
  EdgeInsets get onlyLeftP => EdgeInsets.only(left: toDouble().w);
  EdgeInsets get onlyRightP => EdgeInsets.only(right: toDouble().w);
  EdgeInsets get onlyTopP => EdgeInsets.only(top: toDouble().h);
  EdgeInsets get onlyBottomP => EdgeInsets.only(bottom: toDouble().h);
  EdgeInsets get horizontalP => EdgeInsets.symmetric(horizontal: toDouble().w);
  EdgeInsets get verticalP => EdgeInsets.symmetric(vertical: toDouble().h);
}

extension PaddingExtensio on List<num> {
  EdgeInsets get horizontalAndVerticalP =>
      EdgeInsets.symmetric(horizontal: this[0].w, vertical: this[1].h);
  EdgeInsets get paddingLTRB => EdgeInsets.fromLTRB(this[0].w, this[1].h, this[2].w, this[3].h);
}
