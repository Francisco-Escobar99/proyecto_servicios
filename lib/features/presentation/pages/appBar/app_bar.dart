import 'package:flutter/material.dart';
import '../View_principal/view_service.dart';
import '../profile/Provider_/profileProvider.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _isProfileView = true;

  void _toggleView() {
    setState(() {
      _isProfileView = !_isProfileView;
    });
  }

  void _navigateToView() {
    if (_isProfileView) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProviderProfile()),
      ).then((value) => _toggleView());
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewMain()),
      ).then((value) => _toggleView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFE5E5E5),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            'assets/botonCuadrado.png',
            fit: BoxFit.contain,
          ),
          onPressed: _navigateToView,
        ),
      ],
      flexibleSpace: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'assets/logo.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}