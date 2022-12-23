import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  SampleItemDetailsView({super.key});
// news
  static const routeName = '/sample_item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildUsernameField(),
            _buildPasswordField(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        
      },),
    );
  }

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Widget _buildUsernameField() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(35.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              // borderSide: BorderSide(),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            isDense: true,
            labelText: "Username",
            filled: true,
            fillColor: Color(0XFFFFFFFF),
          ),
          // style: GoogleFonts.poppins(
          //   fontSize: textFielsFontSize,
          //   fontWeight: FontWeight.normal,
          //   color: const Color(0XFF5DA78C),
          // ),
          controller: usernameController,
          textInputAction: TextInputAction.next,
          onFieldSubmitted: (term) {},
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter a Username';
            }
            return null;
          },
          onSaved: (value) {},
        ),
      ),
    );
  }

  Widget _buildPasswordField() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFFFFFFF),
        borderRadius: BorderRadius.all(
          Radius.circular(35.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              // borderSide: BorderSide(),
              borderRadius: BorderRadius.all(
                Radius.circular(35.0),
              ),
            ),
            isDense: true,
            labelText: "Password",
            filled: true,
            fillColor: Color(0XFFFFFFFF),
          ),
          obscureText: true,
          // style: GoogleFonts.poppins(
          //   fontSize: textFielsFontSize,
          //   fontWeight: FontWeight.normal,
          //   color: const Color(0XFF5DA78C),
          // ),
          controller: passwordController,
          textInputAction: TextInputAction.done,
          // focusNode: txtPasswordNode,
          onFieldSubmitted: (term) {},
          onChanged: ((value) {}),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Enter a Password';
            }
            return null;
          },
          onSaved: (value) {},
        ),
      ),
    );
  }
}
