import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class FrameAuthUser {
  FrameAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<FrameAuthUser> frameAuthUserSubject =
    BehaviorSubject.seeded(FrameAuthUser(loggedIn: false));
Stream<FrameAuthUser> frameAuthUserStream() =>
    frameAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
