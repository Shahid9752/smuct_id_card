import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ID CARD"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 250,
          decoration: const BoxDecoration(
            color: Colors.white70,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://smuct.ac.bd/wp-content/uploads/2020/10/SMUCT-Logo-1-Converted.png',
                  // scale: 5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 4),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(
                          radius: 45,
                          foregroundImage: NetworkImage(
                              'https://scontent.fdac14-1.fna.fbcdn.net/v/t39.30808-6/314458658_1195058511357917_5956438208879649862_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=1b51e3&_nc_eui2=AeEnAIny5xAfcawLqgeqc96SkEgOfGnA2lOQSA58acDaU9HGNUHc7ugGS5zuEeAenNYEwUG9A9qlslh4suwFb6Gv&_nc_ohc=_qobzMXcbRMAX85q7w7&_nc_ht=scontent.fdac14-1.fna&oh=00_AfCaFRLbUHIdbmlUmxLzl1yX_wVDExR35SZpGm_3Y8QKcg&oe=651A3B9B'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Md. Shahidul Islam"),
                    Text(
                      "ID: 192071006",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      "REG.NO.: 192753288",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      "Dept Of Computer Science & Engineering (B.Sc. CSE)",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    Text(
                      "Blood Group: O+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              // const Text(
              //   "Here is the signature of registrar",
              //   style: TextStyle(fontSize: 12),
              // ),
              Image.asset(
                "assets/images/signature.jpg",
                scale: 6,
                fit: BoxFit.fitWidth,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
