import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:git_touch/models/auth.dart';
import 'package:git_touch/models/gitlab.dart';
import 'package:git_touch/scaffolds/refresh_stateful.dart';
import 'package:git_touch/utils/utils.dart';
import 'package:git_touch/widgets/action_entry.dart';
import 'package:git_touch/widgets/blob_view.dart';
import 'package:provider/provider.dart';

class GlBlobScreen extends StatelessWidget {
  const GlBlobScreen(this.id, this.ref, {this.path});
  final int id;
  final String ref;
  final String? path;

  @override
  Widget build(BuildContext context) {
    return RefreshStatefulScaffold<GitlabBlob>(
      title: Text(path ?? ''),
      fetch: () async {
        final auth = context.read<AuthModel>();
        final res = await auth.fetchGitlab(
            '/projects/$id/repository/files/${path!.urlencode}?ref=$ref');
        return GitlabBlob.fromJson(res);
      },
      action:
          const ActionEntry(iconData: Ionicons.cog, url: '/choose-code-theme'),
      bodyBuilder: (data, _) {
        return BlobView(path, base64Text: data.content);
      },
    );
  }
}
