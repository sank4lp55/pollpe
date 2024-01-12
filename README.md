# pollpe

A new day, a new Flutter project.

## Getting Started

The project is aimed to onboard a new user to the PollPe App as well as sign-in an already existing user to the app.

I have used GetX for navigation and state management along with Firebase for Google Sign-in.

## The flow of the app is as followed:

Welcome Screen(welcome.dart) -> (Google sign-up(New User)->Details Screen(details.dart)->Verify Phone Number(Trucaller verification or Through Entering Phone Number Manually(add_phone_number.dart) -> OTP Verification(otp.dart)) -> Confirm Password screen(password.dart) or Signing in(Through google sign-in or entering details manually)) -> Navigation Container having multiple screens(Homepage(homepage.dart),Profile(profile.dart));

## Packages used:

  flutter_svg: ^2.0.9<br/>
  get: ^4.6.5<br/>
  google_sign_in: ^6.1.5<br/>
  firebase_core: ^2.17.0<br/>
  firebase_auth: ^4.10.1<br/>



# pollpe
