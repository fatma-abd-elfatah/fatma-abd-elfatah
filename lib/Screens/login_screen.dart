import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 240, 134, 35)),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 1 / 12,
                        left: 20,
                        right: 20,
                        top: MediaQuery.of(context).size.height * 1 / 12),
                    child: Image.asset(
                      "../../images/1000_F_304248738_S8WFapctkElGLbwxyzfI7aTH9zQ8vUqD.webp",
                      height: MediaQuery.of(context).size.width * 0.5,
                      width: MediaQuery.of(context).size.width * 0.5,
                    ),
                  )),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              height: MediaQuery.of(context).size.height * 0.70,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 239, 236, 236),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Username text field
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "Username",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 18,
                  ),

                  // Password text field
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility_off),
                      hintText: "Password",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      const Text("New to quizz app? "),

                      TextButton(
                          onPressed: () {}, child: const Text("Register"))

                      // GestureDetector(onTap: () {}, child: Text("Register"))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 15,
                              shadowColor: Colors.black,
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Login"))),
                  const SizedBox(
                    height: 10,
                  ),
                  //

                  const Icon(
                    Icons.fingerprint,
                    size: 60,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    "Use Touch ID",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            onChanged: (value) {},
                          ),
                          const Text("Remember me"),
                        ],
                      ),
                      // Expanded(child: SizedBox()),
                      // Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Forget Password?")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
