part of main_page;

class CleanerDetailContent extends StatelessWidget {
  const CleanerDetailContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.cleanerDetailContentPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Name and Surname"),
              Icon(Icons.star),
              Spacer(),
              CleanerDetailCustomText(
                title: '+100 ${AppLocalizations.of(context)!.work}',
                color: purplePalette.shade300,
              ),
            ],
          ),
          CleanerDetailCustomText(
            title: 'Company',
            color: purplePalette.shade300,
            fontWeight: FontWeight.w300,
          ),
          SizedBox(
            height: context.sizedBoxHeightLow,
          ),
          CleanerDetailCustomText(
            title: AppLocalizations.of(context)!.details,
            color: purplePalette.shade100,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: context.sizedBoxHeightLow,
          ),
          CleanerDetailCustomText(
            title: 'lorem ipsum' * 15,
            color: purplePalette.shade700,
          ),
          SizedBox(
            height: context.sizedBoxHeightLow,
          ),
          CleanerDetailCustomText(
            title: AppLocalizations.of(context)!.address,
            color: purplePalette.shade100,
            fontWeight: FontWeight.w600,
          ),
          Row(
            children: [
              Icon(Icons.location_city),
              SizedBox(width: context.width * 0.02),
              CleanerDetailCustomText(
                title: 'Address',
                color: purplePalette.shade100,
                fontWeight: FontWeight.w300,
              )
            ],
          ),
          SizedBox(
            height: context.sizedBoxHeightHigh,
          ),
          CleanerDetailCustomText(
            title: '100₺/${AppLocalizations.of(context)!.hour}',
            color: purplePalette.shade100,
            fontWeight: FontWeight.w800,
          ),
          SizedBox(
            height: context.sizedBoxHeightLow,
          ),
          CustomElevatedButton(
            buttonText: AppLocalizations.of(context)!.hire,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
