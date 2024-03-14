.class public Lcom/helpshift/conversation/activeconversation/model/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/util/Observer;
.implements Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;
.implements Lcom/helpshift/util/HSCloneable;


# instance fields
.field public acid:Ljava/lang/String;

.field public conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

.field public createdAt:Ljava/lang/String;

.field public createdRequestId:Ljava/lang/String;

.field public csatExpiryAt:Ljava/lang/Long;

.field public csatFeedback:Ljava/lang/String;

.field public csatRating:I

.field public csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

.field public enableMessageClickOnResolutionRejected:Z

.field public epochCreatedAtTime:J

.field public isAutoFilledPreIssue:Z

.field public isConversationEndedDelegateSent:Z

.field public isInBetweenBotExecution:Z

.field public isRedacted:Z

.field public isStartNewConversationClicked:Z

.field public issueType:Ljava/lang/String;

.field public lastUserActivityTime:J

.field public localId:Ljava/lang/Long;

.field public localUUID:Ljava/lang/String;

.field public messageCursor:Ljava/lang/String;

.field public messageDMs:Lcom/helpshift/util/HSObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/helpshift/util/HSObservableList<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation
.end field

.field public preConversationServerId:Ljava/lang/String;

.field public publishId:Ljava/lang/String;

.field public resolutionExpiryAt:Ljava/lang/Long;

.field public serverId:Ljava/lang/String;

.field public shouldIncrementMessageCount:Z

.field public smartIntentIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public smartIntentTreeId:Ljava/lang/String;

.field public smartIntentUserQuery:Ljava/lang/String;

.field public state:Lcom/helpshift/conversation/dto/IssueState;

.field public title:Ljava/lang/String;

.field public final unansweredRequestForReopenMessageDMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;",
            ">;"
        }
    .end annotation
.end field

.field public updatedAt:Ljava/lang/String;

.field public userLocalId:J

.field public wasFullPrivacyEnabledAtCreation:Z


# direct methods
.method private constructor <init>(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/helpshift/util/HSObservableList;

    invoke-direct {v0}, Lcom/helpshift/util/HSObservableList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 48
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 88
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 89
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localUUID:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 94
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;

    .line 97
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    .line 98
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    .line 100
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 101
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    .line 102
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    .line 103
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    .line 104
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 105
    iget v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    iput v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    .line 106
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    .line 107
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    .line 108
    iget-wide v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    iput-wide v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    .line 109
    iget-wide v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    iput-wide v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    .line 110
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    .line 111
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->wasFullPrivacyEnabledAtCreation:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->wasFullPrivacyEnabledAtCreation:Z

    .line 112
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    .line 113
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 114
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    .line 115
    iget-wide v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    iput-wide v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    .line 116
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->enableMessageClickOnResolutionRejected:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->enableMessageClickOnResolutionRejected:Z

    .line 117
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

    .line 118
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isAutoFilledPreIssue:Z

    iput-boolean v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isAutoFilledPreIssue:Z

    .line 119
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    .line 120
    invoke-static {v0}, Lcom/helpshift/util/CloneUtil;->deepClone(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    .line 121
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    .line 122
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    .line 123
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {p1}, Lcom/helpshift/util/CloneUtil;->deepClone(Lcom/helpshift/util/HSObservableList;)Lcom/helpshift/util/HSObservableList;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/helpshift/conversation/dto/IssueState;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/helpshift/util/HSObservableList;

    invoke-direct {v0}, Lcom/helpshift/util/HSObservableList;-><init>()V

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 48
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 75
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    .line 77
    iput-wide p4, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    .line 78
    iput-object p6, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    .line 79
    iput-object p7, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 80
    iput-object p8, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    .line 81
    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 82
    iput-object p9, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    .line 83
    iput-object p10, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    return-void
.end method

.method private updateStateBasedOnMessages()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_3f

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    if-eqz v0, :cond_3f

    .line 188
    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    if-lez v0, :cond_3f

    .line 189
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_19
    if-ltz v0, :cond_2e

    .line 191
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 192
    invoke-virtual {v1, v0}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    if-nez v2, :cond_2b

    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    if-eqz v2, :cond_2e

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 196
    :cond_2e
    instance-of v0, v1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    if-eqz v0, :cond_37

    .line 197
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    goto :goto_3f

    .line 199
    :cond_37
    instance-of v0, v1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    if-eqz v0, :cond_3f

    .line 200
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    :cond_3f
    :goto_3f
    return-void
.end method


# virtual methods
.method public deepClone()Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 2

    .line 230
    new-instance v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    invoke-direct {v0, p0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;-><init>(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-object v0
.end method

.method public bridge synthetic deepClone()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->deepClone()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getAnalyticConversationId()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    return-object v0
.end method

.method public getEpochCreatedAtTime()J
    .registers 3

    .line 134
    iget-wide v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    return-wide v0
.end method

.method public getIssueId()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public getPreIssueId()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    return-object v0
.end method

.method public isInPreIssueMode()Z
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    const-string v1, "preissue"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIssueInProgress()Z
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-static {v0}, Lcom/helpshift/conversation/ConversationUtil;->isInProgressState(Lcom/helpshift/conversation/dto/IssueState;)Z

    move-result v0

    return v0
.end method

.method public isLocalPreIssue()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public registerMessagesObserver()V
    .registers 3

    .line 214
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 215
    invoke-virtual {v1, p0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->addObserver(Ljava/util/Observer;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .registers 3

    .line 146
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 147
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    :cond_8
    return-void
.end method

.method public setEpochCreatedAtTime(J)V
    .registers 3

    .line 138
    iput-wide p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    return-void
.end method

.method public setListener(Lcom/helpshift/conversation/activeconversation/ConversationDMListener;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

    return-void
.end method

.method public setLocalId(J)V
    .registers 4

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 128
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 129
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    goto :goto_c

    :cond_1d
    return-void
.end method

.method public setMessageDMs(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 173
    new-instance v0, Lcom/helpshift/util/HSObservableList;

    invoke-direct {v0, p1}, Lcom/helpshift/util/HSObservableList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 174
    invoke-direct {p0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updateStateBasedOnMessages()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 4

    .line 179
    instance-of p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-eqz p2, :cond_11

    .line 180
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 181
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p2, p1}, Lcom/helpshift/util/HSObservableList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 182
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0, p2, p1}, Lcom/helpshift/util/HSObservableList;->setAndNotifyObserver(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method
