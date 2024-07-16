part of "farmer_list.dart";

class Farmerlist_card extends StatelessWidget {
  final String? image;
  final String? text;
  final String? plotincome;

  Farmerlist_card({
    super.key,
    this.image,
    this.text,
    this.plotincome,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 108,
      width: 420,
      child: Card(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          color: const Color.fromRGBO(255, 255, 255, 1),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset(
                  image ?? "",
                  height: 58,
                  width: 59,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text ?? "",
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "Location: Vilathikulam",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        plotincome ?? "",
                        style: const TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(60, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)),
                        backgroundColor: const Color.fromRGBO(0, 97, 228, 1)),
                    onPressed: () {},
                    child: const Text(
                      "View Map",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          )),
    );
  }
}
