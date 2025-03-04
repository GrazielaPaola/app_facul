import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        InputCustom(label: "Email"),
                        SizedBox(
                          height: 30,
                        ),
                        InputCustom(label: "Senha", isPassword: true),
                        const SizedBox(
                            height:
                                40), 
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xffD69ADE), 
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Borda arredondada**
                              ),
                            ),
                            child: const Text(
                              "Login",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ), 
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ainda não possui uma conta? ",
                              style: TextStyle(fontSize: 14),
                            ),
                            GestureDetector(
                              onTap: () {
                                
                                print("Navegar para a tela de cadastro");
                              },
                              child: Text(
                                "Cadastrar-se",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue, 
                                  decoration: TextDecoration
                                      .underline, 
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 46,
            child: SvgPicture.asset("assets/moca25.svg"),
          )
        ],
      ),
    );
  }
}

class InputCustom extends StatefulWidget {
  // Mudamos para StatefulWidget
  final String label;
  final bool isPassword;

  const InputCustom({
    super.key,
    required this.label,
    this.isPassword = false, 
  });

  @override
  _InputCustomState createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  bool _isObscured = true; 

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextField(
          obscureText:
              widget.isPassword ? _isObscured : false, 
          decoration: InputDecoration(
            hintText: "Digite aqui...",
            hintStyle: const TextStyle(fontSize: 13),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey), 
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue), 
            ),
            border: InputBorder.none,
            
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscured = !_isObscured; 
                      });
                    },
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
