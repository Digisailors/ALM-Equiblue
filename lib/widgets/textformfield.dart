part of "../views/ownershipform.dart";

class textformfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? text;
  final Icon? icon;

  textformfield({this.controller, this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: text ?? "Name",
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: "*", style: TextStyle(color: Colors.red))
                ]),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: icon == null ? Icon(Icons.person) : icon,
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
