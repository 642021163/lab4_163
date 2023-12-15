import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool starEgg = true;
  bool omlet = true;
  bool Menu1 = true;
  bool Menu2 = true;
  bool Menu3 = true;
  String foodRadio = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widget"),
        backgroundColor: Color.fromARGB(255, 53, 236, 227),
      ),
      body: ListView(
        children: [
          radioMenulist("สลัด", "50 บาท"),
          radioMenulist("Pizza", "150 บาท"),
          radioMenulist("ปลาทิพย์", "60 บาท"),
          radioMenulist("ไอศกรีม", "59 บาท"),
          radioMenulist("เฟรนฟรายชีส", "60 บาท"),
          // RadioListTile(
          //   title: Text("เฟรนฟรายชีส"),
          //   subtitle: Text("60 บาท"),
          //   value: "เฟรนฟรายชีส",
          //   groupValue: foodRadio,
          //   onChanged: (value) {
          //     setState(() {
          //       foodRadio = value!;
          //     });
          //     print(foodRadio);
          //   },
          // ),
          // RadioListTile(
          //   title: Text("Pizza"),
          //   subtitle: Text("150 บาท"),
          //   value: "Pizza",
          //   groupValue: foodRadio,
          //   onChanged: (value) {
          //     setState(() {
          //       foodRadio = value!;
          //     });
          //     print(foodRadio);
          //   },
          // ),
          // RadioListTile(
          //   title: Text("ปลาทิพย์"),
          //   subtitle: Text("60 บาท"),
          //   value: "ปลาทิพย์",
          //   groupValue: foodRadio,
          //   onChanged: (value) {
          //     setState(() {
          //       foodRadio = value!;
          //     });
          //     print(foodRadio);
          //   },
          // ),
          // RadioListTile(
          //   title: Text("ไอศกรีม"),
          //   subtitle: Text("59 บาท"),
          //   value: "ไอศกรีม",
          //   groupValue: foodRadio,
          //   onChanged: (value) {
          //     setState(() {
          //       foodRadio = value!;
          //     });
          //     print(foodRadio);
          //   },
          // ),
          Divider(),
          Text(
            "Italian Foods",
            style: TextStyle(
                fontSize: 30,
                backgroundColor: Color.fromARGB(255, 230, 3, 3),
                color: const Color.fromARGB(255, 255, 255, 255)),
          ),
          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("บิสเต็กก้า ฟิออเรนตินา (Bistecca Fiorentina)"),
              subtitle: Text(
                "1,299 Bath",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              value: starEgg,
              onChanged: (value) {
                setState(() {
                  starEgg = value!;
                });
              }),

          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text("บรูสเก็ตต้า (Bruschetta)"),
              subtitle: Text(
                "289 Bath",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              value: omlet,
              onChanged: (value) {
                setState(() {
                  omlet = value!;
                });
              }),

          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title:
                  Text("โคโตเลตต้า อัลลา มิลาเนเซ่ (Cotoletta alla Milanese)"),
              subtitle: Text(
                "329 Bath",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              value: Menu1,
              onChanged: (value) {
                setState(() {
                  Menu1 = value!;
                });
              }),

          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title:
                  Text("เมลานซาเน อัลลา พามิจานา (Melanzane alla Parmigiana)"),
              subtitle: Text(
                "359 Bath",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              value: Menu2,
              onChanged: (value) {
                setState(() {
                  Menu2 = value!;
                });
              }),

          CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(" มิเนสโตรเน (Minestrone)"),
              subtitle: Text(
                "239 Bath",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              value: Menu3,
              onChanged: (value) {
                setState(() {
                  Menu3 = value!;
                });
              }),
        ],
      ),
    );
  }

  RadioListTile<String> radioMenulist(String title, String subtitle) {
    return RadioListTile(
      // activeColor: Color.fromARGB(255, 79, 201, 238),
      // selected: true,
      // selectedTileColor: Color.fromARGB(255, 245, 247, 161),
      title: Text(title),
      subtitle: Text(subtitle),
      value: title,
      groupValue: foodRadio,
      onChanged: (value) {
        setState(() {
          foodRadio = value!;
        });
        print(foodRadio);
      },
    );
  }
}
