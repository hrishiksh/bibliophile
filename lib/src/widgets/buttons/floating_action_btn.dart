import 'package:flutter/material.dart';

class FloatingActionCustomBtn extends StatelessWidget {
  const FloatingActionCustomBtn(
      {Key? key,
      @required this.title,
      @required this.icondata,
      @required this.ontap})
      : super(key: key);

  final String? title;
  final IconData? icondata;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 60,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title!,
                style: Theme.of(context).textTheme.button,
              ),
              Icon(icondata),
            ],
          ),
        ),
        onTap: ontap);
  }
}
