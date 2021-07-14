import 'package:flutter/material.dart';

// ignore: camel_case_types
class fText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  /* ============================================
  ================== Heading ====================
  ============================================ */
  /// Extremely large text.
  // ignore: use_key_in_widget_constructors
  fText.heading1(this.text, {required context})
      : style = Theme.of(context).textTheme.headline1;

  /// Very, very large text.
  /// Used for the date in the dialog shown by [showDatePicker].
  // ignore: use_key_in_widget_constructors
  fText.heading2(this.text, {required context})
      : style = Theme.of(context).textTheme.headline2;

  /// Very large text.
  // ignore: use_key_in_widget_constructors
  fText.heading3(this.text, {required context})
      : style = Theme.of(context).textTheme.headline3;

  /// Large text.
  // ignore: use_key_in_widget_constructors
  fText.heading4(this.text, {required context})
      : style = Theme.of(context).textTheme.headline4;

  /// Used for large text in dialogs (e.g., the month and year in the dialog shown by [showDatePicker]).
  // ignore: use_key_in_widget_constructors
  fText.heading5(this.text, {required context})
      : style = Theme.of(context).textTheme.headline5;

  /// Used for the primary text in app bars and dialogs (e.g., [AppBar.title] and [AlertDialog.title]).
  // ignore: use_key_in_widget_constructors
  fText.heading6(this.text, {required context})
      : style = Theme.of(context).textTheme.headline6;

  /* ============================================
  ================== Subtitle ====================
  ============================================ */
  /// Used for the primary text in lists (e.g., [ListTile.title]).
  // ignore: use_key_in_widget_constructors
  fText.subtitle1(this.text, {required context})
      : style = Theme.of(context).textTheme.subtitle1;

  /// For medium emphasis text that's a little smaller than [subtitle1].
  // ignore: use_key_in_widget_constructors
  fText.subtitle2(this.text, {required context})
      : style = Theme.of(context).textTheme.subtitle2;

  /* ============================================
  ================== Body text ====================
  ============================================ */
  /// Text with custom style
  // ignore: prefer_const_constructors_in_immutables
  fText.body(this.text, TextStyle _style) : style = _style;

  /// Used for emphasizing text that would otherwise be [bodyText2].
  // ignore: use_key_in_widget_constructors
  fText.bodyText1(this.text, {required context})
      : style = Theme.of(context).textTheme.bodyText1;

  /// The default text style for [Material].
  // ignore: use_key_in_widget_constructors
  fText.bodyText2(this.text, {required context})
      : style = Theme.of(context).textTheme.bodyText2;

  /* ============================================
  ================== Other ====================
  ============================================ */
  /// Used for auxiliary text associated with images.
  // ignore: use_key_in_widget_constructors
  fText.caption(this.text, {required context})
      : style = Theme.of(context).textTheme.caption;

  /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
  // ignore: use_key_in_widget_constructors
  fText.button(this.text, {required context})
      : style = Theme.of(context).textTheme.button;

  /// The smallest style.

  /// Typically used for captions or to introduce a (larger) headline.
  // ignore: use_key_in_widget_constructors
  fText.overline(this.text, {required context})
      : style = Theme.of(context).textTheme.overline;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style);
  }
}
