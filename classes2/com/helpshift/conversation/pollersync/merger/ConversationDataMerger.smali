.class public Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;
.super Ljava/lang/Object;
.source "ConversationDataMerger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HS_PollConvDataMerger"


# instance fields
.field private platform:Lcom/helpshift/common/platform/Platform;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    .line 31
    iput-object p2, p0, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    return-void
.end method

.method private canMergeConversationProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "issue"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "preissue"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "HS_PollConvDataMerger"

    const-string p2, "Not merging conversation data since remote type is preissue and local type is issue"

    .line 56
    invoke-static {p1, p2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_19
    const/4 p1, 0x1

    return p1
.end method

.method private getStateToUpdateForConversation(Lcom/helpshift/conversation/dto/IssueState;Lcom/helpshift/conversation/dto/IssueState;Ljava/lang/String;Z)Lcom/helpshift/conversation/dto/IssueState;
    .registers 6

    .line 110
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, v0, :cond_2e

    const-string v0, "preissue"

    .line 111
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f

    .line 114
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    goto :goto_2e

    .line 117
    :cond_f
    sget-object p3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq p1, p3, :cond_2d

    sget-object p3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, p3, :cond_18

    goto :goto_2d

    :cond_18
    if-eqz p4, :cond_1d

    .line 125
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    goto :goto_2e

    .line 127
    :cond_1d
    sget-object p3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, p3, :cond_22

    goto :goto_2d

    .line 131
    :cond_22
    iget-object p3, p0, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    invoke-virtual {p3}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationResolutionQuestion()Z

    move-result p3

    if-nez p3, :cond_2e

    .line 133
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    goto :goto_2e

    :cond_2d
    :goto_2d
    move-object p2, p1

    .line 137
    :cond_2e
    :goto_2e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Updating conversation state from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HS_PollConvDataMerger"

    invoke-static {p3, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private mergeCommonConversationProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 6

    const-string v0, "HS_PollConvDataMerger"

    const-string v1, "Merging conversation properties"

    .line 64
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 66
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 67
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    .line 68
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    .line 69
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 70
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    .line 71
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    .line 72
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    .line 73
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    iput-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    .line 74
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 75
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    .line 77
    :cond_35
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 79
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    .line 81
    :cond_41
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    .line 82
    invoke-static {v0, p2}, Lcom/helpshift/conversation/ConversationUtil;->isResolutionQuestionExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    .line 83
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iget-object v2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    invoke-direct {p0, v1, v2, p2, v0}, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->getStateToUpdateForConversation(Lcom/helpshift/conversation/dto/IssueState;Lcom/helpshift/conversation/dto/IssueState;Ljava/lang/String;Z)Lcom/helpshift/conversation/dto/IssueState;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    return-void
.end method

.method private mergeIssueUniqueProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 91
    iget-boolean v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    iput-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    .line 92
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    .line 93
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    .line 95
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-ne v0, v1, :cond_17

    .line 96
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    goto :goto_23

    .line 98
    :cond_17
    iget-object p2, p0, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {p2, p1}, Lcom/helpshift/conversation/ConversationUtil;->isCSATTimerExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 100
    sget-object p2, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public mergeProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 42
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->canMergeConversationProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->mergeCommonConversationProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 45
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-nez v0, :cond_16

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/merger/ConversationDataMerger;->mergeIssueUniqueProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_16
    return-void
.end method
