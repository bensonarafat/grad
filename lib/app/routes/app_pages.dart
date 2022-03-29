import 'package:get/route_manager.dart';
import 'package:grad/app/bindings/account/account_binding.dart';
import 'package:grad/app/bindings/account/change_password_binding.dart';
import 'package:grad/app/bindings/account/edit_profile_binding.dart';
import 'package:grad/app/bindings/auth/auth_manager_binding.dart';
import 'package:grad/app/bindings/auth/change_password_binding.dart';
import 'package:grad/app/bindings/auth/create_account_binding.dart';
import 'package:grad/app/bindings/auth/forgotten_password_binding.dart';
import 'package:grad/app/bindings/auth/login_binding.dart';
import 'package:grad/app/bindings/auth/verify_account_binding.dart';
import 'package:grad/app/bindings/calendar/new_event_binding.dart';
import 'package:grad/app/bindings/chats/conversation_binding.dart';
import 'package:grad/app/bindings/home/home_binding.dart';
import 'package:grad/app/bindings/navigation/navigation_binding.dart';
import 'package:grad/app/bindings/others/success-page-binding.dart';
import 'package:grad/app/bindings/settings/settings_binding.dart';
import 'package:grad/app/bindings/start/welcome_binding.dart';
import 'package:grad/app/routes/app_routes.dart';
import 'package:grad/app/ui/android/screen/account/change_password.dart';
import 'package:grad/app/ui/android/screen/account/edit-profile.dart';
import 'package:grad/app/ui/android/screen/auth/change-password.dart';
import 'package:grad/app/ui/android/screen/auth/create_account.dart';
import 'package:grad/app/ui/android/screen/auth/forgotten_password.dart';
import 'package:grad/app/ui/android/screen/auth/login.dart';
import 'package:grad/app/ui/android/screen/auth/verify-account.dart';
import 'package:grad/app/ui/android/screen/calendar/new_event.dart';
import 'package:grad/app/ui/android/screen/onboard.dart';
import 'package:grad/app/ui/android/screen/settings/bugs.dart';
import 'package:grad/app/ui/android/screen/settings/school_configuration.dart';
import 'package:grad/app/ui/android/screen/settings/session.dart';
import 'package:grad/app/ui/android/screen/settings/stamp.dart';
import 'package:grad/app/ui/android/screen/settings/term.dart';
import 'package:grad/app/ui/android/screen/success-page.dart';
import 'package:grad/app/ui/android/widgets/chat/conversation.dart';

import '../ui/android/screen/settings/notification.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => OnBoard(),
      bindings: [
        AuthManagerBinding(),
        WelcomeBinding(),
        NavigationBinding(),
        HomeBinding(),
        AccountBinding(),
      ],
    ),
    GetPage(
      name: Routes.CONVERSATION,
      page: () => Conversation(),
      binding: ConversationBinding(),
    ),
    GetPage(
      name: Routes.NEW_EVENT,
      page: () => NewEvent(),
      binding: NewEventBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => Login(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.FORGOTTEN_PASSWORD,
      page: () => ForgottenPassword(),
      binding: ForgottenPasswordBinding(),
    ),
    GetPage(
      name: Routes.CREATE_ACCOUNT,
      page: () => CreateAccount(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: Routes.VERIFY_ACCOUNT,
      page: () => VerifyAccount(),
      binding: VerifyAccountBinding(),
    ),
    GetPage(
      name: Routes.CHANGE_PASSWORD,
      page: () => ChangePassword(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: Routes.CHANGE_PASSWORD_ACCOUNT,
      page: () => ChangePasswordAccount(),
      binding: ChangePasswordAccountBinding(),
    ),
    GetPage(
      name: Routes.EDIT_PROFILE,
      page: () => EditProfle(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: Routes.SUCCESS_PAGE,
      page: () => SuccessPage(),
      binding: SuccessPageBinding(),
    ),
    GetPage(
      name: Routes.SCHOOL_CONFIGURATION,
      page: () => SchoolConfiguration(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.SESSION,
      page: () => Session(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.TERM,
      page: () => Term(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.STAMP,
      page: () => Stamp(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.NOTIFICATIONS_SETTINGS,
      page: () => Notification(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: Routes.BUGS,
      page: () => Bugs(),
      binding: SettingsBinding(),
    ),
  ];
}
