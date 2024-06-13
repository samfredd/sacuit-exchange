import 'package:flutter/material.dart';
import 'package:sacuit_exchange/widgets/topbar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopBar(
            title: Text(
              "SETTINGS",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(
            Icons.person_outlined,
            size: 140,
            color: Theme.of(context).primaryColorDark,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: ListView(
                children: const [
                  SettingsTile(
                    icon: Icons.person,
                    title: "Profile",
                  ),
                  SettingsTile(
                    icon: Icons.verified_user,
                    title: "KYC",
                  ),
                  SettingsTile(
                    icon: Icons.security,
                    title: "Security",
                  ),
                  SettingsTile(
                    icon: Icons.send,
                    title: "Transaction imits",
                  ),
                  SettingsTile(
                    icon: Icons.article,
                    title: "About",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final String title;
  final IconData icon;
  const SettingsTile({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 68,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: Theme.of(context).primaryColorDark.withOpacity(0.2),
            )),
        child: Center(
          child: ListTile(
            leading: Icon(
              icon,
              color: Theme.of(context).primaryColorDark.withOpacity(0.8),
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Theme.of(context).primaryColorDark.withOpacity(0.8),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
