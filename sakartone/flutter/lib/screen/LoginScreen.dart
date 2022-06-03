import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:youfit/screen/Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _page_visible = false;

  @override
  void initState() {
    super.initState();
    // _navigatetohome();
    _pageanimation();
  }

  _pageanimation() async {
    await Future.delayed(const Duration(milliseconds: 300), () {});
    setState(() {
      _page_visible = !_page_visible;
    });
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
    Navigator.pushReplacement(context, _createRoute());
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const LoginScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 2000),
        opacity: _page_visible ? 1.0 : 0.0,
        child: Scaffold(
          body: Stack(
            children: const [Background(), LogoSection()],
          ),
        ),
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: <Widget>[
      Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('img/entrepot.jpg'),
            alignment: FractionalOffset.topCenter,
          ),
        ),
      ),
    ]);
  }
}

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: const Text('Sakartone 📦',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(254, 183, 1, 1),
                    fontFamily: 'Pacifico',
                    fontSize: 50,
                    fontWeight: FontWeight.bold)),
          ),
          // Container(
          //   // padding: const EdgeInsets.only(top: 30),
          //   child: RotationTransition(
          //     turns: const AlwaysStoppedAnimation(160 / 360),
          //     child: SvgPicture.asset(
          //       "img/logo.svg",
          //       width: 100,
          //     ),
          //   ),
          // ),
        ],
      )
    ]);
  }
}

class LoaderSection extends StatelessWidget {
  const LoaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitCubeGrid(
          size: 140,
          color: Color.fromRGBO(254, 183, 1, 1),
        ),
      ),
    );
  }
}
