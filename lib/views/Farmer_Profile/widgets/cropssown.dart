part of "../farmerprofile.dart";

class cropssown extends StatelessWidget {
  final String? text;
  cropssown({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 330.0,
      decoration: BoxDecoration(
          border: Border.all(), borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        children: [
          Image.asset("assets/images/crops.png"),
          SizedBox(width: 10.0),
          Text(text ?? ""),
          Spacer(),
          Container(
              height: 30.0,
              width: 90.0,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 122, 0, 1),
                  ),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Center(
                  child: Text(
                "254 t/Ha",
                style: TextStyle(
                  color: Color.fromRGBO(255, 122, 0, 1),
                ),
              ))),
          SizedBox(width: 10.0),
          Icon(Icons.arrow_downward_rounded)
        ],
      ),
    );
  }
}
