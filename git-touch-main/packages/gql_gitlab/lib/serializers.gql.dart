// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:gql_gitlab/project.data.gql.dart'
    show GProjectData, GProjectData_project, GProjectData_project_statistics;
import 'package:gql_gitlab/project.req.gql.dart' show GProjectReq;
import 'package:gql_gitlab/project.var.gql.dart' show GProjectVars;
import 'package:gql_gitlab/schema.schema.gql.dart'
    show
        GAccessLevelEnum,
        GAddProjectToSecurityDashboardInput,
        GAdminSidekiqQueuesDeleteJobsInput,
        GAgentTokenStatus,
        GAlertManagementAlertSort,
        GAlertManagementDomainFilter,
        GAlertManagementHttpIntegrationID,
        GAlertManagementIntegrationType,
        GAlertManagementPayloadAlertFieldInput,
        GAlertManagementPayloadAlertFieldName,
        GAlertManagementPayloadAlertFieldType,
        GAlertManagementSeverity,
        GAlertManagementStatus,
        GAlertSetAssigneesInput,
        GAlertTodoCreateInput,
        GAnalyticsDevopsAdoptionEnabledNamespaceID,
        GApiFuzzingCiConfigurationCreateInput,
        GApiFuzzingScanMode,
        GAppSecFuzzingCoverageCorpusID,
        GApprovalRuleType,
        GArtifactDestroyInput,
        GAssigneeWildcardId,
        GAuditEventsExternalAuditEventDestinationID,
        GAuditEventsStreamingHeaderID,
        GAuditEventsStreamingHeadersCreateInput,
        GAuditEventsStreamingHeadersDestroyInput,
        GAuditEventsStreamingHeadersUpdateInput,
        GAvailabilityEnum,
        GAwardEmojiAddInput,
        GAwardEmojiRemoveInput,
        GAwardEmojiToggleInput,
        GAwardableID,
        GBigInt,
        GBlobViewersType,
        GBoardEpicCreateInput,
        GBoardID,
        GBoardIssueInput,
        GBoardListCreateInput,
        GBoardListUpdateLimitMetricsInput,
        GBoardsEpicBoardID,
        GBoardsEpicListID,
        GBulkEnableDevopsAdoptionNamespacesInput,
        GBulkRunnerDeleteInput,
        GCiBuildID,
        GCiCdSettingsUpdateInput,
        GCiConfigIncludeType,
        GCiConfigStatus,
        GCiJobArtifactID,
        GCiJobKind,
        GCiJobStatus,
        GCiJobTokenScopeAddProjectInput,
        GCiJobTokenScopeRemoveProjectInput,
        GCiPipelineID,
        GCiRunnerAccessLevel,
        GCiRunnerID,
        GCiRunnerMembershipFilter,
        GCiRunnerSort,
        GCiRunnerStatus,
        GCiRunnerType,
        GCiRunnerUpgradeStatus,
        GCiVariableInput,
        GCiVariableType,
        GClusterAgentDeleteInput,
        GClusterAgentTokenCreateInput,
        GClusterAgentTokenRevokeInput,
        GClustersAgentID,
        GClustersAgentTokenID,
        GClustersClusterID,
        GCodeQualityDegradationSeverity,
        GColor,
        GCommitAction,
        GCommitActionMode,
        GCommitCreateInput,
        GCommitEncoding,
        GComplianceFrameworkInput,
        GComplianceManagementFrameworkID,
        GComplianceViolationInput,
        GComplianceViolationReason,
        GComplianceViolationSeverity,
        GComplianceViolationSort,
        GConanMetadatumFileTypeEnum,
        GConfigureContainerScanningInput,
        GConfigureDependencyScanningInput,
        GConfigureSastIacInput,
        GConfigureSastInput,
        GConfigureSecretDetectionInput,
        GContactSort,
        GContainerExpirationPolicyCadenceEnum,
        GContainerExpirationPolicyKeepEnum,
        GContainerExpirationPolicyOlderThanEnum,
        GContainerRepositoryCleanupStatus,
        GContainerRepositoryID,
        GContainerRepositorySort,
        GContainerRepositoryStatus,
        GContainerRepositoryTagSort,
        GCorpusCreateInput,
        GCreateAlertIssueInput,
        GCreateAnnotationInput,
        GCreateBoardInput,
        GCreateBranchInput,
        GCreateClusterAgentInput,
        GCreateComplianceFrameworkInput,
        GCreateCustomEmojiInput,
        GCreateDiffNoteInput,
        GCreateEpicInput,
        GCreateImageDiffNoteInput,
        GCreateIssueInput,
        GCreateIterationInput,
        GCreateNoteInput,
        GCreateRequirementInput,
        GCreateSnippetInput,
        GCreateTestCaseInput,
        GCustomEmojiID,
        GCustomerRelationsContactCreateInput,
        GCustomerRelationsContactID,
        GCustomerRelationsContactState,
        GCustomerRelationsContactUpdateInput,
        GCustomerRelationsOrganizationCreateInput,
        GCustomerRelationsOrganizationID,
        GCustomerRelationsOrganizationState,
        GCustomerRelationsOrganizationUpdateInput,
        GDastOnDemandScanCreateInput,
        GDastProfileCadenceInput,
        GDastProfileCadenceUnit,
        GDastProfileCreateInput,
        GDastProfileDeleteInput,
        GDastProfileID,
        GDastProfileRunInput,
        GDastProfileScheduleID,
        GDastProfileScheduleInput,
        GDastProfileUpdateInput,
        GDastScanMethodType,
        GDastScanTypeEnum,
        GDastScannerProfileCreateInput,
        GDastScannerProfileDeleteInput,
        GDastScannerProfileID,
        GDastScannerProfileUpdateInput,
        GDastSiteProfileAuthInput,
        GDastSiteProfileCreateInput,
        GDastSiteProfileDeleteInput,
        GDastSiteProfileID,
        GDastSiteProfileUpdateInput,
        GDastSiteProfileValidationStatusEnum,
        GDastSiteTokenCreateInput,
        GDastSiteTokenID,
        GDastSiteValidationCreateInput,
        GDastSiteValidationID,
        GDastSiteValidationRevokeInput,
        GDastSiteValidationStatusEnum,
        GDastSiteValidationStrategyEnum,
        GDastTargetTypeEnum,
        GDataVisualizationColorEnum,
        GDataVisualizationWeightEnum,
        GDate,
        GDeleteAnnotationInput,
        GDependencyProxyManifestID,
        GDependencyProxyManifestStatus,
        GDeploymentStatus,
        GDeploymentTier,
        GDeploymentsOrderByInput,
        GDesignCollectionCopyState,
        GDesignManagementDeleteInput,
        GDesignManagementDesignAtVersionID,
        GDesignManagementDesignID,
        GDesignManagementMoveInput,
        GDesignManagementUploadInput,
        GDesignManagementVersionID,
        GDesignVersionEvent,
        GDestroyBoardInput,
        GDestroyBoardListInput,
        GDestroyComplianceFrameworkInput,
        GDestroyContainerRepositoryInput,
        GDestroyContainerRepositoryTagsInput,
        GDestroyCustomEmojiInput,
        GDestroyEpicBoardInput,
        GDestroyNoteInput,
        GDestroyPackageFileInput,
        GDestroyPackageFilesInput,
        GDestroyPackageInput,
        GDestroySnippetInput,
        GDetailedMergeStatus,
        GDiffImagePositionInput,
        GDiffNoteID,
        GDiffPathsInput,
        GDiffPositionInput,
        GDiffPositionType,
        GDisableDevopsAdoptionNamespaceInput,
        GDiscussionID,
        GDiscussionToggleResolveInput,
        GDoraMetricBucketingInterval,
        GDoraMetricType,
        GDuration,
        GEchoCreateInput,
        GEnableDevopsAdoptionNamespaceInput,
        GEntryType,
        GEnvironmentID,
        GEnvironmentsCanaryIngressUpdateInput,
        GEpicAddIssueInput,
        GEpicBoardCreateInput,
        GEpicBoardListCreateInput,
        GEpicBoardListDestroyInput,
        GEpicBoardUpdateInput,
        GEpicFilters,
        GEpicID,
        GEpicMoveListInput,
        GEpicSetSubscriptionInput,
        GEpicSort,
        GEpicState,
        GEpicStateEvent,
        GEpicTreeNodeFieldsInputType,
        GEpicTreeReorderInput,
        GEpicTreeSortingID,
        GEpicWildcardId,
        GEscalationPolicyCreateInput,
        GEscalationPolicyDestroyInput,
        GEscalationPolicyUpdateInput,
        GEscalationRuleInput,
        GEscalationRuleStatus,
        GEventAction,
        GExportRequirementsInput,
        GExternalAuditEventDestinationCreateInput,
        GExternalAuditEventDestinationDestroyInput,
        GExternalAuditEventDestinationUpdateInput,
        GGitlabErrorTrackingDetailedErrorID,
        GGitlabSubscriptionActivateInput,
        GGlobalID,
        GGroupID,
        GGroupMemberRelation,
        GGroupPermission,
        GGroupUpdateInput,
        GHealthStatus,
        GHealthStatusFilter,
        GHttpIntegrationCreateInput,
        GHttpIntegrationDestroyInput,
        GHttpIntegrationResetTokenInput,
        GHttpIntegrationUpdateInput,
        GISO8601Date,
        GIncidentManagementEscalationPolicyID,
        GIncidentManagementEscalationRuleID,
        GIncidentManagementIssuableResourceLinkID,
        GIncidentManagementOncallParticipantID,
        GIncidentManagementOncallRotationID,
        GIncidentManagementTimelineEventID,
        GIntegrationsPrometheusID,
        GIssuableID,
        GIssuableResourceLinkCreateInput,
        GIssuableResourceLinkDestroyInput,
        GIssuableResourceLinkType,
        GIssuableSearchableField,
        GIssuableSeverity,
        GIssuableState,
        GIssueCreationIterationWildcardId,
        GIssueEscalationStatus,
        GIssueID,
        GIssueMoveInput,
        GIssueMoveListInput,
        GIssueSetAssigneesInput,
        GIssueSetConfidentialInput,
        GIssueSetCrmContactsInput,
        GIssueSetDueDateInput,
        GIssueSetEpicInput,
        GIssueSetEscalationPolicyInput,
        GIssueSetEscalationStatusInput,
        GIssueSetIterationInput,
        GIssueSetLockedInput,
        GIssueSetSeverityInput,
        GIssueSetSubscriptionInput,
        GIssueSetWeightInput,
        GIssueSort,
        GIssueState,
        GIssueStateEvent,
        GIssueType,
        GIterationCadenceCreateInput,
        GIterationCadenceDestroyInput,
        GIterationCadenceUpdateInput,
        GIterationDeleteInput,
        GIterationID,
        GIterationSearchableField,
        GIterationSort,
        GIterationState,
        GIterationWildcardId,
        GIterationsCadenceID,
        GJSON,
        GJiraImportStartInput,
        GJiraImportUsersInput,
        GJiraUsersMappingInputType,
        GJobArtifactFileType,
        GJobArtifactsDestroyInput,
        GJobCancelInput,
        GJobID,
        GJobPlayInput,
        GJobRetryInput,
        GJobUnscheduleInput,
        GJsonString,
        GLabelCreateInput,
        GLabelID,
        GListID,
        GListLimitMetric,
        GMarkAsSpamSnippetInput,
        GMeasurementIdentifier,
        GMemberSort,
        GMergeRequestAcceptInput,
        GMergeRequestCreateInput,
        GMergeRequestID,
        GMergeRequestNewState,
        GMergeRequestReviewState,
        GMergeRequestReviewerRereviewInput,
        GMergeRequestSetAssigneesInput,
        GMergeRequestSetDraftInput,
        GMergeRequestSetLabelsInput,
        GMergeRequestSetLockedInput,
        GMergeRequestSetMilestoneInput,
        GMergeRequestSetReviewersInput,
        GMergeRequestSetSubscriptionInput,
        GMergeRequestSort,
        GMergeRequestState,
        GMergeRequestUpdateInput,
        GMergeRequestsResolverNegatedParams,
        GMergeStatus,
        GMergeStrategyEnum,
        GMetricsDashboardAnnotationID,
        GMilestoneID,
        GMilestoneSort,
        GMilestoneStateEnum,
        GMilestoneWildcardId,
        GMoveType,
        GMutationOperationMode,
        GNamespaceBanDestroyInput,
        GNamespaceCiCdSettingsUpdateInput,
        GNamespaceID,
        GNamespaceIncreaseStorageTemporarilyInput,
        GNamespaceProjectSort,
        GNamespacesNamespaceBanID,
        GNegatedBoardIssueInput,
        GNegatedEpicBoardIssueInput,
        GNegatedEpicFilterInput,
        GNegatedIssueFilterInput,
        GNegatedIterationWildcardId,
        GNegatedMilestoneWildcardId,
        GNetworkPolicyKind,
        GNoteID,
        GNoteableID,
        GOncallRotationActivePeriodInputType,
        GOncallRotationCreateInput,
        GOncallRotationDateInputType,
        GOncallRotationDestroyInput,
        GOncallRotationLengthInputType,
        GOncallRotationUnitEnum,
        GOncallRotationUpdateInput,
        GOncallScheduleCreateInput,
        GOncallScheduleDestroyInput,
        GOncallScheduleUpdateInput,
        GOncallUserInputType,
        GOrganizationSort,
        GPackageDependencyType,
        GPackageGroupSort,
        GPackageSort,
        GPackageStatus,
        GPackageTypeEnum,
        GPackagesCleanupKeepDuplicatedPackageFilesEnum,
        GPackagesConanFileMetadatumID,
        GPackagesConanMetadatumID,
        GPackagesDependencyID,
        GPackagesDependencyLinkID,
        GPackagesMavenMetadatumID,
        GPackagesNugetDependencyLinkMetadatumID,
        GPackagesNugetMetadatumID,
        GPackagesPackageFileID,
        GPackagesPackageID,
        GPackagesPypiMetadatumID,
        GPagesMarkOnboardingCompleteInput,
        GPathLockID,
        GPayloadAlertFieldPathSegment,
        GPipelineCancelInput,
        GPipelineConfigSourceEnum,
        GPipelineDestroyInput,
        GPipelineMergeRequestEventType,
        GPipelineRetryInput,
        GPipelineScheduleStatus,
        GPipelineScopeEnum,
        GPipelineStatusEnum,
        GProjectCiCdSettingsUpdateInput,
        GProjectID,
        GProjectMemberRelation,
        GProjectSetComplianceFrameworkInput,
        GProjectSetLockedInput,
        GPrometheusIntegrationCreateInput,
        GPrometheusIntegrationResetTokenInput,
        GPrometheusIntegrationUpdateInput,
        GPromoteToEpicInput,
        GRegistryState,
        GReleaseAssetLinkCreateInput,
        GReleaseAssetLinkDeleteInput,
        GReleaseAssetLinkInput,
        GReleaseAssetLinkType,
        GReleaseAssetLinkUpdateInput,
        GReleaseAssetsInput,
        GReleaseCreateInput,
        GReleaseDeleteInput,
        GReleaseID,
        GReleaseSort,
        GReleaseTagWildcardId,
        GReleaseUpdateInput,
        GReleasesLinkID,
        GRemoveProjectFromSecurityDashboardInput,
        GReplicationStateEnum,
        GRepositionImageDiffNoteInput,
        GRequirementState,
        GRequirementStatusFilter,
        GRunnerDeleteInput,
        GRunnerUpdateInput,
        GRunnersRegistrationTokenResetInput,
        GSastCiConfigurationAnalyzersEntityInput,
        GSastCiConfigurationEntityInput,
        GSastCiConfigurationInput,
        GSastUiComponentSize,
        GSavedReplyCreateInput,
        GSavedReplyDestroyInput,
        GSavedReplyUpdateInput,
        GScanExecutionPolicyCommitInput,
        GScanStatus,
        GSecurityFindingCreateIssueInput,
        GSecurityFindingDismissInput,
        GSecurityPolicyProjectAssignInput,
        GSecurityPolicyProjectCreateInput,
        GSecurityPolicyProjectUnassignInput,
        GSecurityPolicyRelationType,
        GSecurityReportTypeEnum,
        GSecurityScannerType,
        GSecurityTrainingProviderID,
        GSecurityTrainingUpdateInput,
        GSentryErrorStatus,
        GServiceType,
        GShaFormat,
        GSharedRunnersSetting,
        GSnippetBlobActionEnum,
        GSnippetBlobActionInputType,
        GSnippetID,
        GSort,
        GSortDirectionEnum,
        GTerraformStateDeleteInput,
        GTerraformStateID,
        GTerraformStateLockInput,
        GTerraformStateUnlockInput,
        GTestCaseStatus,
        GTestReportState,
        GTime,
        GTimeboxReportErrorReason,
        GTimeframe,
        GTimelineEventCreateInput,
        GTimelineEventDestroyInput,
        GTimelineEventPromoteFromNoteInput,
        GTimelineEventUpdateInput,
        GTimelogCreateInput,
        GTimelogDeleteInput,
        GTimelogID,
        GTodoActionEnum,
        GTodoCreateInput,
        GTodoID,
        GTodoMarkDoneInput,
        GTodoRestoreInput,
        GTodoRestoreManyInput,
        GTodoStateEnum,
        GTodoTargetEnum,
        GTodoableID,
        GTodosMarkAllDoneInput,
        GTrainingUrlRequestStatus,
        GTypeEnum,
        GUntrustedRegexp,
        GUpdateAlertStatusInput,
        GUpdateBoardEpicUserPreferencesInput,
        GUpdateBoardInput,
        GUpdateBoardListInput,
        GUpdateComplianceFrameworkInput,
        GUpdateContainerExpirationPolicyInput,
        GUpdateDependencyProxyImageTtlGroupPolicyInput,
        GUpdateDependencyProxySettingsInput,
        GUpdateDiffImagePositionInput,
        GUpdateEpicBoardListInput,
        GUpdateEpicInput,
        GUpdateImageDiffNoteInput,
        GUpdateIssueInput,
        GUpdateIterationInput,
        GUpdateNamespacePackageSettingsInput,
        GUpdateNoteInput,
        GUpdatePackagesCleanupPolicyInput,
        GUpdateRequirementInput,
        GUpdateSnippetInput,
        GUpload,
        GUploadDeleteInput,
        GUploadID,
        GUserCalloutCreateInput,
        GUserCalloutFeatureNameEnum,
        GUserID,
        GUserPreferencesUpdateInput,
        GUserState,
        GUsersSavedReplyID,
        GVerificationStateEnum,
        GVisibilityLevelsEnum,
        GVisibilityScopesEnum,
        GVulnerabilitiesExternalIssueLinkID,
        GVulnerabilitiesFindingID,
        GVulnerabilitiesScannerID,
        GVulnerabilityConfidence,
        GVulnerabilityConfirmInput,
        GVulnerabilityCreateInput,
        GVulnerabilityDismissInput,
        GVulnerabilityDismissalReason,
        GVulnerabilityExternalIssueLinkCreateInput,
        GVulnerabilityExternalIssueLinkDestroyInput,
        GVulnerabilityExternalIssueLinkExternalTracker,
        GVulnerabilityExternalIssueLinkType,
        GVulnerabilityFindingDismissInput,
        GVulnerabilityGrade,
        GVulnerabilityID,
        GVulnerabilityIdentifierInput,
        GVulnerabilityIssueLinkType,
        GVulnerabilityReportType,
        GVulnerabilityResolveInput,
        GVulnerabilityRevertToDetectedInput,
        GVulnerabilityScannerInput,
        GVulnerabilityScannerVendorInput,
        GVulnerabilitySeverity,
        GVulnerabilitySort,
        GVulnerabilityState,
        GWeightWildcardId,
        GWorkItemConvertTaskInput,
        GWorkItemCreateFromTaskInput,
        GWorkItemCreateInput,
        GWorkItemDeleteInput,
        GWorkItemDeleteTaskInput,
        GWorkItemDeletedTaskInput,
        GWorkItemID,
        GWorkItemSort,
        GWorkItemState,
        GWorkItemStateEvent,
        GWorkItemUpdateInput,
        GWorkItemUpdateTaskInput,
        GWorkItemUpdatedTaskInput,
        GWorkItemWidgetAssigneesInput,
        GWorkItemWidgetDescriptionInput,
        GWorkItemWidgetHierarchyCreateInput,
        GWorkItemWidgetHierarchyUpdateInput,
        GWorkItemWidgetIterationInput,
        GWorkItemWidgetStartAndDueDateUpdateInput,
        GWorkItemWidgetType,
        GWorkItemWidgetWeightInput,
        GWorkItemsTypeID,
        GiterationCreateInput;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAccessLevelEnum,
  GAddProjectToSecurityDashboardInput,
  GAdminSidekiqQueuesDeleteJobsInput,
  GAgentTokenStatus,
  GAlertManagementAlertSort,
  GAlertManagementDomainFilter,
  GAlertManagementHttpIntegrationID,
  GAlertManagementIntegrationType,
  GAlertManagementPayloadAlertFieldInput,
  GAlertManagementPayloadAlertFieldName,
  GAlertManagementPayloadAlertFieldType,
  GAlertManagementSeverity,
  GAlertManagementStatus,
  GAlertSetAssigneesInput,
  GAlertTodoCreateInput,
  GAnalyticsDevopsAdoptionEnabledNamespaceID,
  GApiFuzzingCiConfigurationCreateInput,
  GApiFuzzingScanMode,
  GAppSecFuzzingCoverageCorpusID,
  GApprovalRuleType,
  GArtifactDestroyInput,
  GAssigneeWildcardId,
  GAuditEventsExternalAuditEventDestinationID,
  GAuditEventsStreamingHeaderID,
  GAuditEventsStreamingHeadersCreateInput,
  GAuditEventsStreamingHeadersDestroyInput,
  GAuditEventsStreamingHeadersUpdateInput,
  GAvailabilityEnum,
  GAwardEmojiAddInput,
  GAwardEmojiRemoveInput,
  GAwardEmojiToggleInput,
  GAwardableID,
  GBigInt,
  GBlobViewersType,
  GBoardEpicCreateInput,
  GBoardID,
  GBoardIssueInput,
  GBoardListCreateInput,
  GBoardListUpdateLimitMetricsInput,
  GBoardsEpicBoardID,
  GBoardsEpicListID,
  GBulkEnableDevopsAdoptionNamespacesInput,
  GBulkRunnerDeleteInput,
  GCiBuildID,
  GCiCdSettingsUpdateInput,
  GCiConfigIncludeType,
  GCiConfigStatus,
  GCiJobArtifactID,
  GCiJobKind,
  GCiJobStatus,
  GCiJobTokenScopeAddProjectInput,
  GCiJobTokenScopeRemoveProjectInput,
  GCiPipelineID,
  GCiRunnerAccessLevel,
  GCiRunnerID,
  GCiRunnerMembershipFilter,
  GCiRunnerSort,
  GCiRunnerStatus,
  GCiRunnerType,
  GCiRunnerUpgradeStatus,
  GCiVariableInput,
  GCiVariableType,
  GClusterAgentDeleteInput,
  GClusterAgentTokenCreateInput,
  GClusterAgentTokenRevokeInput,
  GClustersAgentID,
  GClustersAgentTokenID,
  GClustersClusterID,
  GCodeQualityDegradationSeverity,
  GColor,
  GCommitAction,
  GCommitActionMode,
  GCommitCreateInput,
  GCommitEncoding,
  GComplianceFrameworkInput,
  GComplianceManagementFrameworkID,
  GComplianceViolationInput,
  GComplianceViolationReason,
  GComplianceViolationSeverity,
  GComplianceViolationSort,
  GConanMetadatumFileTypeEnum,
  GConfigureContainerScanningInput,
  GConfigureDependencyScanningInput,
  GConfigureSastIacInput,
  GConfigureSastInput,
  GConfigureSecretDetectionInput,
  GContactSort,
  GContainerExpirationPolicyCadenceEnum,
  GContainerExpirationPolicyKeepEnum,
  GContainerExpirationPolicyOlderThanEnum,
  GContainerRepositoryCleanupStatus,
  GContainerRepositoryID,
  GContainerRepositorySort,
  GContainerRepositoryStatus,
  GContainerRepositoryTagSort,
  GCorpusCreateInput,
  GCreateAlertIssueInput,
  GCreateAnnotationInput,
  GCreateBoardInput,
  GCreateBranchInput,
  GCreateClusterAgentInput,
  GCreateComplianceFrameworkInput,
  GCreateCustomEmojiInput,
  GCreateDiffNoteInput,
  GCreateEpicInput,
  GCreateImageDiffNoteInput,
  GCreateIssueInput,
  GCreateIterationInput,
  GCreateNoteInput,
  GCreateRequirementInput,
  GCreateSnippetInput,
  GCreateTestCaseInput,
  GCustomEmojiID,
  GCustomerRelationsContactCreateInput,
  GCustomerRelationsContactID,
  GCustomerRelationsContactState,
  GCustomerRelationsContactUpdateInput,
  GCustomerRelationsOrganizationCreateInput,
  GCustomerRelationsOrganizationID,
  GCustomerRelationsOrganizationState,
  GCustomerRelationsOrganizationUpdateInput,
  GDastOnDemandScanCreateInput,
  GDastProfileCadenceInput,
  GDastProfileCadenceUnit,
  GDastProfileCreateInput,
  GDastProfileDeleteInput,
  GDastProfileID,
  GDastProfileRunInput,
  GDastProfileScheduleID,
  GDastProfileScheduleInput,
  GDastProfileUpdateInput,
  GDastScanMethodType,
  GDastScanTypeEnum,
  GDastScannerProfileCreateInput,
  GDastScannerProfileDeleteInput,
  GDastScannerProfileID,
  GDastScannerProfileUpdateInput,
  GDastSiteProfileAuthInput,
  GDastSiteProfileCreateInput,
  GDastSiteProfileDeleteInput,
  GDastSiteProfileID,
  GDastSiteProfileUpdateInput,
  GDastSiteProfileValidationStatusEnum,
  GDastSiteTokenCreateInput,
  GDastSiteTokenID,
  GDastSiteValidationCreateInput,
  GDastSiteValidationID,
  GDastSiteValidationRevokeInput,
  GDastSiteValidationStatusEnum,
  GDastSiteValidationStrategyEnum,
  GDastTargetTypeEnum,
  GDataVisualizationColorEnum,
  GDataVisualizationWeightEnum,
  GDate,
  GDeleteAnnotationInput,
  GDependencyProxyManifestID,
  GDependencyProxyManifestStatus,
  GDeploymentStatus,
  GDeploymentTier,
  GDeploymentsOrderByInput,
  GDesignCollectionCopyState,
  GDesignManagementDeleteInput,
  GDesignManagementDesignAtVersionID,
  GDesignManagementDesignID,
  GDesignManagementMoveInput,
  GDesignManagementUploadInput,
  GDesignManagementVersionID,
  GDesignVersionEvent,
  GDestroyBoardInput,
  GDestroyBoardListInput,
  GDestroyComplianceFrameworkInput,
  GDestroyContainerRepositoryInput,
  GDestroyContainerRepositoryTagsInput,
  GDestroyCustomEmojiInput,
  GDestroyEpicBoardInput,
  GDestroyNoteInput,
  GDestroyPackageFileInput,
  GDestroyPackageFilesInput,
  GDestroyPackageInput,
  GDestroySnippetInput,
  GDetailedMergeStatus,
  GDiffImagePositionInput,
  GDiffNoteID,
  GDiffPathsInput,
  GDiffPositionInput,
  GDiffPositionType,
  GDisableDevopsAdoptionNamespaceInput,
  GDiscussionID,
  GDiscussionToggleResolveInput,
  GDoraMetricBucketingInterval,
  GDoraMetricType,
  GDuration,
  GEchoCreateInput,
  GEnableDevopsAdoptionNamespaceInput,
  GEntryType,
  GEnvironmentID,
  GEnvironmentsCanaryIngressUpdateInput,
  GEpicAddIssueInput,
  GEpicBoardCreateInput,
  GEpicBoardListCreateInput,
  GEpicBoardListDestroyInput,
  GEpicBoardUpdateInput,
  GEpicFilters,
  GEpicID,
  GEpicMoveListInput,
  GEpicSetSubscriptionInput,
  GEpicSort,
  GEpicState,
  GEpicStateEvent,
  GEpicTreeNodeFieldsInputType,
  GEpicTreeReorderInput,
  GEpicTreeSortingID,
  GEpicWildcardId,
  GEscalationPolicyCreateInput,
  GEscalationPolicyDestroyInput,
  GEscalationPolicyUpdateInput,
  GEscalationRuleInput,
  GEscalationRuleStatus,
  GEventAction,
  GExportRequirementsInput,
  GExternalAuditEventDestinationCreateInput,
  GExternalAuditEventDestinationDestroyInput,
  GExternalAuditEventDestinationUpdateInput,
  GGitlabErrorTrackingDetailedErrorID,
  GGitlabSubscriptionActivateInput,
  GGlobalID,
  GGroupID,
  GGroupMemberRelation,
  GGroupPermission,
  GGroupUpdateInput,
  GHealthStatus,
  GHealthStatusFilter,
  GHttpIntegrationCreateInput,
  GHttpIntegrationDestroyInput,
  GHttpIntegrationResetTokenInput,
  GHttpIntegrationUpdateInput,
  GISO8601Date,
  GIncidentManagementEscalationPolicyID,
  GIncidentManagementEscalationRuleID,
  GIncidentManagementIssuableResourceLinkID,
  GIncidentManagementOncallParticipantID,
  GIncidentManagementOncallRotationID,
  GIncidentManagementTimelineEventID,
  GIntegrationsPrometheusID,
  GIssuableID,
  GIssuableResourceLinkCreateInput,
  GIssuableResourceLinkDestroyInput,
  GIssuableResourceLinkType,
  GIssuableSearchableField,
  GIssuableSeverity,
  GIssuableState,
  GIssueCreationIterationWildcardId,
  GIssueEscalationStatus,
  GIssueID,
  GIssueMoveInput,
  GIssueMoveListInput,
  GIssueSetAssigneesInput,
  GIssueSetConfidentialInput,
  GIssueSetCrmContactsInput,
  GIssueSetDueDateInput,
  GIssueSetEpicInput,
  GIssueSetEscalationPolicyInput,
  GIssueSetEscalationStatusInput,
  GIssueSetIterationInput,
  GIssueSetLockedInput,
  GIssueSetSeverityInput,
  GIssueSetSubscriptionInput,
  GIssueSetWeightInput,
  GIssueSort,
  GIssueState,
  GIssueStateEvent,
  GIssueType,
  GIterationCadenceCreateInput,
  GIterationCadenceDestroyInput,
  GIterationCadenceUpdateInput,
  GIterationDeleteInput,
  GIterationID,
  GIterationSearchableField,
  GIterationSort,
  GIterationState,
  GIterationWildcardId,
  GIterationsCadenceID,
  GJSON,
  GJiraImportStartInput,
  GJiraImportUsersInput,
  GJiraUsersMappingInputType,
  GJobArtifactFileType,
  GJobArtifactsDestroyInput,
  GJobCancelInput,
  GJobID,
  GJobPlayInput,
  GJobRetryInput,
  GJobUnscheduleInput,
  GJsonString,
  GLabelCreateInput,
  GLabelID,
  GListID,
  GListLimitMetric,
  GMarkAsSpamSnippetInput,
  GMeasurementIdentifier,
  GMemberSort,
  GMergeRequestAcceptInput,
  GMergeRequestCreateInput,
  GMergeRequestID,
  GMergeRequestNewState,
  GMergeRequestReviewState,
  GMergeRequestReviewerRereviewInput,
  GMergeRequestSetAssigneesInput,
  GMergeRequestSetDraftInput,
  GMergeRequestSetLabelsInput,
  GMergeRequestSetLockedInput,
  GMergeRequestSetMilestoneInput,
  GMergeRequestSetReviewersInput,
  GMergeRequestSetSubscriptionInput,
  GMergeRequestSort,
  GMergeRequestState,
  GMergeRequestUpdateInput,
  GMergeRequestsResolverNegatedParams,
  GMergeStatus,
  GMergeStrategyEnum,
  GMetricsDashboardAnnotationID,
  GMilestoneID,
  GMilestoneSort,
  GMilestoneStateEnum,
  GMilestoneWildcardId,
  GMoveType,
  GMutationOperationMode,
  GNamespaceBanDestroyInput,
  GNamespaceCiCdSettingsUpdateInput,
  GNamespaceID,
  GNamespaceIncreaseStorageTemporarilyInput,
  GNamespaceProjectSort,
  GNamespacesNamespaceBanID,
  GNegatedBoardIssueInput,
  GNegatedEpicBoardIssueInput,
  GNegatedEpicFilterInput,
  GNegatedIssueFilterInput,
  GNegatedIterationWildcardId,
  GNegatedMilestoneWildcardId,
  GNetworkPolicyKind,
  GNoteID,
  GNoteableID,
  GOncallRotationActivePeriodInputType,
  GOncallRotationCreateInput,
  GOncallRotationDateInputType,
  GOncallRotationDestroyInput,
  GOncallRotationLengthInputType,
  GOncallRotationUnitEnum,
  GOncallRotationUpdateInput,
  GOncallScheduleCreateInput,
  GOncallScheduleDestroyInput,
  GOncallScheduleUpdateInput,
  GOncallUserInputType,
  GOrganizationSort,
  GPackageDependencyType,
  GPackageGroupSort,
  GPackageSort,
  GPackageStatus,
  GPackageTypeEnum,
  GPackagesCleanupKeepDuplicatedPackageFilesEnum,
  GPackagesConanFileMetadatumID,
  GPackagesConanMetadatumID,
  GPackagesDependencyID,
  GPackagesDependencyLinkID,
  GPackagesMavenMetadatumID,
  GPackagesNugetDependencyLinkMetadatumID,
  GPackagesNugetMetadatumID,
  GPackagesPackageFileID,
  GPackagesPackageID,
  GPackagesPypiMetadatumID,
  GPagesMarkOnboardingCompleteInput,
  GPathLockID,
  GPayloadAlertFieldPathSegment,
  GPipelineCancelInput,
  GPipelineConfigSourceEnum,
  GPipelineDestroyInput,
  GPipelineMergeRequestEventType,
  GPipelineRetryInput,
  GPipelineScheduleStatus,
  GPipelineScopeEnum,
  GPipelineStatusEnum,
  GProjectCiCdSettingsUpdateInput,
  GProjectData,
  GProjectData_project,
  GProjectData_project_statistics,
  GProjectID,
  GProjectMemberRelation,
  GProjectReq,
  GProjectSetComplianceFrameworkInput,
  GProjectSetLockedInput,
  GProjectVars,
  GPrometheusIntegrationCreateInput,
  GPrometheusIntegrationResetTokenInput,
  GPrometheusIntegrationUpdateInput,
  GPromoteToEpicInput,
  GRegistryState,
  GReleaseAssetLinkCreateInput,
  GReleaseAssetLinkDeleteInput,
  GReleaseAssetLinkInput,
  GReleaseAssetLinkType,
  GReleaseAssetLinkUpdateInput,
  GReleaseAssetsInput,
  GReleaseCreateInput,
  GReleaseDeleteInput,
  GReleaseID,
  GReleaseSort,
  GReleaseTagWildcardId,
  GReleaseUpdateInput,
  GReleasesLinkID,
  GRemoveProjectFromSecurityDashboardInput,
  GReplicationStateEnum,
  GRepositionImageDiffNoteInput,
  GRequirementState,
  GRequirementStatusFilter,
  GRunnerDeleteInput,
  GRunnerUpdateInput,
  GRunnersRegistrationTokenResetInput,
  GSastCiConfigurationAnalyzersEntityInput,
  GSastCiConfigurationEntityInput,
  GSastCiConfigurationInput,
  GSastUiComponentSize,
  GSavedReplyCreateInput,
  GSavedReplyDestroyInput,
  GSavedReplyUpdateInput,
  GScanExecutionPolicyCommitInput,
  GScanStatus,
  GSecurityFindingCreateIssueInput,
  GSecurityFindingDismissInput,
  GSecurityPolicyProjectAssignInput,
  GSecurityPolicyProjectCreateInput,
  GSecurityPolicyProjectUnassignInput,
  GSecurityPolicyRelationType,
  GSecurityReportTypeEnum,
  GSecurityScannerType,
  GSecurityTrainingProviderID,
  GSecurityTrainingUpdateInput,
  GSentryErrorStatus,
  GServiceType,
  GShaFormat,
  GSharedRunnersSetting,
  GSnippetBlobActionEnum,
  GSnippetBlobActionInputType,
  GSnippetID,
  GSort,
  GSortDirectionEnum,
  GTerraformStateDeleteInput,
  GTerraformStateID,
  GTerraformStateLockInput,
  GTerraformStateUnlockInput,
  GTestCaseStatus,
  GTestReportState,
  GTime,
  GTimeboxReportErrorReason,
  GTimeframe,
  GTimelineEventCreateInput,
  GTimelineEventDestroyInput,
  GTimelineEventPromoteFromNoteInput,
  GTimelineEventUpdateInput,
  GTimelogCreateInput,
  GTimelogDeleteInput,
  GTimelogID,
  GTodoActionEnum,
  GTodoCreateInput,
  GTodoID,
  GTodoMarkDoneInput,
  GTodoRestoreInput,
  GTodoRestoreManyInput,
  GTodoStateEnum,
  GTodoTargetEnum,
  GTodoableID,
  GTodosMarkAllDoneInput,
  GTrainingUrlRequestStatus,
  GTypeEnum,
  GUntrustedRegexp,
  GUpdateAlertStatusInput,
  GUpdateBoardEpicUserPreferencesInput,
  GUpdateBoardInput,
  GUpdateBoardListInput,
  GUpdateComplianceFrameworkInput,
  GUpdateContainerExpirationPolicyInput,
  GUpdateDependencyProxyImageTtlGroupPolicyInput,
  GUpdateDependencyProxySettingsInput,
  GUpdateDiffImagePositionInput,
  GUpdateEpicBoardListInput,
  GUpdateEpicInput,
  GUpdateImageDiffNoteInput,
  GUpdateIssueInput,
  GUpdateIterationInput,
  GUpdateNamespacePackageSettingsInput,
  GUpdateNoteInput,
  GUpdatePackagesCleanupPolicyInput,
  GUpdateRequirementInput,
  GUpdateSnippetInput,
  GUpload,
  GUploadDeleteInput,
  GUploadID,
  GUserCalloutCreateInput,
  GUserCalloutFeatureNameEnum,
  GUserID,
  GUserPreferencesUpdateInput,
  GUserState,
  GUsersSavedReplyID,
  GVerificationStateEnum,
  GVisibilityLevelsEnum,
  GVisibilityScopesEnum,
  GVulnerabilitiesExternalIssueLinkID,
  GVulnerabilitiesFindingID,
  GVulnerabilitiesScannerID,
  GVulnerabilityConfidence,
  GVulnerabilityConfirmInput,
  GVulnerabilityCreateInput,
  GVulnerabilityDismissInput,
  GVulnerabilityDismissalReason,
  GVulnerabilityExternalIssueLinkCreateInput,
  GVulnerabilityExternalIssueLinkDestroyInput,
  GVulnerabilityExternalIssueLinkExternalTracker,
  GVulnerabilityExternalIssueLinkType,
  GVulnerabilityFindingDismissInput,
  GVulnerabilityGrade,
  GVulnerabilityID,
  GVulnerabilityIdentifierInput,
  GVulnerabilityIssueLinkType,
  GVulnerabilityReportType,
  GVulnerabilityResolveInput,
  GVulnerabilityRevertToDetectedInput,
  GVulnerabilityScannerInput,
  GVulnerabilityScannerVendorInput,
  GVulnerabilitySeverity,
  GVulnerabilitySort,
  GVulnerabilityState,
  GWeightWildcardId,
  GWorkItemConvertTaskInput,
  GWorkItemCreateFromTaskInput,
  GWorkItemCreateInput,
  GWorkItemDeleteInput,
  GWorkItemDeleteTaskInput,
  GWorkItemDeletedTaskInput,
  GWorkItemID,
  GWorkItemSort,
  GWorkItemState,
  GWorkItemStateEvent,
  GWorkItemUpdateInput,
  GWorkItemUpdateTaskInput,
  GWorkItemUpdatedTaskInput,
  GWorkItemWidgetAssigneesInput,
  GWorkItemWidgetDescriptionInput,
  GWorkItemWidgetHierarchyCreateInput,
  GWorkItemWidgetHierarchyUpdateInput,
  GWorkItemWidgetIterationInput,
  GWorkItemWidgetStartAndDueDateUpdateInput,
  GWorkItemWidgetType,
  GWorkItemWidgetWeightInput,
  GWorkItemsTypeID,
  GiterationCreateInput,
])
final Serializers serializers = _serializersBuilder.build();
