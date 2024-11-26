import 'dart:core';

import 'package:antd_mobile/antd_mobile.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/S.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:git_touch/utils/utils.dart';
import 'package:git_touch/widgets/branch_name.dart';
import 'package:git_touch/widgets/comment_item.dart';
import 'package:git_touch/widgets/hex_color_tag.dart';
import 'package:gql_github/issue.data.gql.dart';
import 'package:gql_github/schema.schema.gql.dart';

TextSpan createUserSpan(BuildContext context, String? login) {
  return createLinkSpan(context, login, '/github/$login');
}

class TimelineEventItem extends StatelessWidget {
  const TimelineEventItem({
    this.actor,
    this.iconData = Octicons.diamond,
    this.iconColor,
    this.textSpan,
  });
  final String? actor;
  final IconData iconData;
  final Color? iconColor;
  final TextSpan? textSpan;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        const SizedBox(width: 6),
        Icon(iconData, color: iconColor, size: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Text.rich(
            TextSpan(
              style: TextStyle(
                  color: AntTheme.of(context).colorText, fontSize: 16),
              children: [
                // TODO: actor is null
                createUserSpan(context, actor),
                textSpan!,
                // TextSpan(text: ' ' + TimeAgo.formatFromString(item['createdAt']))
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TimelineItem extends StatelessWidget {
  const TimelineItem(this.node);
  final dynamic node;

  Widget _buildFallback(String? type, BuildContext context) {
    return TimelineEventItem(
      actor: '',
      iconData: Octicons.diamond,
      textSpan: TextSpan(children: [
        TextSpan(
            text:
                '$type ${AppLocalizations.of(context)!.timelineTypeNotImplemented}'),
      ]),
    );
  }

  Widget _buildByType(BuildContext context, String? type) {
    switch (type) {
      // common types
      case 'PullRequestCommit':
        final p = node as GPullRequestCommitParts;
        return TimelineEventItem(
          actor: p.commit.author!.user?.login,
          iconData: Octicons.git_commit,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.pullRequestCommitMessage(p.commit.oid.substring(0, 8))} '),
          ]),
        );
      case 'IssueComment':
        return CommentItem.gql(
            node as GCommentParts, node as GReactableParts, (item) {});
      case 'CrossReferencedEvent':
        final p = node as GCrossReferencedEventParts;
        final source = p.source as dynamic;
        final number = source.number;
        final owner = source.repository.owner.login;
        final name = source.repository.name;
        final prefix = p.source.G__typename == 'Issue' ? 'issues' : 'pull';
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.dot_fill,
          iconColor: GithubPalette.open,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.crossReferencedEventMessage} '),
            createLinkSpan(context, '$owner/$name#$number',
                '/github/$owner/$name/$prefix/$number'),
          ]),
        );
      case 'ClosedEvent':
        final p = node as GClosedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.circle_slash,
          iconColor: GithubPalette.closed,
          textSpan: TextSpan(
              text: ' ${AppLocalizations.of(context)!.closedEventMessage} '),
        );

      case 'ReopenedEvent':
        final p = node as GReopenedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.dot_fill,
          iconColor: GithubPalette.open,
          textSpan: TextSpan(
              text: ' ${AppLocalizations.of(context)!.reopenedEventMessage} '),
        );
      case 'SubscribedEvent':
        final p = node as GSubscribedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(
              text:
                  ' ${AppLocalizations.of(context)!.subscribedEventMessage} '),
        );
      case 'UnsubscribedEvent':
        final p = node as GUnsubscribedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(
              text:
                  ' ${AppLocalizations.of(context)!.unsubscribedEventMessage} '),
        );
      case 'ReferencedEvent':
        final p = node as GReferencedEventParts;
        // TODO: isCrossRepository
        if (p.commit == null) {
          return Container();
        }
        if (p.isCrossRepository) {
          return TimelineEventItem(
            actor: p.actor!.login,
            iconData: Octicons.bookmark,
            textSpan: TextSpan(children: [
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.referencedEventMessage(p.commit!.oid.substring(0, 8), p.commitRepository.name)} '),
            ]),
          );
        }
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.bookmark,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.referencedEventMessage(p.commit!.oid.substring(0, 8), '')} '),
          ]),
        );
      case 'AssignedEvent':
        final p = node as GAssignedEventParts;
        final assignee = (p.assignee as dynamic).login;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.key,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.assignedEventMessage} '),
            createLinkSpan(context, assignee, '/github/$assignee'),
          ]),
        );
      case 'UnassignedEvent':
        final p = node as GUnassignedEventParts;
        final assignee = (p.assignee as dynamic).login;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.key,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.unassignedEventMessage} '),
            createLinkSpan(context, assignee, '/github/$assignee')
          ]),
        );
      case 'LabeledEvent':
        final p = node as GLabeledEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.tag,
          textSpan: TextSpan(children: [
            TextSpan(text: ' ${AppLocalizations.of(context)!.added} '),
            WidgetSpan(
                child: HexColorTag(name: p.label.name, color: p.label.color)),
            TextSpan(text: ' ${AppLocalizations.of(context)!.label}'),
          ]),
        );
      case 'UnlabeledEvent':
        final p = node as GUnlabeledEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.tag,
          textSpan: TextSpan(children: [
            TextSpan(text: ' ${AppLocalizations.of(context)!.removed} '),
            WidgetSpan(
                child: HexColorTag(name: p.label.name, color: p.label.color)),
            TextSpan(text: ' ${AppLocalizations.of(context)!.label}'),
          ]),
        );
      case 'MilestonedEvent':
        final p = node as GMilestonedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.milestone,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.milestonedEventMessage(p.milestoneTitle)} '),
          ]),
        );
      case 'DemilestonedEvent':
        final p = node as GDemilestonedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.milestone,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.demilestonedEventMessage(p.milestoneTitle)} '),
          ]),
        );
      case 'RenamedTitleEvent':
        final p = node as GRenamedTitleEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.pencil,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.renamedTitleEventMessage(p.currentTitle)} '),
            TextSpan(
              text: p.previousTitle,
              style: const TextStyle(decoration: TextDecoration.lineThrough),
            ),
          ]),
        );
      case 'LockedEvent':
        final p = node as GLockedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.lock,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.lockedConversationEventMessage} '),
          ]),
        );
      case 'UnlockedEvent':
        final p = node as GUnlockedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.key,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.unlockedConversationEventMessage} '),
          ]),
        );
      case 'TransferredEvent':
        final p = node as GTransferredEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(
            children: [
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.transferredEventMessage(p.fromRepository!.name)} ')
            ],
          ),
        );

      // pull request only types
      case 'CommitCommentThread':
        return _buildFallback(type, context); // TODO:
      case 'PullRequestReview':
        final p = node as GPullRequestReviewParts;
        return Column(
          children: <Widget>[
            TimelineEventItem(
              actor: p.author!.login,
              iconColor: GithubPalette.open,
              iconData: Octicons.check,
              textSpan: p.state == GPullRequestReviewState.APPROVED
                  ? TextSpan(
                      text: ' ${AppLocalizations.of(context)!.approvedChanges}',
                    )
                  : p.state == GPullRequestReviewState.COMMENTED
                      ? TextSpan(
                          text: ' ${AppLocalizations.of(context)!.reviewed} ',
                        )
                      : TextSpan(
                          text: 'xxx', // TODO:
                          style: TextStyle(
                            color: AntTheme.of(context).colorDanger,
                          ),
                        ),
            ),
            Container(
              padding: CommonStyle.padding.copyWith(left: 50),
              child: Column(
                children: <Widget>[
                  for (var v in p.comments.nodes!)
                    CommentItem.gql(v, v, (key) {}),
                ],
              ),
            ),
          ],
        );
      case 'PullRequestReviewThread':
      case 'PullRequestReviewComment':
        return _buildFallback(type, context); // TODO:
      case 'MergedEvent':
        final p = node as GMergedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.git_merge,
          iconColor: GithubPalette.merged,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.mergedEventMessage(p.commit!.oid.substring(0, 8), p.mergeRefName)} '),
          ]),
        );
      case 'MentionedEvent':
        final p = node as GMentionedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.bookmark,
          textSpan: TextSpan(
              text: ' ${AppLocalizations.of(context)!.mentionedEventMessage} '),
        );
      case 'PinnedEvent':
        final p = node as GPinnedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.pin,
          textSpan: TextSpan(
              text: ' ${AppLocalizations.of(context)!.pinnedEventMessage} '),
        );
      case 'DeployedEvent':
        final p = node as GDeployedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(
              text:
                  ' ${AppLocalizations.of(context)!.deployedPR(p.pullRequest.headRef!.name)} '),
        );
      case 'DeploymentEnvironmentChangedEvent':
        final p = node as GDeploymentEnvironmentChangedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(
              text:
                  ' ${AppLocalizations.of(context)!.deploymentEnvironmentChangedEventMessage(p.deploymentStatus.deployment.environment!)} '),
        );
      case 'HeadRefDeletedEvent':
        final p = node as GHeadRefDeletedEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          iconData: Octicons.git_branch,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.headRefDeletedEventMessage(p.headRefName)} '),
          ]),
        );
      case 'HeadRefRestoredEvent':
        final p = node as GHeadRefRestoredEventParts;
        return TimelineEventItem(
          actor: p.actor!.login,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.headRefRestoredEventMessage(p.pullRequest.headRefName)} '),
          ]),
        );
      case 'HeadRefForcePushedEvent':
        final p = node as GHeadRefForcePushedEventParts;
        return TimelineEventItem(
          iconData: Octicons.repo_push,
          actor: p.actor!.login,
          textSpan: TextSpan(
            children: [
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.headRefForcedPushedEventFirstMessage} '),
              WidgetSpan(child: BranchName(p.pullRequest.headRefName)),
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.headRefForcedPushedEventSecondMessage} '),
              TextSpan(
                text: p.beforeCommit!.oid.substring(0, 7),
                style: TextStyle(color: AntTheme.of(context).colorPrimary),
              ),
              TextSpan(text: ' ${AppLocalizations.of(context)!.to} '),
              TextSpan(
                text: p.afterCommit!.oid.substring(0, 7),
                style: TextStyle(color: AntTheme.of(context).colorPrimary),
              ),
            ],
          ),
        );
      case 'BaseRefForcePushedEvent':
        final p = node as GBaseRefForcePushedEventParts;
        return TimelineEventItem(
          iconData: Octicons.repo_push,
          actor: p.actor!.login,
          textSpan: TextSpan(
            children: [
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.headRefForcedPushedEventFirstMessage} '),
              WidgetSpan(child: BranchName(p.pullRequest.baseRef!.name)),
              TextSpan(
                  text:
                      ' ${AppLocalizations.of(context)!.headRefForcedPushedEventSecondMessage} '),
              TextSpan(
                text: p.beforeCommit!.oid.substring(0, 7),
                style: TextStyle(color: AntTheme.of(context).colorPrimary),
              ),
              TextSpan(text: ' ${AppLocalizations.of(context)!.to} '),
              TextSpan(
                text: p.afterCommit!.oid.substring(0, 7),
                style: TextStyle(color: AntTheme.of(context).colorPrimary),
              ),
            ],
          ),
        );
      case 'ReviewRequestedEvent':
        final p = node as GReviewRequestedEventParts;
        return TimelineEventItem(
          iconData: Octicons.eye,
          actor: p.actor!.login,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.reviewRequestEventMessage} '),
            createUserSpan(
                context,
                (p.requestedReviewer
                        as GIssueData_repository_issueOrPullRequest__asPullRequest_timelineItems_nodes__asReviewRequestedEvent_requestedReviewer__asUser)
                    .login),
          ]),
        );
      case 'ReviewRequestRemovedEvent':
        final p = node as GReviewRequestRemovedEventParts;
        return TimelineEventItem(
          iconData: Octicons.eye,
          actor: p.actor!.login,
          textSpan: TextSpan(children: [
            const TextSpan(text: ' removed '),
            createUserSpan(
                context,
                (p.requestedReviewer
                        as GReviewRequestRemovedEventParts_requestedReviewer__asUser)
                    .login),
            TextSpan(
                text: ' ${AppLocalizations.of(context)!.fromReviewRequest} '),
          ]),
        );
      case 'ReviewDismissedEvent':
        final p = node as GReviewDismissedEventParts;
        return TimelineEventItem(
          iconData: Octicons.eye,
          actor: p.actor!.login,
          textSpan: TextSpan(children: [
            TextSpan(
                text:
                    ' ${AppLocalizations.of(context)!.reviewDismissedEventMessage} '),
            createUserSpan(context, p.pullRequest.author!.login),
          ]),
        );
      default:
        return _buildFallback(type, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: CommonStyle.padding,
      child: _buildByType(context, node.G__typename),
    );
  }
}
