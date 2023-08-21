import 'package:flutter/material.dart';

import '../../../styles/color_type.dart';

class SwitchAtom extends StatefulWidget {
  final double scale;
  final Color? activeColor;
  final Color? disableColor;
  final double? width;
  final double? height;
  final VoidCallback onActivated;
  final VoidCallback onDeactivated;

  SwitchAtom({
    super.key,
    this.scale = 0.7,
    this.activeColor,
    this.disableColor,
    this.width,
    this.height,
    VoidCallback? onActivated,
    VoidCallback? onDeactivated,
  })  : onActivated = onActivated ?? (() {}),
        onDeactivated = onDeactivated ?? (() {});

  @override
  State<SwitchAtom> createState() => _SwitchAtomState();
}

class _SwitchAtomState extends State<SwitchAtom> {
  late bool isActive;

  @override
  void initState() {
    super.initState();
    isActive = false;
  }

  @override
  Widget build(BuildContext context) {
    var trackColor = MaterialStateProperty.resolveWith<Color?>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.selected)) {
          return widget.activeColor ?? ColorType.primary600.color;
        }
        return widget.disableColor ?? ColorType.grey300.color;
      },
    );
    final thumbColor = MaterialStateColor.resolveWith(
        (states) => ColorType.baseBackground.color);

    return Theme(
      data: Theme.of(context).copyWith(
        colorScheme:
            Theme.of(context).colorScheme.copyWith(outline: Colors.transparent),
      ),
      child: Transform.scale(
        scale: widget.scale,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Switch(
              value: isActive,
              trackColor: trackColor,
              thumbColor: thumbColor,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onChanged: (bool value) {
                setState(() {
                  isActive = value;
                  value ? widget.onActivated() : widget.onDeactivated();
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
