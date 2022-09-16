part of main_page;

class CustomCircleAvatar extends StatelessWidget {
  final double? radius;
  const CustomCircleAvatar({
    Key? key,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage('https://picsum.photos/250?image=9'),
      radius: radius,
    );
  }
}
