.class public Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;
.super Ljava/lang/Object;
.source "DBPollerDataChangeListener.java"

# interfaces
.implements Lcom/helpshift/conversation/pollersync/listener/PollerDataChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HS_DBPollChangeListener"


# instance fields
.field private conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field private syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;


# direct methods
.method public constructor <init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 39
    iput-object p2, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    return-void
.end method

.method private checkAndUpdateMessageUnreadCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v0}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 148
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isVisibleOnUI()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 153
    :cond_f
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 157
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2e

    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, p1, :cond_28

    sget-object p1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, p1, :cond_2e

    .line 162
    :cond_28
    iget-object p1, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p1, p2, v1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setShouldIncrementMessageCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V

    goto :goto_3a

    .line 164
    :cond_2e
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 165
    iget-object p1, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setShouldIncrementMessageCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private checkToReopenConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;)V
    .registers 11

    .line 172
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v0}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getActiveConversationFromStorage()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v1}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getCurrentConversationViewState()I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 177
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x1

    move-object v6, v1

    const/4 v7, 0x1

    goto :goto_20

    .line 181
    :cond_1a
    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    move-object v6, v0

    goto :goto_1f

    :cond_1e
    move-object v6, v1

    :goto_1f
    const/4 v7, 0x0

    .line 184
    :goto_20
    iget-object v2, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->checkAndReopen(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;ILjava/lang/String;Z)V

    return-void
.end method

.method private onCSATStateChanged(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 106
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-ne v0, v1, :cond_11

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-eq p1, v0, :cond_11

    .line 108
    iget-object p1, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendCSATExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_11
    return-void
.end method

.method private onIssueDirectlyCreatedFromPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    const-string v0, "HS_DBPollChangeListener"

    const-string v1, "Preissue creation skipped, issue created directly - idempotent case."

    .line 201
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendConversationPostedEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method private onPreIssueCreated(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    const-string v0, "HS_DBPollChangeListener"

    const-string v1, "Preissue created from poller response"

    .line 193
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handlePreIssueCreationSuccess(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method private onStateChanged(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 6

    .line 119
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed for issue from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HS_DBPollChangeListener"

    invoke-static {v2, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_2c

    .line 123
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendConversationPostedEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_5f

    .line 125
    :cond_2c
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_47

    .line 126
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-nez v0, :cond_41

    .line 129
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendConfirmationAcceptedMessageAndDelegates(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 131
    :cond_41
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_5f

    .line 133
    :cond_47
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_56

    .line 134
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendResolutionQuestionExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 135
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_5f

    .line 137
    :cond_56
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_5f

    .line 138
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 142
    :cond_5f
    :goto_5f
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->checkAndUpdateMessageUnreadCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method


# virtual methods
.method public onConversationUpdated(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    const-string v0, "HS_DBPollChangeListener"

    const-string v1, "onConversationUpdated called"

    .line 45
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v1, :cond_10

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->onStateChanged(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 50
    :cond_10
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-eq v0, v1, :cond_19

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->onCSATStateChanged(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 54
    :cond_19
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v0}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getPendingRequestIdForPreissue()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3e

    if-eqz v0, :cond_3e

    iget-object p1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 58
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 59
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->onPreIssueCreated(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_3e

    .line 62
    :cond_3b
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->onIssueDirectlyCreatedFromPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public onMessagesAdded(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 90
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessagesAdded called with size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HS_DBPollChangeListener"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 93
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    if-eqz v0, :cond_3c

    .line 94
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    .line 95
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->isAnswered()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->checkToReopenConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;)V

    :cond_3c
    return-void
.end method

.method public onMessagesUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMessagesUpdated called with size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HS_DBPollChangeListener"

    invoke-static {v0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_23
    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 73
    iget-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    if-eqz v1, :cond_23

    .line 74
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    if-eqz v1, :cond_3b

    .line 75
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 77
    :cond_3b
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v1, :cond_23

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 82
    :cond_43
    iget-object p2, p0, Lcom/helpshift/conversation/pollersync/listener/DBPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->clearRedactedAttachmentsResources(Ljava/util/List;)V

    return-void
.end method
