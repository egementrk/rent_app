part of main_page;

class CustomCard extends StatelessWidget {
  String name, company, location, price;
  Function() onTap;
  CustomCard({
    Key? key,
    required this.name,
    required this.company,
    required this.location,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 1,
        color: purplePalette.shade800,
        child: Padding(
          padding: context.paddingLow,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(flex: 2, child: CustomCircleAvatar(radius: 30)),
                  Expanded(
                    flex: 8,
                    child: ListTile(
                      title: Text(name),
                      subtitle: Text(company),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(location),
                  Spacer(),
                  Text('$price/hour'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
