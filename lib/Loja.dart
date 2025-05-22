import 'package:flutter/material.dart';

class Loja extends StatefulWidget {
  @override
  _LojaState createState() => _LojaState();
}

class _LojaState extends State<Loja> with SingleTickerProviderStateMixin {
  bool isAberta = false;
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 700),
      vsync: this,
    );
    _colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _iconAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleLoja(bool value) {
    setState(() {
      isAberta = value;
      if (isAberta) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("Loja"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Fundo com gradiente animado e bolhas decorativas
          AnimatedContainer(
            duration: Duration(milliseconds: 700),
            curve: Curves.easeInOut,
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: isAberta
                    ? [Colors.green.shade100, Colors.green.shade400]
                    : [Colors.red.shade100, Colors.red.shade400],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 80,
                  left: -60,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 700),
                    width: isAberta ? 180 : 120,
                    height: isAberta ? 180 : 120,
                    decoration: BoxDecoration(
                      color: isAberta
                          ? Colors.green.withOpacity(0.15)
                          : Colors.red.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60,
                  right: -40,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 700),
                    width: isAberta ? 120 : 180,
                    height: isAberta ? 120 : 180,
                    decoration: BoxDecoration(
                      color: isAberta
                          ? Colors.greenAccent.withOpacity(0.12)
                          : Colors.redAccent.withOpacity(0.12),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Conteúdo principal
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Card(
                  elevation: 12,
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                  shadowColor: isAberta ? Colors.greenAccent : Colors.redAccent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return SwitchListTile(
                          contentPadding: EdgeInsets.zero,
                          title: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(
                                colors: isAberta
                                    ? [Colors.green, Colors.teal]
                                    : [Colors.red, Colors.orange],
                              ).createShader(bounds);
                            },
                            child: Text(
                              isAberta ? 'Aberto' : 'Fechado',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          value: isAberta,
                          onChanged: _toggleLoja,
                          secondary: Transform.scale(
                            scale: 1 + 0.4 * _iconAnimation.value,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: _colorAnimation.value!.withOpacity(0.5),
                                    blurRadius: 16,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Icon(
                                isAberta ? Icons.lock_open_rounded : Icons.lock_rounded,
                                color: _colorAnimation.value,
                                size: 40,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 700),
                  transitionBuilder: (child, animation) => FadeTransition(
                    opacity: animation,
                    child: ScaleTransition(
                      scale: animation,
                      child: child,
                    ),
                  ),
                  child: Container(
                    key: ValueKey(isAberta),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                    decoration: BoxDecoration(
                      color: isAberta
                          ? Colors.green.withOpacity(0.15)
                          : Colors.red.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: isAberta ? Colors.green : Colors.red,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      isAberta ? '🟢 A loja está aberta!' : '🔴 A loja está fechada!',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: isAberta ? Colors.green[800] : Colors.red[800],
                        letterSpacing: 1.2,
                        shadows: [
                          Shadow(
                            blurRadius: 12,
                            color: Colors.black12,
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 700),
                  opacity: isAberta ? 1 : 0.3,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Icon(
                      Icons.storefront,
                      size: 80,
                      color: isAberta ? Colors.green : Colors.red,
                      shadows: [
                        Shadow(
                          blurRadius: 16,
                          color: isAberta
                              ? Colors.greenAccent.withOpacity(0.4)
                              : Colors.redAccent.withOpacity(0.4),
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
