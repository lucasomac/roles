import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  final IconData _icon;
  final String _label;
  final Function() _onTap;

  const ActionItem(this._icon, this._label, this._onTap, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(_icon, color: Theme.of(context).primaryColor),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              _label,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ],
      ),
    );
  }
}
