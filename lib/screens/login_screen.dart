import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    print('Email: $email, Jelszó: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 🔽 Itt a mókus ikon
                SvgPicture.asset(
                  'assets/images/bidsquarrel_main.svg',
                  height: 220,
                  width: 220,
                  semanticsLabel: 'Licitmókus logo',
                ),
                const SizedBox(height: 16),

                // 🔽 Cím
                Text(
                  'Licitmókus',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 24),

                // 🔽 Email
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                ),
                const SizedBox(height: 12),

                // 🔽 Jelszó
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Jelszó'),
                  obscureText: true,
                ),
                const SizedBox(height: 20),

                // 🔽 Gomb
                ElevatedButton(
                  onPressed: _login,
                  child: const Text('Bejelentkezés'),
                ),

                TextButton(
                  onPressed: () {
                    print('Elfelejtett jelszó');
                  },
                  child: const Text('Elfelejtetted a jelszavad?'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
