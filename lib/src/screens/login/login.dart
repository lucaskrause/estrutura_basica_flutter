import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  "assets/img/logo.png",
                  height: 50,
                  alignment: Alignment.center,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  prefixIcon: Icon(Icons.person),
                  label: Text('Login'),
                  hintText: 'username@mail.com',
                  border: OutlineInputBorder()
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(5),
                  prefixIcon: Icon(Icons.lock),
                  label: Text('Senha'),
                  hintText: '******',
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder()
                ),
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    print('click');
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(1000, 40)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                  ),
                ),
              TextButton(
                onPressed: () {
                  print("esqueci");
                },
                child: const Text(
                  "Esqueceu sua senha?",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}