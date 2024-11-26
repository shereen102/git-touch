import 'package:flutter/widgets.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:git_touch/utils/utils.dart';

enum IssueIconState {
  open,
  closed,
  prOpen,
  prClosed,
  prMerged,
}

class IssueIcon extends StatelessWidget {
  const IssueIcon(this.state, {this.size});
  final IssueIconState state;
  final double? size;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case IssueIconState.open:
        return Icon(Octicons.issue_opened,
            color: GithubPalette.open, size: size);
      case IssueIconState.closed:
        return Icon(Octicons.issue_closed,
            color: GithubPalette.closed, size: size);
      case IssueIconState.prOpen:
        return Icon(Octicons.git_pull_request,
            color: GithubPalette.open, size: size);
      case IssueIconState.prClosed:
        return Icon(Octicons.git_pull_request,
            color: GithubPalette.closed, size: size);
      case IssueIconState.prMerged:
        return Icon(Octicons.git_merge,
            color: GithubPalette.merged, size: size);
      default:
        return Container();
    }
  }
}
