import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: const Color(0xffEAEAEA),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 200,), 
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 50,),
                        Text(
                          "Crie a sua conta", 
                          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20,),
                        InputCustom(hintText: "Digite seu nome completo", prefixIcon: Icons.person),
                        SizedBox(height: 20,),
                        InputCustom(hintText: "Digite seu email", prefixIcon: Icons.mail),
                        SizedBox(height: 20,),
                        InputCustom(hintText: "Digite sua senha", prefixIcon: Icons.lock, isPassword: true),
                        SizedBox(height: 20,),
                        InputCustom(hintText: "Confirme sua senha", prefixIcon: Icons.lock, isPassword: true),
                        SizedBox(height: 20,),
                        TipoUsuarioDropdown(),
                        const SizedBox(height: 40), 
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffD69ADE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Cadastrar",
                              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 18),
                            ),
                          ),
                        ), 
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Já possui uma conta?",
                              style: TextStyle(fontSize: 14),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Navegar para a tela de login");
                              },
                              child: Text(
                                " Efetuar Login",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
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

class InputCustom extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final IconData? prefixIcon;
  final TextEditingController? controller;

  const InputCustom({
    super.key,
    required this.hintText,
    this.isPassword = false,
    this.prefixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 13),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        border: InputBorder.none,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: Colors.grey) : null,
      ),
    );
  }
}

class TipoUsuarioDropdown extends StatefulWidget {
  const TipoUsuarioDropdown({super.key});

  @override
  _TipoUsuarioDropdownState createState() => _TipoUsuarioDropdownState();
}

class _TipoUsuarioDropdownState extends State<TipoUsuarioDropdown> {
  String? _selectedTipoUsuario;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.group, color: Colors.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
      ),
      value: _selectedTipoUsuario,
      hint: const Text("Selecione um tipo"),
      items: ["Professor", "Coordenador"].map((String tipo) {
        return DropdownMenuItem<String>(
          value: tipo,
          child: Text(tipo),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          _selectedTipoUsuario = newValue;
        });
      },
    );
  }
}
