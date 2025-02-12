
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget  implements PreferredSizeWidget{
  final AppBar appBar;
  const MainAppBar({
    super.key,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: (){
          Navigator.of(context).pop();
        },
        icon: const Icon(Icons.arrow_back_ios,color: Colors.black,
          size: 16,
        ),
      ),
      title: const Text('Activity',style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      ),
      centerTitle: true,
      actions: [
        TextButton(onPressed: (){},
          child: const Icon(Icons.notifications,size: 18,
          ),
          style:ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(5),
            maximumSize: const Size(30, 30),
            minimumSize: const Size(30, 30),
            foregroundColor: const Color(0xfffa7a3b), shape: const CircleBorder(),
            backgroundColor: const Color(0xffffe6da),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
