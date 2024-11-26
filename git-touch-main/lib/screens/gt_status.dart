import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:git_touch/models/auth.dart';
import 'package:git_touch/scaffolds/refresh_stateful.dart';
import 'package:git_touch/widgets/blob_view.dart';
import 'package:provider/provider.dart';

class GtStatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RefreshStatefulScaffold<String>(
      title: Text(AppLocalizations.of(context)!.giteaStatus),
      fetch: () async {
        final auth = context.read<AuthModel>();
        final res = await Future.wait([
          auth.fetchGitea('/version'),
          auth.fetchGitea('/settings/attachment'),
          auth.fetchGitea('/settings/api'),
          auth.fetchGitea('/settings/repository'),
          auth.fetchGitea('/settings/ui'),
        ]);
        return const JsonEncoder.withIndent('  ').convert({
          ...res[0],
          'attachment': res[1],
          'api': res[2],
          'repository': res[3],
          'ui': res[4],
        });
      },
      bodyBuilder: (jsonStr, _) {
        return BlobView('0.json', text: jsonStr);
      },
    );
  }
}
