.class public Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;
.super Ljava/lang/Object;
.source "IMPollerDataChangeListener.java"

# interfaces
.implements Lcom/helpshift/conversation/pollersync/listener/PollerDataChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HS_IMPollChangeListener"


# instance fields
.field private conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->domain:Lcom/helpshift/common/domain/Domain;

    .line 41
    iput-object p2, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->platform:Lcom/helpshift/common/platform/Platform;

    .line 42
    iput-object p3, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 43
    iput-object p4, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    return-void
.end method

.method private addDependenciesOnNewMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 130
    iget-object v1, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 140
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v1, :cond_24

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_3d

    .line 143
    :cond_24
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v1, :cond_31

    .line 144
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_3d

    .line 146
    :cond_31
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v1, :cond_3d

    .line 147
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;)V

    .line 151
    :cond_3d
    :goto_3d
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->addObserver(Ljava/util/Observer;)V

    goto :goto_4

    :cond_41
    return-void
.end method

.method private getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v0}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    return-object v0
.end method

.method private initializeMessagesForActiveConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-static {p2}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    .line 158
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 159
    invoke-virtual {v0, p2, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotExecutionState(Ljava/util/List;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 162
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0, p2}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    .line 166
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 168
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-eqz v1, :cond_2f

    .line 169
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadThumbnailImage(Lcom/helpshift/common/platform/Platform;)V

    goto :goto_4c

    .line 171
    :cond_2f
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    if-eqz v1, :cond_40

    .line 174
    iget-object v1, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    .line 175
    move-object v2, v0

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->setAttachmentButtonClickable(Z)V

    goto :goto_4c

    .line 177
    :cond_40
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v1, :cond_4c

    .line 178
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->downloadImage(Lcom/helpshift/common/platform/Platform;)V

    .line 180
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v1, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateAcceptedRequestForReopenMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_16

    :cond_52
    return-void
.end method

.method private onPreIssueCreated()V
    .registers 3

    const-string v0, "HS_IMPollChangeListener"

    const-string v1, "Preissue created from poller response"

    .line 251
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 256
    :cond_e
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->handleIdempotentPreIssueCreationSuccess()V

    return-void
.end method

.method private onPreIssueToIssueConversion()V
    .registers 3

    const-string v0, "HS_IMPollChangeListener"

    const-string v1, "Preissue converted to issue"

    .line 188
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    .line 193
    :cond_e
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->startLiveUpdates()V

    return-void
.end method

.method private onStateChangedForIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 8

    .line 222
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 223
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State changed for issue from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HS_IMPollChangeListener"

    invoke-static {v3, v2}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v2

    if-nez v2, :cond_29

    return-void

    .line 231
    :cond_29
    iget-object v3, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v3, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesOnIssueStatusUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 235
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result p2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_3e

    .line 236
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result p1

    if-eqz p1, :cond_3e

    const/4 p1, 0x1

    goto :goto_3f

    :cond_3e
    const/4 p1, 0x0

    .line 238
    :goto_3f
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, p2, :cond_44

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    if-nez v3, :cond_49

    if-nez p1, :cond_4c

    .line 242
    :cond_49
    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V

    :cond_4c
    return-void
.end method

.method private onStateChangedForPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed for preissue to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HS_IMPollChangeListener"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 208
    :cond_1f
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 209
    iget-object v2, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v2, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesOnIssueStatusUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 211
    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V

    return-void
.end method


# virtual methods
.method public onConversationUpdated(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    const-string v0, "HS_IMPollChangeListener"

    const-string v1, "onConversationUpdated called"

    .line 49
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v1

    if-nez v1, :cond_13

    const-string p1, "No in-memory conversation found for updates, hence returning!"

    .line 52
    invoke-static {v0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_13
    invoke-virtual {v1, p2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isActiveConversationEqual(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string p1, "Updates received for different conversation than in-memory, hence returning!"

    .line 60
    invoke-static {v0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 64
    :cond_1f
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->syncDataProvider:Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;

    invoke-interface {v0}, Lcom/helpshift/common/domain/idempotent/PollerSyncDataProvider;->getPendingRequestIdForPreissue()Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    if-eqz v0, :cond_40

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 68
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 69
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->onPreIssueCreated()V

    .line 72
    :cond_40
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 73
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->onPreIssueToIssueConversion()V

    .line 76
    :cond_4f
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v1, :cond_62

    .line 77
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 78
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->onStateChangedForPreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_62

    .line 81
    :cond_5f
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->onStateChangedForIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_62
    :goto_62
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

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessagesAdded called with size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HS_IMPollChangeListener"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->addDependenciesOnNewMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V

    .line 114
    invoke-direct {p0}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->getAliveViewableConversation()Lcom/helpshift/conversation/activeconversation/ViewableConversation;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 116
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isActiveConversationEqual(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->initializeMessagesForActiveConversation(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V

    goto :goto_32

    .line 122
    :cond_2d
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0, p2}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    .line 124
    :goto_32
    iget-object v0, p0, Lcom/helpshift/conversation/pollersync/listener/IMPollerDataChangeListener;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    invoke-virtual {v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotControlMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Collection;)V

    return-void
.end method

.method public onMessagesUpdated(Ljava/util/List;Ljava/util/List;)V
    .registers 4
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

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMessagesUpdated called with size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HS_IMPollChangeListener"

    invoke-static {v0, p1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 92
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v0, :cond_36

    .line 93
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {p2, v0}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_1e

    .line 95
    :cond_36
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v0, :cond_42

    .line 96
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {p2, v0}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_1e

    .line 98
    :cond_42
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v0, :cond_4e

    .line 99
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    invoke-virtual {p2, v0}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;)V

    goto :goto_1e

    .line 103
    :cond_4e
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->notifyUpdated()V

    goto :goto_1e

    :cond_52
    return-void
.end method
