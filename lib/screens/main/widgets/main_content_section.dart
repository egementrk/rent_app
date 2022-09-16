part of main_page;

class MainContentSection extends StatelessWidget {
  const MainContentSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserModel>>(
      future: fetchUsers(http.Client()),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("æ"),
          );
        } else if (snapshot.hasData) {
          List<UserModel> userList = snapshot.data!;
          return Padding(
            padding: context.paddingLow,
            child: Column(
              children: [
                Row(
                  children: [
                    Text('${snapshot.data!.length} CLEANER RELEVANT TO YOU'),
                    Spacer(),
                    Text('All Revelance'),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CustomCard(
                        name: userList[index].name!,
                        company: userList[index].provider!,
                        location: userList[index].location!,
                        price: "400",
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CleanerDetailPage(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
