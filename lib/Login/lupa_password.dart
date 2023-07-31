import 'package:flutter/material.dart';

class LupaPassword extends StatefulWidget {
  const LupaPassword({Key? key}) : super(key: key);

  @override
  _LupaPasswordState createState() => _LupaPasswordState();
}

class _LupaPasswordState extends State<LupaPassword> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailSent = false;

  void _resetPassword() {
    // Simulasikan logika pengiriman email reset password di sini.
    // Pada implementasi nyata, Anda harus berinteraksi dengan server/email service.
    String email = _emailController.text;
    print('Mengirim email reset password ke: $email');

    // Setelah mengirim email, kita anggap email berhasil dikirim.
    setState(() {
      _isEmailSent = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lupa Password"),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[500],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_isEmailSent)
              const Text("Email reset password telah dikirim.")
            else
              Column(
                children: [
                  const Text("Masukkan email Anda untuk reset password:"),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _resetPassword,
                    child: Text('Kirim Email Reset Password'),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
