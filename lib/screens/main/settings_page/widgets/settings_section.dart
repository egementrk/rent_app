part of main_page;

class SettingsSection extends StatelessWidget {
  const SettingsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: context.paddingLow,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: CustomCircleAvatar(radius: 30),
                ),
                SizedBox(
                  width: context.sizedBoxWidthLow,
                ),
                const Text('Name and Surname')
              ],
            ),
            const Divider(thickness: 1),
            InfoText(
              infoText: AppLocalizations.of(context)!.account_settings,
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.edit_profile,
              widget: Icon(Icons.arrow_back),
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.change_password,
              widget: Icon(Icons.arrow_back),
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.push_notifications,
              widget: SwitchButton(),
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.dark_mode,
              widget: SwitchButton(),
            ),
            const Divider(thickness: 1),
            InfoText(infoText: AppLocalizations.of(context)!.more),
            SettingCard(
              cardText: AppLocalizations.of(context)!.about_us,
              widget: Icon(Icons.arrow_back),
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.privacy_policy,
              widget: Icon(Icons.arrow_back),
            ),
            SettingCard(
              cardText: AppLocalizations.of(context)!.terms_and_conditions,
              widget: Icon(Icons.arrow_back),
            ),
          ],
        ),
      ],
    );
  }
}
