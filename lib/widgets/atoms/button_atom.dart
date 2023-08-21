import 'package:flutter/material.dart';

/// {@category Atom}
/// # 버튼을 만드는 클래스
/// * [titleWidget] : 타이틀 위젯을 나타냅니다.
/// * [backgroundColor] : 버튼의 색깔을 나타냅니다.
/// * [onTap] : 터치 시 동작을 나타냅니다.
/// * [fixedSize] : 버튼의 고정 사이즈를 나타냅니다.
/// * [splashColor] : 터치시 스플래쉬 색상을 나타냅니다.
/// * [borderColor] : 외곽선의 색상을 나타냅니다.
/// * [disableBorderColor] : 터치 불가능 외곽선의 색상을 나타냅니다.
/// * [shadowColor] : 그림자의 색상을 나타냅니다.
/// * [disabledBackgroundColor] : 비활성화 시 색상을 나타냅니다.
/// * [borderWidth] : 외곽선의 두께를 나타냅니다.
/// * [borderRadius] : 버튼의 곡률을 나타냅니다.
/// * [padding] : 버튼 내부 여백을 나타냅니다.
/// * [tapTargetSize] : 탭 대상 크기를 나타냅니다.
/// * [elevation] : 버튼의 높이를 나타냅니다.
///
///
/// ```
/// [사용 예시]
/// small이 포함된 상태의 경우, title/titleWidget에 따라 사이즈가 변경됩니다.
/// class HomeButtonAtom extends ButtonAtom {
///   const HomeButtonAtom({
///     super.key,
///     required super.titleWidget,
///     required super.backgroundColor,
///     super.onTap,
///     super.borderColor,
///     super.fixedSize,
///     super.disabledBackgroundColor,
///     super.borderRadius,
///     super.padding,
///   });
/// }
///),

class ButtonAtom extends StatelessWidget {
  final Widget titleWidget;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Color borderColor;
  final void Function()? onTap;
  final Size fixedSize;
  final Color splashColor;
  final Color shadowColor;
  final Color disabledBackgroundColor;
  final double borderWidth;
  final EdgeInsets padding;
  final MaterialTapTargetSize tapTargetSize;
  final double elevation;
  final Color? disableBorderColor;

  const ButtonAtom({
    Key? key,
    required this.titleWidget,
    required this.backgroundColor,
    this.borderRadius = BorderRadius.zero,
    this.borderColor = Colors.transparent,
    this.onTap,
    this.fixedSize = const Size(0, 0),
    this.splashColor = Colors.transparent,
    this.borderWidth = 0,
    this.shadowColor = Colors.transparent,
    this.disabledBackgroundColor = Colors.transparent,
    this.padding = EdgeInsets.zero,
    this.tapTargetSize = MaterialTapTargetSize.shrinkWrap,
    this.elevation = 0,
    this.disableBorderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onTap,
      style: FilledButton.styleFrom(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: _borderColor(),
            width: borderWidth,
          ),
          borderRadius: borderRadius,
        ),
        padding: padding,
        fixedSize: fixedSize,
        shadowColor: shadowColor,
        foregroundColor: splashColor,
        backgroundColor: backgroundColor,
        tapTargetSize: tapTargetSize,
        disabledBackgroundColor: disabledBackgroundColor,
      ),
      child: titleWidget,
    );
  }

  Color _borderColor() {
    Color color;
    if (disableBorderColor != null) {
      color = onTap != null ? borderColor : disableBorderColor!;
    } else {
      color = borderColor;
    }
    return color;
  }

  ButtonAtom setRadius({required BorderRadius radius}) => ButtonAtom(
        borderRadius: radius,
        backgroundColor: backgroundColor,
        titleWidget: titleWidget,
        borderColor: borderColor,
        onTap: onTap,
        fixedSize: fixedSize,
        splashColor: splashColor,
        borderWidth: borderWidth,
        shadowColor: shadowColor,
        disabledBackgroundColor: disabledBackgroundColor,
        disableBorderColor: disableBorderColor,
        padding: padding,
        tapTargetSize: tapTargetSize,
        elevation: elevation,
      );
}
