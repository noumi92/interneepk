import 'package:flutter/material.dart';

class ExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;
  final String message;
  const ExceptionWidget({Key? key, required this.onPress, this.message = "Something Went Wrong",}) : super(key: key);

  @override
  State<ExceptionWidget> createState() => _ExceptionWidgetState();
}

class _ExceptionWidgetState extends State<ExceptionWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox( height: size.height * 0.30, ),
          const Icon(Icons.cloud_off, color: Colors.red,),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(child: Text(widget.message)),
          ),
          SizedBox( height: size.height * 0.05, ),
          InkWell(
            onTap: widget.onPress,
            child: ElevatedButton(child: Text('Retry'), onPressed: widget.onPress),
          )
        ],
      ),
    );
  }
}