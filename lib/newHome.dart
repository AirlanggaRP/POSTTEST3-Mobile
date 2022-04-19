import 'package:flutter/material.dart';
import 'package:custom_check_box/custom_check_box.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';

class newHome extends StatefulWidget {
  const newHome({ Key? key }) : super(key: key);

  @override
  State<newHome> createState() => _newHomeState();
}

class _newHomeState extends State<newHome> {

  bool? sepatu1 = false;
  bool? sepatu2 = false;
  
  Object pilih = "";

  String nama = "", alamat = "";

  final namaController = TextEditingController();
  final alamatController = TextEditingController();

  void dispose() {
    // TODO: implement dispose
    namaController.dispose();
    alamatController.dispose();
    super.dispose();
  }

  Widget inpNama(){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: namaController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Nama Lengkap',
            ),
          ),
        ),
      ],
    );
  }

  Widget inpAlamat(){
      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: TextField(
            controller: alamatController,
            maxLines : 3,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Alamat',
            ),
          ),
        ),
      ],
    );
  }

  Widget myContainer(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("sepatu1.png")
        ),
      ),
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          Text("Timeless Low Black White",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Rp. 210.000",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              height: 20,
            ),
            CustomCheckBox(
              value: sepatu1!,
              shouldShowBorder: true,
              borderColor: Colors.red,
              checkedFillColor: Colors.red,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 22,
              onChanged: (bool? val) {
                //do your stuff here
                setState(() {
                  sepatu1 = val;
                });
              },
            ),
            Text("BUY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }

  Widget myContainer2(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 70
      ),
      width: lebar,
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("sepatu2.png")
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Gavin Navy White STZ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Rp. 200.000",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
              height: 20,
            ),
            CustomCheckBox(
              value: sepatu2!,
              shouldShowBorder: true,
              borderColor: Colors.red,
              checkedFillColor: Colors.red,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 22,
              onChanged: (bool? val) {
                //do your stuff here
                setState(() {
                  sepatu2 = val;
                });
              },
            ),
            Text("BUY",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ) 
    );
  }


  Widget sizeRadio(){
    return Container(
      child : Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Ukuran',
                style: TextStyle(fontSize: 15,
                letterSpacing: 5,
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CustomRadioButton(
                elevation: 0,
                wrapAlignment: WrapAlignment.spaceAround,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  '39',
                  '40',
                  '41',
                ],
                buttonValues: [
                  "39",
                  "40",
                  "41",
                ],
                buttonTextStyle: ButtonTextStyle(  
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: Theme.of(context).textTheme.bodyText1,
                ),
                radioButtonValue: (value) {
                  setState(() {
                    pilih = value!;
                  });
                },
                selectedColor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget tampil(BuildContext context){
    
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Container(
      width: lebar/1.2,
      height: tinggi/2.5,
      margin: EdgeInsets.only(
        bottom: 50,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
          width: 5,
        )
      ),
      child : Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nama Lengkap : $nama",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Alamat : $alamat",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Pesanan : ${sepatu1! ? "Timeless Low Black White" : ""} ${sepatu2! ? "Gavin Navy White STZ" : ""}",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Ukuran : $pilih",
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 5,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget tambah(BuildContext context){
    var lebar = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30, top: 50, left: 50, right: 50
      ),
      width: lebar,
      height: 100,
      
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          textStyle: TextStyle(
            letterSpacing: 5,
            
            fontStyle: FontStyle.italic,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          primary: Colors.black,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15))
          )
        ),
        onPressed: () {
          setState(() {
            nama = namaController.text;
            alamat = alamatController.text;
            tampil(context);
          });
        }, 
        child: Text("ORDER NOW"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Posttest 3 Airlangga Rahimah Putra",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ), 
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // myContainer(),
              // sizeSepatu(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    myContainer(context),
                    myContainer2(context),
                  ],
                ),
              ),
              inpNama(),
              inpAlamat(),
              sizeRadio(),
              tambah(context),
              tampil(context),
            ],
          ),
        ],
      ),
    );
  }
}