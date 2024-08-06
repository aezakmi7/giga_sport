import 'package:flutter/material.dart';
import 'package:giga_sport_flutter/utilities/google_auth.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier userCredential = ValueNotifier('');
    return Center(
      child: ValueListenableBuilder(
        valueListenable: userCredential,
        builder: (context, value, child) {
          return (userCredential.value == '' || userCredential.value == null)
              ? Center(
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      iconSize: 40,
                      icon: Image.asset(
                        'lib/assets/icons/google-icon.png',
                      ),
                      onPressed: () async {
                        userCredential.value = await signInWithGoogle();
                        if (userCredential.value != null)
                          print(userCredential.value.user!.email);
                      },
                    ),
                  ),
                )
              : Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(width: 1.5, color: Colors.black54)),
                        child: Image.network(
                            userCredential.value.user!.photoURL.toString()),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(userCredential.value.user!.displayName.toString()),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(userCredential.value.user!.email.toString()),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                          onPressed: () async {
                            bool result = await signOutFromGoogle();
                            if (result) userCredential.value = '';
                          },
                          child: const Text('Logout'))
                    ],
                  ),
                );
        },
      ),
    );
  }
}
