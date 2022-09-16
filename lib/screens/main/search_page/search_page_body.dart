part of main_page;

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.whiteBackgroundMainPadding,
      child: WhiteForegroundSection(
        height: context.height / 1.20,
        widget: ListView(
          padding: context.paddingLow,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          children: [
            Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.search,
                    filled: true,
                    fillColor: Colors.black12,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
