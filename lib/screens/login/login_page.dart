//Library
library login_page;

//Imports
import 'package:altogic_orange/components/context_extension.dart';
import 'package:altogic_orange/core/provider/email_provider.dart';
import 'package:altogic_orange/core/services/code_verification_service.dart';
import 'package:altogic_orange/core/services/login_service.dart';
import 'package:altogic_orange/core/services/password_change.dart';
import 'package:altogic_orange/core/services/signup_service.dart';
import 'package:altogic_orange/core/services/verification_email_send.dart';
import 'package:altogic_orange/core/theme/constants.dart';
import 'package:altogic_orange/screens/login/widgets/custom_elevated_button.dart';
import 'package:altogic_orange/screens/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/context_extension.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//Parts
part 'widgets/login_body.dart';
part 'code_verify/code_verify_page.dart';
part 'forgot_password/forgot_password_page.dart';
part 'widgets/forgot_password_section.dart';
part 'widgets/login_signup_appbar.dart';
part 'widgets/login_signup_header.dart';
part 'widgets/custom_text_field.dart';
part 'widgets/custom_connection_button.dart';
part 'widgets/divider_section.dart';
part 'widgets/page_subtitle.dart';
part 'sign_up/sign_up_page.dart';
part 'sign_up/sign_up_body.dart';
part 'forgot_password/forgot_password_body.dart';
part 'widgets/custom_head.dart';
part 'code_verify/code_verify_body.dart';
part 'change_password/change_password_page.dart';
part 'change_password/change_password_body.dart';

void main() async {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundSection(
          height: context.height * 0.70,
        ),
        Padding(
          padding: context.whiteBackgroundLoginPadding,
          child: WhiteForegroundSection(
            widget: LoginBody(),
            height: context.height * 0.85,
          ),
        ),
      ]),
    );
  }
}
