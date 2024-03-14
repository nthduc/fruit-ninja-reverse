.class public abstract Lcom/helpshift/conversation/activeconversation/ViewableConversation;
.super Ljava/lang/Object;
.source "ViewableConversation.java"

# interfaces
.implements Lcom/helpshift/conversation/activeconversation/ConversationDMListener;
.implements Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$TypingIndicatorListener;
.implements Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/conversation/activeconversation/ViewableConversation$ConversationType;
    }
.end annotation


# instance fields
.field protected conversationLoader:Lcom/helpshift/conversation/loaders/ConversationsLoader;

.field protected conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

.field private conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

.field protected domain:Lcom/helpshift/common/domain/Domain;

.field private isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

.field protected platform:Lcom/helpshift/common/platform/Platform;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field protected userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/loaders/ConversationsLoader;Lcom/helpshift/conversation/activeconversation/ConversationManager;)V
    .registers 8

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->platform:Lcom/helpshift/common/platform/Platform;

    .line 62
    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->domain:Lcom/helpshift/common/domain/Domain;

    .line 63
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 64
    iput-object p4, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationLoader:Lcom/helpshift/conversation/loaders/ConversationsLoader;

    .line 65
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 66
    iput-object p5, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    return-void
.end method

.method private getConversationForLocalId(J)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 7

    .line 373
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v0

    .line 375
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 376
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    return-object v1
.end method


# virtual methods
.method protected buildPaginationCursor(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/PaginationCursor;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 354
    :cond_4
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    .line 362
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {v1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object p1, v0

    goto :goto_1f

    .line 367
    :cond_12
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getCreatedAt()Ljava/lang/String;

    move-result-object p1

    .line 369
    :goto_1f
    new-instance v1, Lcom/helpshift/conversation/activeconversation/PaginationCursor;

    invoke-direct {v1, v0, p1}, Lcom/helpshift/conversation/activeconversation/PaginationCursor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public dispatchPollFailureCallback()V
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_7

    .line 135
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onConversationInboxPollFailure()V

    :cond_7
    return-void
.end method

.method public dispatchPollSuccessCallback()V
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_7

    .line 129
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onConversationInboxPollSuccess()V

    :cond_7
    return-void
.end method

.method public abstract getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;
.end method

.method public abstract getAllConversations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;"
        }
    .end annotation
.end method

.method public getConversationVMCallback()Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    return-object v0
.end method

.method public abstract getPaginationCursor()Lcom/helpshift/conversation/activeconversation/PaginationCursor;
.end method

.method public abstract getType()Lcom/helpshift/conversation/activeconversation/ViewableConversation$ConversationType;
.end method

.method public getUIConversations()Ljava/util/List;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/UIConversation;",
            ">;"
        }
    .end annotation

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getAllConversations()Ljava/util/List;

    move-result-object v0

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    .line 269
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_42

    .line 271
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 272
    new-instance v15, Lcom/helpshift/conversation/activeconversation/UIConversation;

    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 273
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    .line 274
    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v9

    iget-object v11, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 275
    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v12

    iget-object v13, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    iget-boolean v14, v4, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    move-object v4, v15

    move v7, v3

    invoke-direct/range {v4 .. v14}, Lcom/helpshift/conversation/activeconversation/UIConversation;-><init>(JILjava/lang/String;JLjava/lang/String;ZLcom/helpshift/conversation/dto/IssueState;Z)V

    .line 277
    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_42
    return-object v1
.end method

.method public handleIdempotentPreIssueCreationSuccess()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_c

    .line 175
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->init()V

    .line 176
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->handleIdempotentPreIssueCreationSuccess()V

    :cond_c
    return-void
.end method

.method public hasMoreMessages()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationLoader:Lcom/helpshift/conversation/loaders/ConversationsLoader;

    invoke-virtual {v0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->hasMoreMessages()Z

    move-result v0

    return v0
.end method

.method public abstract init()V
.end method

.method public abstract initializeConversationsForUI()V
.end method

.method public isActiveConversationEqual(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    :cond_b
    if-ne v1, p1, :cond_f

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_f
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 158
    iget-object v0, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 160
    :cond_20
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 161
    iget-object v0, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_31
    return v0
.end method

.method public isAgentTyping()Z
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->isAgentTyping()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 204
    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldEnableTypingIndicator()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public isConversationVMAttached()Z
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isVisibleOnUI()Z
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->isVisibleOnUI()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public loadMoreMessages()V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 286
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationLoader:Lcom/helpshift/conversation/loaders/ConversationsLoader;

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getPaginationCursor()Lcom/helpshift/conversation/activeconversation/PaginationCursor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/helpshift/conversation/loaders/ConversationsLoader;->loadMoreConversations(Lcom/helpshift/conversation/activeconversation/PaginationCursor;Lcom/helpshift/conversation/loaders/ConversationsLoader$LoadMoreConversationsCallback;)V

    :cond_13
    return-void
.end method

.method public loading()V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 341
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_d

    .line 342
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onHistoryLoadingStarted()V

    :cond_d
    return-void
.end method

.method public onActionCardMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;)V
    .registers 4

    .line 110
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->conversationLocalId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getConversationForLocalId(J)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->handleClick(Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;)V

    return-void
.end method

.method public onAdminAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;)V
    .registers 4

    .line 114
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ViewableConversation$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    goto :goto_20

    .line 121
    :cond_11
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    .line 122
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;->handleClick(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    goto :goto_20

    .line 116
    :cond_19
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    .line 118
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->handleClick(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    :goto_20
    return-void
.end method

.method public onAgentTypingUpdate(Z)V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_7

    .line 210
    invoke-interface {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onAgentTypingUpdate(Z)V

    :cond_7
    return-void
.end method

.method public onError()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_d

    .line 334
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onHistoryLoadingError()V

    :cond_d
    return-void
.end method

.method public onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_7

    .line 183
    invoke-interface {v0, p1}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V

    :cond_7
    return-void
.end method

.method public abstract onNewConversationStarted(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
.end method

.method public onScreenshotMessageClicked(Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->handleClick(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;Z)V"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz v0, :cond_7

    .line 295
    invoke-interface {v0}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->onHistoryLoadingSuccess()V

    .line 298
    :cond_7
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 299
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz p1, :cond_1f

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    invoke-interface {p1, v0, p2}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->prependConversations(Ljava/util/List;Z)V

    :cond_1f
    return-void

    .line 309
    :cond_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 311
    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v3}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->userLocalId:J

    .line 312
    invoke-virtual {p0, v2}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isActiveConversationEqual(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 314
    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    .line 315
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_55

    const/4 v3, 0x1

    goto :goto_56

    :cond_55
    const/4 v3, 0x0

    .line 316
    :goto_56
    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationManager:Lcom/helpshift/conversation/activeconversation/ConversationManager;

    iget-object v5, v2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 317
    invoke-virtual {v4, v2, v5, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->initializeMessageListForUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;Z)V

    .line 318
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 321
    :cond_61
    invoke-virtual {p0, v0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->prependConversations(Ljava/util/List;)V

    .line 323
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    if-eqz p1, :cond_6b

    .line 324
    invoke-interface {p1, v0, p2}, Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;->prependConversations(Ljava/util/List;Z)V

    .line 327
    :cond_6b
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->isLoadMoreInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onUserAttachmentMessageClicked(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->handleClick(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V

    return-void
.end method

.method public abstract prependConversations(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract registerMessagesObserver(Lcom/helpshift/util/HSListObserver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/util/HSListObserver<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation
.end method

.method public setConversationVMCallback(Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;)V
    .registers 2

    .line 219
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    .line 220
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setListener(Lcom/helpshift/conversation/activeconversation/ConversationDMListener;)V

    return-void
.end method

.method public setLiveUpdateDM(Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    return-void
.end method

.method public abstract shouldOpen()Z
.end method

.method public startLiveUpdates()V
    .registers 3

    .line 189
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 191
    invoke-virtual {v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldEnableTypingIndicator()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 192
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->registerListener(Lcom/helpshift/conversation/activeconversation/LiveUpdateDM$TypingIndicatorListener;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method

.method public stopLiveUpdates()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->liveUpdateDM:Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;

    if-eqz v0, :cond_7

    .line 198
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/LiveUpdateDM;->unregisterListener()V

    :cond_7
    return-void
.end method

.method public unregisterConversationVMCallback()V
    .registers 3

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->conversationVMCallback:Lcom/helpshift/conversation/viewmodel/ConversationVMCallback;

    .line 225
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/ViewableConversation;->getActiveConversation()Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setListener(Lcom/helpshift/conversation/activeconversation/ConversationDMListener;)V

    return-void
.end method
