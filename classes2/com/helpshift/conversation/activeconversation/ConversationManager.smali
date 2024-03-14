.class public Lcom/helpshift/conversation/activeconversation/ConversationManager;
.super Ljava/lang/Object;
.source "ConversationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ConvManager"


# instance fields
.field private conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

.field domain:Lcom/helpshift/common/domain/Domain;

.field platform:Lcom/helpshift/common/platform/Platform;

.field private sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

.field userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    .line 127
    iput-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    .line 128
    iput-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 129
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    .line 130
    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getSDKConfigurationDM()Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 2

    .line 115
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->deleteOptionsForAdminMessageWithOptionsInput(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method private addMessageToDBAndGlobalList(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v0, p2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 244
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 245
    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->addObserver(Ljava/util/Observer;)V

    .line 246
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1, p2}, Lcom/helpshift/util/HSObservableList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v0, p2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 599
    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method private canAutoRetryMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)Z
    .registers 5

    .line 1312
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->canAutoRetryMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1316
    :cond_8
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;->isRetriable()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 1324
    :cond_f
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    if-nez v0, :cond_17

    instance-of p2, p2, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    if-eqz p2, :cond_20

    :cond_17
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    .line 1326
    invoke-static {p2, p1}, Lcom/helpshift/conversation/ConversationUtil;->isResolutionQuestionExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p1

    if-eqz p1, :cond_20

    return v1

    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method private deleteOptionsForAdminMessageWithOptionsInput(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V
    .registers 4

    .line 229
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->referredMessageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v0, v1, :cond_1c

    .line 230
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->serverId:Ljava/lang/String;

    .line 232
    invoke-interface {v0, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    .line 233
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->options:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_1c
    return-void
.end method

.method private deleteOptionsForAdminMessageWithOptionsInput(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 1076
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 1078
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object p1, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-interface {v0, v1, v2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(JLcom/helpshift/conversation/activeconversation/message/MessageType;)Ljava/util/List;

    move-result-object p1

    .line 1079
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1080
    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_12

    .line 1082
    :cond_28
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    return-void
.end method

.method private getMessageDMForUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Ljava/util/Map;Ljava/util/Map;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Lcom/helpshift/conversation/activeconversation/ConversationUpdate;",
            ")",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;"
        }
    .end annotation

    .line 954
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 955
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    goto :goto_2e

    .line 957
    :cond_11
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->createdRequestId:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 958
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->createdRequestId:Ljava/lang/String;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 959
    iget-object p2, p4, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;->localIdsForResolvedRequestIds:Ljava/util/List;

    iget-object p3, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 960
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    return-object p1
.end method

.method private getRouteForSendingMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;
    .registers 5

    .line 928
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    const-string v1, "/messages/"

    if-eqz v0, :cond_21

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/preissues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getPreIssueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_39

    .line 932
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/issues/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getIssueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_39
    return-object p1
.end method

.method private markMessagesAsSeen(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 1512
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 1516
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    .line 1517
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    iget-object v0, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->seenAtMessageCursor:Ljava/lang/String;

    .line 1520
    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-static {v2}, Lcom/helpshift/common/domain/network/NetworkDataRequestUtil;->getUserRequestData(Lcom/helpshift/account/domainmodel/UserDM;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "read_at"

    .line 1521
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mc"

    .line 1522
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "md_state"

    const-string v1, "read"

    .line 1523
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getRouteForSendingMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;

    move-result-object p1

    .line 1527
    :try_start_33
    new-instance v0, Lcom/helpshift/common/domain/network/PUTNetwork;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p1, v1, v3}, Lcom/helpshift/common/domain/network/PUTNetwork;-><init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1528
    new-instance p1, Lcom/helpshift/common/domain/network/AuthenticationFailureNetwork;

    invoke-direct {p1, v0}, Lcom/helpshift/common/domain/network/AuthenticationFailureNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 1529
    new-instance v0, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v0, p1, v1}, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;)V

    .line 1530
    new-instance p1, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;

    invoke-direct {p1, v0}, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 1531
    new-instance v0, Lcom/helpshift/common/domain/network/GuardOKNetwork;

    invoke-direct {v0, p1}, Lcom/helpshift/common/domain/network/GuardOKNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 1532
    new-instance p1, Lcom/helpshift/common/platform/network/RequestData;

    invoke-direct {p1, v2}, Lcom/helpshift/common/platform/network/RequestData;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;
    :try_end_5a
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_33 .. :try_end_5a} :catch_5b

    goto :goto_7e

    :catch_5b
    move-exception p1

    .line 1535
    iget-object v0, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    if-eq v0, v1, :cond_71

    iget-object v0, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_69

    goto :goto_71

    .line 1539
    :cond_69
    iget-object v0, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_70

    goto :goto_7e

    .line 1540
    :cond_70
    throw p1

    .line 1537
    :cond_71
    :goto_71
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    iget-object p1, p1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    invoke-virtual {v0, v1, p1}, Lcom/helpshift/account/AuthenticationFailureDM;->notifyAuthenticationFailure(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/common/exception/ExceptionType;)V

    .line 1545
    :goto_7e
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_82
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    const/4 v1, 0x1

    .line 1546
    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isMessageSeenSynced:Z

    goto :goto_82

    .line 1548
    :cond_92
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p1, p2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    return-void
.end method

.method private markSeenMessagesAsRead(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1481
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1482
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1484
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1485
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1487
    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1488
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    if-eqz v5, :cond_1a

    .line 1489
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 1492
    :cond_30
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_34
    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1493
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-eqz v3, :cond_34

    .line 1495
    iput-object v0, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    const/4 v4, 0x1

    .line 1496
    iput v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    .line 1497
    iget-object v4, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    iput-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->seenAtMessageCursor:Ljava/lang/String;

    .line 1498
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 1502
    :cond_55
    invoke-static {v2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5c

    return-void

    .line 1506
    :cond_5c
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    .line 1507
    invoke-direct {p0, p1, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markMessagesAsSeen(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V

    return-void
.end method

.method private populateMessageDMLookup(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 880
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v1

    .line 881
    invoke-virtual {v1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 882
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 883
    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 885
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    if-eqz v5, :cond_22

    .line 886
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 889
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 890
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    if-nez v4, :cond_56

    .line 892
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 895
    :cond_56
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 898
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 901
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getMessagesLocalIdToPendingRequestIdMap(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/Map;

    move-result-object p1

    .line 903
    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 904
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 905
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 906
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    :cond_7b
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    if-eqz v2, :cond_62

    .line 910
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_62

    .line 912
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 914
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :cond_95
    return-void
.end method

.method private sendAttachmentMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V
    .registers 5

    .line 1262
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$10;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-virtual {p2, v0, p1, v1}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->uploadAttachment(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;Lcom/helpshift/util/Callback;)V

    return-void
.end method

.method private sendGenericAttachment(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V
    .registers 16

    .line 1626
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1627
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1628
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1629
    iget-object v0, p2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    const/4 v8, 0x0

    goto :goto_21

    :cond_1a
    iget-object v0, p2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileSize:Ljava/lang/Long;

    .line 1631
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    move v8, v0

    .line 1632
    :goto_21
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1633
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileName:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1643
    iget-object p2, p2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 1644
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->updateState(Z)V

    .line 1645
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1646
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1647
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendAttachmentMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V

    return-void
.end method

.method private sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$3;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$3;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/common/domain/F;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private sendReOpenRejectedMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 205
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 206
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 207
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 208
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 209
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    const/4 v3, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    .line 212
    iput p2, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->reason:I

    .line 213
    iput-object p3, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->openConversationId:Ljava/lang/String;

    .line 214
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 215
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p2, p3}, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDBAndGlobalList(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 219
    new-instance p2, Lcom/helpshift/conversation/activeconversation/ConversationManager$2;

    invoke-direct {p2, p0, v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$2;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method private sendScreenshotMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;Z)V
    .registers 6

    .line 1234
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$9;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$9;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-virtual {p2, v0, p1, p3, v1}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->uploadImage(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;ZLcom/helpshift/util/Callback;)V

    return-void
.end method

.method private sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;)V
    .registers 5

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {p2, v0, p1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->send(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;)V

    .line 1180
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, v0, :cond_33

    .line 1181
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->WAITING_FOR_AGENT:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V
    :try_end_10
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_33

    :catch_11
    move-exception p2

    .line 1185
    iget-object v0, p2, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_1e

    .line 1186
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_33

    .line 1188
    :cond_1e
    iget-object v0, p2, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_2a

    .line 1189
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_33

    .line 1191
    :cond_2a
    iget-object v0, p2, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v1, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v0, v1, :cond_34

    .line 1192
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_33
    :goto_33
    return-void

    .line 1195
    :cond_34
    throw p2
.end method

.method private setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V
    .registers 5

    .line 1738
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-eq v0, p2, :cond_28

    .line 1739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update CSAT state : Conversation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {p2}, Lcom/helpshift/conversation/states/ConversationCSATState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvManager"

    .line 1739
    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_28
    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 1745
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method private updateMessageClickableState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V
    .registers 4

    .line 323
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v0, :cond_a

    .line 324
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->updateState(Z)V

    goto :goto_27

    .line 326
    :cond_a
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    if-eqz v0, :cond_14

    .line 327
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->setAttachmentButtonClickable(Z)V

    goto :goto_27

    .line 329
    :cond_14
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v0, :cond_1e

    .line 330
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->updateState(Z)V

    goto :goto_27

    .line 332
    :cond_1e
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v0, :cond_27

    .line 333
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->updateState(Z)V

    :cond_27
    :goto_27
    return-void
.end method


# virtual methods
.method addMessageToUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 5

    .line 603
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p2, v0, v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 604
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isUISupportedMessage()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 605
    invoke-virtual {p2, p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->addObserver(Ljava/util/Observer;)V

    .line 606
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0, p2}, Lcom/helpshift/util/HSObservableList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {p1}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    :cond_1a
    return-void
.end method

.method public addPreissueFirstUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;)V
    .registers 11

    const-string v0, "Helpshift_ConvManager"

    const-string v1, "Adding first user message to DB and UI."

    .line 1114
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1116
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1117
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1118
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1119
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1120
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p2, v1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1121
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1125
    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    .line 1128
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public addPreissueFirstUserMessageViaSmartIntent(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Helpshift_ConvManager"

    const-string v1, "Adding first user message via smart intent to DB and UI."

    .line 1139
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1141
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1142
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1143
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v2, "mobile"

    const-string v3, ""

    invoke-direct {v7, v2, v3, v1}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;-><init>(Ljava/util/List;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1146
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, p2, v1}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1147
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1151
    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    .line 1154
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    return-void
.end method

.method public canAutoRetryMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 4

    .line 1293
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v1, :cond_f

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x1

    return p1

    :cond_f
    :goto_f
    const/4 p1, 0x0

    return p1
.end method

.method public checkAndReopen(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;ILjava/lang/String;Z)V
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_b

    .line 145
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendReOpenRejectedMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    :cond_b
    if-eqz p5, :cond_15

    const/4 p3, 0x4

    .line 150
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendReOpenRejectedMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_90

    .line 154
    :cond_15
    iget-object p5, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-static {p5}, Lcom/helpshift/conversation/ConversationUtil;->isInProgressState(Lcom/helpshift/conversation/dto/IssueState;)Z

    move-result p5

    if-nez p5, :cond_8a

    iget-object p5, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    const/4 v3, 0x2

    if-ne p5, v2, :cond_27

    if-ne p3, v3, :cond_27

    goto :goto_8a

    :cond_27
    if-eqz p4, :cond_37

    .line 164
    iget-object p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 165
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_37

    .line 166
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, p1, v3, p4, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendReOpenRejectedMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    .line 172
    :cond_37
    sget-object p3, Lcom/helpshift/conversation/dto/IssueState;->WAITING_FOR_AGENT:Lcom/helpshift/conversation/dto/IssueState;

    iput-object p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    const/4 p3, 0x0

    .line 173
    iput-boolean p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    .line 174
    iget-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p3, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 177
    iget-object p3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {p3}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object p3

    .line 178
    iget-object p4, p3, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, p4

    check-cast v4, Ljava/lang/String;

    .line 179
    iget-object p3, p3, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 180
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object p3, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string p4, "mobile"

    const-string p5, ""

    invoke-direct {v7, p4, p5, p3}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 181
    new-instance p3, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    const/4 v3, 0x0

    iget-object v8, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->serverId:Ljava/lang/String;

    const/4 v9, 0x1

    move-object v2, p3

    invoke-direct/range {v2 .. v9}, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    .line 184
    iget-object p4, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p4, p3, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 185
    iget-object p4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object p5, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p3, p4, p5}, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 187
    invoke-direct {p0, p1, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDBAndGlobalList(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 190
    invoke-virtual {p2, v1}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->setAnsweredAndNotify(Z)V

    .line 191
    iget-object p4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p4, p2}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 193
    new-instance p2, Lcom/helpshift/conversation/activeconversation/ConversationManager$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$1;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    goto :goto_90

    :cond_8a
    :goto_8a
    const/4 p3, 0x3

    .line 160
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->serverId:Ljava/lang/String;

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendReOpenRejectedMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;Ljava/lang/String;)V

    :goto_90
    return-void
.end method

.method public clearRedactedAttachmentsResources(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    .line 756
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 760
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$6;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$6;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public clearRequestIdForPendingCreateConversationCalls(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ">;)V"
        }
    .end annotation

    .line 2278
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2281
    :cond_7
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v0

    const-string v1, "issue_default_unique_key"

    const-string v2, "/issues/"

    .line 2282
    invoke-interface {v0, v2, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->getPendingRequestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2284
    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v3}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v3

    const-string v4, "preissue_default_unique_key"

    const-string v5, "/preissues/"

    .line 2285
    invoke-interface {v3, v5, v4}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->getPendingRequestId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_27

    if-eqz v3, :cond_5f

    .line 2288
    :cond_27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    .line 2289
    iget-object v7, v6, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    if-eqz v7, :cond_2b

    .line 2290
    iget-object v7, v6, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 2291
    iget-object v6, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v6}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v6

    invoke-interface {v6, v2, v1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->deletePendingRequestId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    .line 2294
    :cond_4d
    iget-object v6, v6, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 2295
    iget-object v6, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v6}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->deletePendingRequestId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_5f
    return-void
.end method

.method public clearRequestIdForPendingSendMessageCalls(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
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

    .line 2305
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2308
    :cond_7
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getRouteForSendingMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 2309
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getMessagesLocalIdToPendingRequestIdMap(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    .line 2314
    :cond_12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2315
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v1}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v1

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    .line 2316
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2315
    invoke-interface {v1, v0, p2}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->deletePendingRequestId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_32
    return-void
.end method

.method public containsAtleastOneUserMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 6

    .line 2076
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_36

    .line 2077
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2080
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2081
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isUISupportedMessage()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2082
    instance-of v3, v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v3, :cond_29

    return v1

    .line 2085
    :cond_29
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2087
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_12

    return v1

    :cond_34
    const/4 p1, 0x0

    return p1

    :cond_36
    return v1
.end method

.method public deleteCachedAttachmentFiles(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 8

    .line 2107
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object p1

    .line 2108
    invoke-virtual {p1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2110
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2111
    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    const/4 v3, 0x0

    const-string v4, "Helpshift_ConvManager"

    if-eqz v2, :cond_48

    .line 2112
    move-object v2, v1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    .line 2114
    :try_start_31
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2115
    iput-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->filePath:Ljava/lang/String;

    .line 2116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_40} :catch_41

    goto :goto_65

    :catch_41
    move-exception v2

    const-string v5, "Exception while deleting ScreenshotMessageDM file"

    .line 2120
    invoke-static {v4, v5, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    .line 2123
    :cond_48
    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v2, :cond_65

    .line 2124
    move-object v2, v1

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    .line 2126
    :try_start_4f
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/helpshift/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2127
    iput-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->filePath:Ljava/lang/String;

    .line 2128
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_5e} :catch_5f

    goto :goto_65

    :catch_5f
    move-exception v2

    const-string v5, "Exception while deleting UserAttachmentMessageDM file"

    .line 2132
    invoke-static {v4, v5, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2135
    :cond_65
    :goto_65
    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v2, :cond_1b

    .line 2136
    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    .line 2138
    :try_start_6b
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->filePath:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2139
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->actionCard:Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    iput-object v3, v2, Lcom/helpshift/conversation/activeconversation/model/ActionCard;->filePath:Ljava/lang/String;

    .line 2140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_7d

    goto :goto_1b

    :catch_7d
    move-exception v1

    const-string v2, "Exception while deleting AdminActionCardMessageDM file"

    .line 2144
    invoke-static {v4, v2, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 2150
    :cond_84
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p1, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessages(Ljava/util/List;)Z

    return-void
.end method

.method public downloadAvatarImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 2389
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$14;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$14;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public dropCustomMetaData()V
    .registers 3

    .line 2068
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getMetaDataDM()Lcom/helpshift/meta/MetaDataDM;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/helpshift/meta/MetaDataDM;->setCustomMetaDataCallable(Lcom/helpshift/meta/RootMetaDataCallable;)V

    .line 2069
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getMetaDataDM()Lcom/helpshift/meta/MetaDataDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/meta/MetaDataDM;->clearCustomMetaData()V

    return-void
.end method

.method public evaluateBotControlMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Collection;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 797
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 798
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 800
    sget-object v5, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_22

    goto :goto_8

    .line 805
    :cond_22
    iget-object v4, v0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v4}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v4

    .line 806
    iget-object v5, v4, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 807
    iget-object v4, v4, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 808
    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;

    .line 810
    new-instance v11, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v5, "mobile"

    const-string v6, ""

    invoke-direct {v11, v5, v6, v4}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 811
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;

    iget-object v14, v3, Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;->botInfo:Ljava/lang/String;

    iget-object v15, v3, Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;->serverId:Ljava/lang/String;

    const/16 v16, 0x1

    const-string v7, "Unsupported bot input"

    const-string v12, "bot_cancelled"

    const-string v13, "unsupported_bot_input"

    move-object v6, v4

    invoke-direct/range {v6 .. v16}, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 819
    iget-object v3, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v3, v4, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 820
    invoke-direct {v0, v1, v4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 823
    new-instance v3, Lcom/helpshift/conversation/activeconversation/ConversationManager$7;

    invoke-direct {v3, v0, v4, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$7;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {v0, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    goto :goto_8

    :cond_64
    return-void
.end method

.method public evaluateBotExecutionState(Ljava/util/List;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_38

    .line 974
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_38

    .line 980
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_38

    .line 981
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 982
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 984
    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v4, v3, :cond_35

    .line 985
    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;

    .line 986
    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->actionType:Ljava/lang/String;

    const-string v4, "bot_started"

    .line 987
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    return v1

    :cond_2a
    const-string v4, "bot_ended"

    .line 990
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 991
    iget-boolean p1, v2, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->hasNextBot:Z

    return p1

    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_38
    :goto_38
    return p2
.end method

.method public filterMessagesOlderThanLastMessageInDb(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 7

    .line 528
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->getOldestMessageCursor(J)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_39

    .line 532
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 534
    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/helpshift/conversation/util/predicate/MessagePredicates;->olderThanLastDbMessagePredicate(J)Lcom/helpshift/util/Predicate;

    move-result-object v0

    .line 533
    invoke-static {v1, v0}, Lcom/helpshift/util/Filters;->filter(Ljava/util/List;Lcom/helpshift/util/Predicate;)Ljava/util/List;

    move-result-object v0

    .line 535
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v1}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v1

    .line 536
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v1, :cond_34

    if-nez v3, :cond_34

    const/4 v2, 0x1

    :cond_34
    if-eq v1, v3, :cond_39

    .line 539
    invoke-virtual {p1, v0}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setMessageDMs(Ljava/util/List;)V

    :cond_39
    return v2
.end method

.method public getLatestUnansweredBotMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 10

    .line 1931
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_6b

    .line 1932
    iget-object v3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v3, v0}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1935
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v4, v5, :cond_1a

    return-object v2

    .line 1939
    :cond_1a
    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v4, v5, :cond_36

    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v4, v5, :cond_36

    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v4, v5, :cond_36

    iget-object v4, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageType;->OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v4, v5, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    :goto_36
    const/4 v4, 0x0

    add-int/2addr v0, v1

    .line 1950
    :goto_38
    iget-object v5, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v5}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v5

    if-ge v0, v5, :cond_66

    .line 1951
    iget-object v5, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v5, v0}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1952
    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v7, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v6, v7, :cond_54

    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v7, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v6, v7, :cond_63

    .line 1955
    :cond_54
    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    .line 1956
    iget-object v6, v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->getReferredMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_67

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_66
    const/4 v1, 0x0

    :goto_67
    if-eqz v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object v2, v3

    :cond_6b
    :goto_6b
    return-object v2
.end method

.method public getMessagesLocalIdToPendingRequestIdMap(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 921
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getNetworkRequestDAO()Lcom/helpshift/common/platform/network/NetworkRequestDAO;

    move-result-object v0

    .line 922
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getRouteForSendingMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/helpshift/common/platform/network/NetworkRequestDAO;->getPendingRequestIdMapForRoute(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getUnSeenMessageCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;)I
    .registers 7

    .line 2154
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldOpen(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2158
    :cond_8
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 2159
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_52

    .line 2162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2163
    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isUISupportedMessage()Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_20

    .line 2165
    sget-object v3, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    iget-object v4, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5a

    goto :goto_20

    .line 2167
    :pswitch_45
    instance-of v3, v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    if-eqz v3, :cond_20

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    iget-boolean v2, v2, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->isMessageEmpty:Z

    if-nez v2, :cond_20

    :pswitch_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 2188
    :cond_52
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    if-eqz p1, :cond_58

    add-int/lit8 v1, v1, 0x1

    :cond_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_45
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
    .end packed-switch
.end method

.method public handleAdminSuggestedQuestionRead(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2058
    new-instance v6, Lcom/helpshift/conversation/activeconversation/ConversationManager$13;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/helpshift/conversation/activeconversation/ConversationManager$13;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public handleAppReviewRequestClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V
    .registers 5

    .line 1553
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    .line 1554
    invoke-virtual {p2, v0, v1}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->handleRequestReviewClick(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1556
    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager$11;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;)V

    invoke-direct {p0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    :cond_12
    return-void
.end method

.method public handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 1065
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$8;

    invoke-direct {v1, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$8;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    return-void
.end method

.method public handlePreIssueCreationSuccess(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 2195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    .line 2196
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageAddedEventOnPreissueCreation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public hasBotSwitchedToAnotherBotInPollerResponse(Ljava/util/Collection;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 1979
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3d

    .line 1983
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1988
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    const/4 v3, 0x0

    :goto_16
    if-ltz p1, :cond_3d

    .line 1989
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1990
    iget-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    .line 1992
    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_BOT_CONTROL:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v6, v5, :cond_3a

    .line 1993
    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;

    .line 1994
    iget-object v4, v4, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->actionType:Ljava/lang/String;

    const-string v5, "bot_ended"

    .line 1995
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    return v3

    :cond_31
    const-string v5, "bot_started"

    .line 2000
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    add-int/lit8 p1, p1, -0x1

    goto :goto_16

    :cond_3d
    :goto_3d
    return v0
.end method

.method public initializeIssueStatusForUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 1101
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    .line 1102
    invoke-virtual {v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->shouldShowConversationResolutionQuestion()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 1103
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationResolutionStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V

    :cond_12
    return-void
.end method

.method public initializeMessageListForUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;Z)V"
        }
    .end annotation

    .line 1834
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1835
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1836
    invoke-virtual {p0, v0, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageOnConversationUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    .line 1837
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateAcceptedRequestForReopenMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public initializeMessagesForUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 6

    .line 1781
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-static {v0}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_86

    .line 1785
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 1786
    invoke-virtual {p0, p2, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotExecutionState(Ljava/util/List;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 1787
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p2}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1788
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1789
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-eqz v1, :cond_35

    .line 1790
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadThumbnailImage(Lcom/helpshift/common/platform/Platform;)V

    .line 1792
    :cond_35
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v1, :cond_41

    .line 1793
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->downloadImage(Lcom/helpshift/common/platform/Platform;)V

    .line 1795
    :cond_41
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageOnConversationUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    .line 1796
    invoke-virtual {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateAcceptedRequestForReopenMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_16

    .line 1798
    :cond_4c
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p2}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result p2

    if-lez p2, :cond_bb

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result p2

    if-eqz p2, :cond_bb

    .line 1800
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1801
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-eq v0, v2, :cond_76

    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->USER_RESP_FOR_TEXT_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v0, v2, :cond_bb

    .line 1803
    :cond_76
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getLatestUnansweredBotMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v0

    .line 1809
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    if-eqz p1, :cond_bb

    if-nez v0, :cond_bb

    .line 1810
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    invoke-virtual {p2, v1}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->updateState(Z)V

    goto :goto_bb

    .line 1816
    :cond_86
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bb

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1817
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p2, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1818
    instance-of v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-eqz v1, :cond_ab

    .line 1819
    move-object v1, p2

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadThumbnailImage(Lcom/helpshift/common/platform/Platform;)V

    .line 1821
    :cond_ab
    instance-of v1, p2, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v1, :cond_b7

    .line 1822
    move-object v1, p2

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v1, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->downloadImage(Lcom/helpshift/common/platform/Platform;)V

    .line 1824
    :cond_b7
    invoke-virtual {p0, p2, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageOnConversationUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    goto :goto_8c

    :cond_bb
    :goto_bb
    return-void
.end method

.method public isConversationActionable(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2357
    :cond_4
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 2362
    :cond_b
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_21

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 2363
    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2364
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v1

    if-eqz v1, :cond_21

    return v2

    .line 2369
    :cond_21
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v1, v3, :cond_2e

    goto :goto_38

    .line 2375
    :cond_2e
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p1, v1, :cond_37

    if-eqz p2, :cond_37

    return v2

    :cond_37
    return v0

    :cond_38
    :goto_38
    return v2
.end method

.method public isSynced(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 3

    .line 1848
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public markConversationCSATStateToExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 346
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-ne v0, v1, :cond_7

    return-void

    .line 351
    :cond_7
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V

    .line 354
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendCSATExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public markConversationResolutionStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 12

    .line 395
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 396
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 397
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz p2, :cond_1e

    .line 399
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendConfirmationAcceptedMessageAndDelegates(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 401
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_77

    .line 405
    :cond_1e
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->SYSTEM:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v0, "mobile"

    const-string v1, ""

    invoke-direct {v7, v0, v1, p2}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 406
    new-instance p2, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    const/4 v8, 0x1

    const-string v3, "Did not accept the solution"

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    .line 408
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v0, p2, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 413
    new-instance v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$4;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {p0, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    .line 433
    sget-object p2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    .line 436
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 437
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const-string v1, "id"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 439
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v0, "acid"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_61
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v0, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_REJECTED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v0, p2}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    .line 443
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object p1

    const-string p2, "User rejected the solution"

    invoke-virtual {p1, p2}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->userRepliedToConversation(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method public markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 373
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_7

    return-void

    .line 377
    :cond_7
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendResolutionQuestionExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public markMessagesAsSeen(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 7

    .line 1450
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 1451
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1452
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1453
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1454
    iget v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1b

    .line 1455
    sget-object v3, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageType:[I

    iget-object v4, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4c

    goto :goto_1b

    .line 1467
    :pswitch_3a
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->localId:Ljava/lang/Long;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1473
    :cond_40
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_47

    return-void

    .line 1477
    :cond_47
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markSeenMessagesAsRead(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Set;)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method public mergeIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLcom/helpshift/conversation/activeconversation/ConversationUpdate;)V
    .registers 9

    .line 553
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 554
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 555
    sget-object v2, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    invoke-virtual {v0}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_10

    goto :goto_24

    .line 559
    :cond_10
    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v2, v3, :cond_23

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v2, v3, :cond_23

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v2, v3, :cond_23

    goto :goto_24

    :cond_23
    move-object v0, v1

    .line 568
    :goto_24
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 570
    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    .line 572
    :cond_2a
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 573
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 574
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    .line 575
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    .line 576
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 577
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    .line 578
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    .line 579
    iget-boolean v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    .line 580
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    .line 581
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    .line 582
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    .line 583
    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 586
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-ne v0, v1, :cond_65

    .line 587
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    goto :goto_71

    .line 589
    :cond_65
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0, p1}, Lcom/helpshift/conversation/ConversationUtil;->isCSATTimerExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 591
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 593
    :cond_71
    :goto_71
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLjava/util/List;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)V

    return-void
.end method

.method public mergePreIssue(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLcom/helpshift/conversation/activeconversation/ConversationUpdate;)V
    .registers 8

    .line 1002
    iget-object v0, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 1004
    sget-object v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    invoke-virtual {v0}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    const/4 v2, 0x5

    if-eq v1, v2, :cond_11

    goto :goto_1a

    .line 1006
    :cond_11
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->COMPLETED_ISSUE_CREATED:Lcom/helpshift/conversation/dto/IssueState;

    .line 1008
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    goto :goto_1a

    .line 1014
    :cond_18
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    .line 1021
    :goto_1a
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 1023
    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageCursor:Ljava/lang/String;

    .line 1025
    :cond_20
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 1026
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 1027
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    .line 1028
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->title:Ljava/lang/String;

    .line 1029
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->publishId:Ljava/lang/String;

    .line 1030
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdAt:Ljava/lang/String;

    .line 1031
    invoke-virtual {p2}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getEpochCreatedAtTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->epochCreatedAtTime:J

    .line 1032
    iget-object v1, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->updatedAt:Ljava/lang/String;

    .line 1033
    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 1034
    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLjava/util/List;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)V

    return-void
.end method

.method public refreshConversationOnIssueStateUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 6

    .line 275
    sget-object v0, Lcom/helpshift/conversation/activeconversation/ConversationManager$15;->$SwitchMap$com$helpshift$conversation$dto$IssueState:[I

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/dto/IssueState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    goto/16 :goto_88

    .line 298
    :cond_15
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_88

    .line 278
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v1

    .line 280
    invoke-virtual {v1}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 281
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 282
    instance-of v3, v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    if-nez v3, :cond_34

    .line 283
    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 286
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    .line 288
    iget-object v2, v2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 289
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    .line 291
    :cond_6e
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getConversationInboxDAO()Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    move-result-object v0

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-interface {v0, v2, v3, v1}, Lcom/helpshift/conversation/dao/ConversationInboxDAO;->saveConversationArchivalPrefillText(JLjava/lang/String;)V

    .line 294
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->handleConversationEnded(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 301
    :goto_88
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesOnIssueStatusUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public retryMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 4

    .line 1220
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v0, :cond_a

    .line 1221
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;)V

    goto :goto_1e

    .line 1223
    :cond_a
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v0, :cond_15

    .line 1224
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendScreenshotMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;Z)V

    goto :goto_1e

    .line 1226
    :cond_15
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v0, :cond_1e

    .line 1227
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendAttachmentMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public retryMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 12

    .line 1335
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationDAO;->readMessages(J)Lcom/helpshift/common/dao/DAOResult;

    move-result-object v0

    .line 1336
    invoke-virtual {v0}, Lcom/helpshift/common/dao/DAOResult;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1338
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1339
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1340
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1342
    iget-object v6, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v7, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v5, v6, v7}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1343
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;

    if-eqz v6, :cond_4d

    move-object v6, v5

    check-cast v6, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;

    .line 1344
    invoke-direct {p0, p1, v6}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->canAutoRetryMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 1345
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_4d
    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    invoke-static {v6}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5c

    iget-boolean v6, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isMessageSeenSynced:Z

    if-nez v6, :cond_5c

    .line 1348
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_5c
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    if-eqz v6, :cond_68

    .line 1351
    iget-object v6, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    :cond_68
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    if-eqz v6, :cond_2a

    .line 1354
    check-cast v5, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    .line 1355
    invoke-virtual {v5}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->isSuggestionsReadEventPending()Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 1356
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1362
    :cond_78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7c
    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;

    .line 1365
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->canAutoRetryMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v5

    if-nez v5, :cond_8f

    return-void

    .line 1371
    :cond_8f
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->canAutoRetryMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;)Z

    move-result v5

    if-nez v5, :cond_96

    goto :goto_7c

    .line 1376
    :cond_96
    :try_start_96
    iget-object v5, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1, v5, p1}, Lcom/helpshift/conversation/activeconversation/message/AutoRetriableMessageDM;->send(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;)V

    .line 1377
    instance-of v5, v1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    if-eqz v5, :cond_7c

    .line 1378
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    move-object v6, v1

    check-cast v6, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    .line 1383
    iget-object v7, v6, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->referredMessageId:Ljava/lang/String;

    .line 1384
    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bd

    .line 1385
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    .line 1386
    iget-object v8, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v7, v8}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->handleAcceptedReviewSuccess(Lcom/helpshift/common/platform/Platform;)V

    .line 1389
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    if-eqz p2, :cond_7c

    .line 1395
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-virtual {p0, p1, v6}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1397
    invoke-virtual {p0, p1, v1, v5, v6}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLjava/util/List;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)V
    :try_end_ca
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_96 .. :try_end_ca} :catch_cb

    goto :goto_7c

    :catch_cb
    move-exception v1

    .line 1402
    iget-object v5, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v6, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_ARCHIVED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v5, v6, :cond_d8

    .line 1403
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_7c

    .line 1405
    :cond_d8
    iget-object v5, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v6, Lcom/helpshift/common/exception/NetworkException;->USER_PRE_CONDITION_FAILED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v5, v6, :cond_e4

    .line 1406
    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->AUTHOR_MISMATCH:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V

    goto :goto_7c

    .line 1408
    :cond_e4
    iget-object v5, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v6, Lcom/helpshift/common/exception/NetworkException;->CONVERSATION_REOPEN_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v5, v6, :cond_ee

    .line 1409
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    goto :goto_7c

    .line 1411
    :cond_ee
    iget-object v5, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v6, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v5, v6, :cond_f5

    goto :goto_7c

    .line 1412
    :cond_f5
    throw v1

    .line 1419
    :cond_f6
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1420
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ff
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1421
    iget-object v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->readAt:Ljava/lang/String;

    .line 1422
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_11a

    .line 1424
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1426
    :cond_11a
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1427
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ff

    .line 1431
    :cond_121
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_129
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_148

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1433
    :try_start_135
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markMessagesAsSeen(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/List;)V
    :try_end_13e
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_135 .. :try_end_13e} :catch_13f

    goto :goto_129

    :catch_13f
    move-exception v1

    .line 1436
    iget-object v2, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_147

    goto :goto_129

    .line 1437
    :cond_147
    throw v1

    .line 1443
    :cond_148
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_14c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    .line 1444
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0, p1, v1}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->sendSuggestionReadEvent(Lcom/helpshift/conversation/activeconversation/ConversationServerInfo;Lcom/helpshift/account/domainmodel/UserDM;)V

    goto :goto_14c

    :cond_15e
    return-void
.end method

.method public sendAttachment(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V
    .registers 6

    .line 1579
    iget v0, p2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->attachmentType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_9

    .line 1580
    invoke-virtual {p0, p1, p2, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendScreenshot(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V

    goto :goto_c

    .line 1583
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendGenericAttachment(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/AttachmentPickerFile;)V

    :goto_c
    return-void
.end method

.method public sendCSATExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 358
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "csat"

    .line 359
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getIssueId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->TIMER_EXPIRED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v1, v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public sendCSATSurvey(Lcom/helpshift/conversation/activeconversation/model/Conversation;ILjava/lang/String;)V
    .registers 5

    const/4 v0, 0x5

    if-le p2, v0, :cond_5

    const/4 p2, 0x5

    goto :goto_8

    :cond_5
    if-gez p2, :cond_8

    const/4 p2, 0x0

    .line 1658
    :cond_8
    :goto_8
    iput p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    if-eqz p3, :cond_10

    .line 1660
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    .line 1662
    :cond_10
    iput-object p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    .line 1663
    sget-object p2, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_NOT_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V

    .line 1666
    new-instance p2, Lcom/helpshift/conversation/activeconversation/ConversationManager$12;

    invoke-direct {p2, p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$12;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {p0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    .line 1674
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p2}, Lcom/helpshift/common/domain/Domain;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object p2

    iget p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->userCompletedCustomerSatisfactionSurvey(ILjava/lang/String;)V

    return-void
.end method

.method public sendCSATSurveyInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 11

    .line 1680
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0, p1}, Lcom/helpshift/conversation/ConversationUtil;->isCSATTimerExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1681
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationCSATStateToExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void

    .line 1685
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/issues/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/customer-survey/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1687
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-static {v0}, Lcom/helpshift/common/domain/network/NetworkDataRequestUtil;->getUserRequestData(Lcom/helpshift/account/domainmodel/UserDM;)Ljava/util/HashMap;

    move-result-object v0

    .line 1688
    iget v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatRating:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rating"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1689
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatFeedback:Ljava/lang/String;

    const-string v2, "feedback"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1694
    new-instance v3, Lcom/helpshift/common/domain/network/POSTNetwork;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v3, v6, v2, v4}, Lcom/helpshift/common/domain/network/POSTNetwork;-><init>(Ljava/lang/String;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 1695
    new-instance v5, Lcom/helpshift/common/domain/idempotent/SuccessOrNonRetriableStatusCodeIdempotentPolicy;

    invoke-direct {v5}, Lcom/helpshift/common/domain/idempotent/SuccessOrNonRetriableStatusCodeIdempotentPolicy;-><init>()V

    .line 1696
    new-instance v8, Lcom/helpshift/common/domain/network/IdempotentNetwork;

    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v7, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/common/domain/network/IdempotentNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/idempotent/IdempotentPolicy;Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    new-instance v2, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;

    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v2, v8, v3}, Lcom/helpshift/common/domain/network/TSCorrectedNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;)V

    .line 1699
    new-instance v3, Lcom/helpshift/common/domain/network/GuardAgainstCSATExpiryNetwork;

    iget-object v4, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-direct {v3, v2, v4}, Lcom/helpshift/common/domain/network/GuardAgainstCSATExpiryNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;Lcom/helpshift/common/platform/Platform;)V

    .line 1700
    new-instance v2, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;

    invoke-direct {v2, v3}, Lcom/helpshift/common/domain/network/FailedAPICallNetworkDecorator;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 1701
    new-instance v3, Lcom/helpshift/common/domain/network/GuardOKNetwork;

    invoke-direct {v3, v2}, Lcom/helpshift/common/domain/network/GuardOKNetwork;-><init>(Lcom/helpshift/common/domain/network/Network;)V

    .line 1705
    :try_start_6d
    new-instance v2, Lcom/helpshift/common/platform/network/RequestData;

    invoke-direct {v2, v0}, Lcom/helpshift/common/platform/network/RequestData;-><init>(Ljava/util/Map;)V

    .line 1706
    invoke-interface {v3, v2}, Lcom/helpshift/common/domain/network/Network;->makeRequest(Lcom/helpshift/common/platform/network/RequestData;)Lcom/helpshift/common/platform/network/Response;

    .line 1707
    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;
    :try_end_77
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_6d .. :try_end_77} :catch_7f
    .catchall {:try_start_6d .. :try_end_77} :catchall_7d

    if-eqz v0, :cond_90

    .line 1731
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V

    goto :goto_90

    :catchall_7d
    move-exception v0

    goto :goto_b4

    :catch_7f
    move-exception v0

    .line 1711
    :try_start_80
    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->CSAT_EXPIRED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_91

    .line 1712
    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->EXPIRED:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 1714
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendCSATExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    :try_end_8b
    .catchall {:try_start_80 .. :try_end_8b} :catchall_7d

    if-eqz v1, :cond_90

    .line 1731
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V

    :cond_90
    :goto_90
    return-void

    .line 1717
    :cond_91
    :try_start_91
    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    if-eq v2, v3, :cond_a6

    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    if-eq v2, v3, :cond_a6

    .line 1722
    iget-object v2, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_b3

    .line 1723
    sget-object v1, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    goto :goto_b3

    .line 1719
    :cond_a6
    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v2}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object v2

    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    iget-object v4, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    invoke-virtual {v2, v3, v4}, Lcom/helpshift/account/AuthenticationFailureDM;->notifyAuthenticationFailure(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/common/exception/ExceptionType;)V

    .line 1725
    :cond_b3
    :goto_b3
    throw v0
    :try_end_b4
    .catchall {:try_start_91 .. :try_end_b4} :catchall_7d

    :goto_b4
    if-eqz v1, :cond_b9

    .line 1731
    invoke-direct {p0, p1, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->setCSATState(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/states/ConversationCSATState;)V

    .line 1733
    :cond_b9
    throw v0
.end method

.method public sendConfirmationAcceptedMessageAndDelegates(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 11

    .line 449
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 450
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 451
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 452
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 453
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    const-string v3, "Accepted the solution"

    const/4 v8, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    .line 456
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 457
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 459
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v1, v0}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 462
    new-instance v1, Lcom/helpshift/conversation/activeconversation/ConversationManager$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager$5;-><init>(Lcom/helpshift/conversation/activeconversation/ConversationManager;Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    invoke-direct {p0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendMessageWithAutoRetry(Lcom/helpshift/common/domain/F;)V

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 486
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v1, "acid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    :cond_5a
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->RESOLUTION_ACCEPTED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v1, v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    .line 490
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object p1

    const-string v0, "User accepted the solution"

    invoke-virtual {p1, v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->userRepliedToConversation(Ljava/lang/String;)V

    return-void
.end method

.method public sendConversationEndedDelegate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    .line 1086
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    if-nez v0, :cond_15

    .line 1088
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getDelegate()Lcom/helpshift/delegate/UIThreadDelegateDecorator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/delegate/UIThreadDelegateDecorator;->conversationEnded()V

    const/4 v0, 0x1

    .line 1090
    iput-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isConversationEndedDelegateSent:Z

    .line 1091
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {v0, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_15
    return-void
.end method

.method public sendConversationPostedEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 2098
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2099
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2101
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v1, "acid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    :cond_1b
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->CONVERSATION_POSTED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v1, v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public sendMessageAddedEventOnPreissueCreation(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 2202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2203
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    invoke-static {v1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2204
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->acid:Ljava/lang/String;

    const-string v2, "acid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2209
    :cond_14
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2210
    instance-of v1, v1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    if-eqz v1, :cond_1a

    const-string p1, "si"

    goto :goto_2f

    :cond_2d
    const-string p1, "txt"

    :goto_2f
    const-string v1, "type"

    .line 2215
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->MESSAGE_ADDED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v1, v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public sendOptionInputMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;Z)V
    .registers 15

    .line 2012
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 2013
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 2014
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz p4, :cond_1a

    .line 2018
    iget-object p3, p2, Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;->input:Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;

    iget-object p3, p3, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput;->skipLabel:Ljava/lang/String;

    goto :goto_1c

    .line 2022
    :cond_1a
    iget-object p3, p3, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;->title:Ljava/lang/String;

    :goto_1c
    move-object v3, p3

    .line 2025
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object p3, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v0, "mobile"

    const-string v1, ""

    invoke-direct {v7, v0, v1, p3}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 2026
    new-instance p3, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    move-object v2, p3

    move-object v8, p2

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;Z)V

    .line 2030
    iget-object p4, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p4, p3, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->conversationLocalId:Ljava/lang/Long;

    const/4 p4, 0x1

    .line 2034
    invoke-virtual {p3, p4}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->updateState(Z)V

    .line 2035
    invoke-direct {p0, p1, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 2036
    invoke-direct {p0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->deleteOptionsForAdminMessageWithOptionsInput(Lcom/helpshift/conversation/activeconversation/message/OptionInputMessageDM;)V

    .line 2037
    invoke-direct {p0, p1, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;)V

    return-void
.end method

.method public sendResolutionQuestionExpiryEvent(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "reopen"

    .line 388
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->getIssueId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {p1}, Lcom/helpshift/common/domain/Domain;->getAnalyticsEventDM()Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;

    move-result-object p1

    sget-object v1, Lcom/helpshift/analytics/AnalyticsEventType;->TIMER_EXPIRED:Lcom/helpshift/analytics/AnalyticsEventType;

    invoke-virtual {p1, v1, v0}, Lcom/helpshift/analytics/domainmodel/AnalyticsEventDM;->pushEvent(Lcom/helpshift/analytics/AnalyticsEventType;Ljava/util/Map;)V

    return-void
.end method

.method public sendScreenshot(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/AttachmentPickerFile;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1589
    iget-object v4, v0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v4}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v4

    .line 1590
    iget-object v5, v4, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    .line 1591
    iget-object v4, v4, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1592
    new-instance v11, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v5, "mobile"

    const-string v6, ""

    invoke-direct {v11, v5, v6, v4}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1593
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v17}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1602
    iget-object v5, v2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->originalFileName:Ljava/lang/String;

    iput-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->fileName:Ljava/lang/String;

    .line 1603
    iget-object v5, v2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->filePath:Ljava/lang/String;

    iput-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->filePath:Ljava/lang/String;

    .line 1604
    invoke-virtual {v4, v3}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setRefersMessageId(Ljava/lang/String;)V

    .line 1605
    invoke-virtual/range {p0 .. p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->updateState(Z)V

    .line 1606
    iget-object v5, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v5, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1607
    invoke-direct {v0, v1, v4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    const/4 v5, 0x1

    if-eqz v3, :cond_7c

    .line 1609
    iget-object v6, v1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v6}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1610
    iget-object v8, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    if-eqz v8, :cond_57

    iget-object v8, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    .line 1611
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    iget-object v8, v7, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->messageType:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    sget-object v9, Lcom/helpshift/conversation/activeconversation/message/MessageType;->REQUESTED_SCREENSHOT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    if-ne v8, v9, :cond_57

    .line 1613
    check-cast v7, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    .line 1615
    iget-object v3, v0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v7, v3, v5}, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->setIsAnswered(Lcom/helpshift/common/platform/Platform;Z)V

    .line 1620
    :cond_7c
    iget-boolean v2, v2, Lcom/helpshift/conversation/dto/AttachmentPickerFile;->isFileCompressionAndCopyingDone:Z

    xor-int/2addr v2, v5

    invoke-direct {v0, v1, v4, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendScreenshotMessageInternal(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;Z)V

    return-void
.end method

.method public sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;)V
    .registers 11

    .line 1158
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1159
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1160
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1161
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1162
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    .line 1163
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 1164
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->updateState(Z)V

    .line 1167
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1170
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;)V

    return-void
.end method

.method public sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;Z)V
    .registers 15

    .line 1203
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0}, Lcom/helpshift/common/util/HSDateFormatSpec;->getCurrentAdjustedTimeForStorage(Lcom/helpshift/common/platform/Platform;)Lcom/helpshift/util/ValuePair;

    move-result-object v0

    .line 1204
    iget-object v1, v0, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 1205
    iget-object v0, v0, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1206
    new-instance v7, Lcom/helpshift/conversation/activeconversation/message/Author;

    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    const-string v1, "mobile"

    const-string v2, ""

    invoke-direct {v7, v1, v2, v0}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V

    .line 1207
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    move-object v2, v0

    move-object v3, p2

    move-object v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;Z)V

    .line 1210
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object p2, v0, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->conversationLocalId:Ljava/lang/Long;

    const/4 p2, 0x1

    .line 1214
    invoke-virtual {v0, p2}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->updateState(Z)V

    .line 1215
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->addMessageToDbAndUI(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 1216
    invoke-direct {p0, p1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sendTextMessage(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;)V

    return-void
.end method

.method public setEnableMessageClickOnResolutionRejected(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 4

    .line 1040
    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->enableMessageClickOnResolutionRejected:Z

    .line 1041
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne p2, v0, :cond_b

    .line 1042
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessagesOnIssueStatusUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_b
    return-void
.end method

.method public setShouldIncrementMessageCount(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V
    .registers 5

    .line 1759
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    if-eq v0, p2, :cond_d

    .line 1760
    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->shouldIncrementMessageCount:Z

    if-eqz p3, :cond_d

    .line 1762
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_d
    return-void
.end method

.method public setStartNewConversationButtonClicked(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZZ)V
    .registers 4

    .line 1751
    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    if-eqz p3, :cond_9

    .line 1753
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_9
    return-void
.end method

.method public shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 5

    .line 2221
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 2227
    :cond_6
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    goto :goto_35

    .line 2230
    :cond_e
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v2, :cond_35

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v2, :cond_35

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v2, :cond_35

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v2, :cond_35

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v2, :cond_2d

    goto :goto_35

    .line 2237
    :cond_2d
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v2, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v2, :cond_35

    .line 2238
    iget-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->enableMessageClickOnResolutionRejected:Z

    :cond_35
    :goto_35
    return v1
.end method

.method public shouldOpen(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 6

    .line 1865
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v1, "conversationalIssueFiling"

    invoke-virtual {v0, v1}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 1866
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 1867
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return v1

    .line 1874
    :cond_1a
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v0

    if-eqz v0, :cond_28

    return v2

    .line 1879
    :cond_28
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 1881
    iget-boolean v3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    if-eqz v3, :cond_2f

    goto :goto_6c

    .line 1885
    :cond_2f
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isIssueInProgress()Z

    move-result v3

    if-nez v3, :cond_6b

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v3, :cond_3a

    goto :goto_6b

    .line 1888
    :cond_3a
    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v3, :cond_66

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v3, :cond_66

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_EXPIRED:Lcom/helpshift/conversation/dto/IssueState;

    if-eq v0, v3, :cond_66

    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->ARCHIVED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v3, :cond_4b

    goto :goto_66

    .line 1894
    :cond_4b
    sget-object v3, Lcom/helpshift/conversation/dto/IssueState;->REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v3, :cond_6c

    .line 1899
    iget-boolean v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    if-eqz v0, :cond_54

    goto :goto_6c

    .line 1902
    :cond_54
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_6b

    .line 1912
    :cond_5b
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 1913
    invoke-static {v0, p1}, Lcom/helpshift/conversation/ConversationUtil;->getUserMessageCountForConversationLocalId(Lcom/helpshift/conversation/dao/ConversationDAO;Ljava/lang/Long;)I

    move-result p1

    if-lez p1, :cond_6c

    goto :goto_6b

    .line 1892
    :cond_66
    :goto_66
    iget-boolean p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isStartNewConversationClicked:Z

    xor-int/lit8 v1, p1, 0x1

    goto :goto_6c

    :cond_6b
    :goto_6b
    const/4 v1, 0x1

    :cond_6c
    :goto_6c
    return v1
.end method

.method public shouldShowCSATInFooter(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z
    .registers 4

    .line 1047
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInPreIssueMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1056
    :cond_8
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    sget-object v0, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    if-ne p1, v0, :cond_19

    iget-object p1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->sdkConfigurationDM:Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;

    const-string v0, "customerSatisfactionSurvey"

    .line 1057
    invoke-virtual {p1, v0}, Lcom/helpshift/configuration/domainmodel/SDKConfigurationDM;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public updateAcceptedRequestForReopenMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V
    .registers 5

    .line 842
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    if-eqz v0, :cond_15

    .line 843
    move-object v0, p2

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    .line 845
    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->isAnswered()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 846
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->serverId:Ljava/lang/String;

    .line 847
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 850
    :cond_15
    instance-of v0, p2, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    if-eqz v0, :cond_3d

    .line 851
    check-cast p2, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    iget-object p2, p2, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->referredMessageId:Ljava/lang/String;

    .line 852
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 853
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->unansweredRequestForReopenMessageDMs:Ljava/util/Map;

    .line 854
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    .line 855
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p1, p2, v0}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    const/4 p2, 0x1

    .line 856
    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->setAnsweredAndNotify(Z)V

    .line 857
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->insertOrUpdateMessage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public updateConversationExpiryProperties(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 2332
    :cond_3
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0, p1}, Lcom/helpshift/conversation/ConversationUtil;->isResolutionQuestionExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2333
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationStateToResolutionExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 2337
    :cond_e
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-static {v0, p1}, Lcom/helpshift/conversation/ConversationUtil;->isCSATTimerExpired(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2338
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->markConversationCSATStateToExpired(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    :cond_19
    return-void
.end method

.method public updateIsAutoFilledPreissueFlag(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 3

    .line 2265
    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isAutoFilledPreIssue:Z

    .line 2266
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public updateIssueStatus(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/dto/IssueState;)V
    .registers 5

    .line 502
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, p2, :cond_5

    return-void

    .line 505
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing conversation status from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_ConvManager"

    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    .line 509
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->refreshConversationOnIssueStateUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 512
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    .line 515
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

    if-eqz p2, :cond_44

    .line 516
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->conversationDMListener:Lcom/helpshift/conversation/activeconversation/ConversationDMListener;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/activeconversation/ConversationDMListener;->onIssueStatusChange(Lcom/helpshift/conversation/dto/IssueState;)V

    :cond_44
    return-void
.end method

.method public updateLastUserActivityTime(Lcom/helpshift/conversation/activeconversation/model/Conversation;J)V
    .registers 5

    .line 1768
    iput-wide p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->lastUserActivityTime:J

    .line 1769
    iget-object v0, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    .line 1770
    invoke-interface {v0, p1, p2, p3}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateLastUserActivityTimeInConversation(Ljava/lang/Long;J)V

    return-void
.end method

.method public updateMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;ZLjava/util/List;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Z",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;",
            "Lcom/helpshift/conversation/activeconversation/ConversationUpdate;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_7

    .line 627
    new-instance p4, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;

    invoke-direct {p4}, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;-><init>()V

    .line 631
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 632
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 633
    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->populateMessageDMLookup(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Map;Ljava/util/Map;)V

    .line 636
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 637
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_22
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 641
    invoke-direct {p0, v4, v0, v1, p4}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->getMessageDMForUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Ljava/util/Map;Ljava/util/Map;Lcom/helpshift/conversation/activeconversation/ConversationUpdate;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object v5

    if-eqz v5, :cond_8f

    .line 645
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v6, :cond_44

    .line 646
    invoke-virtual {v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 647
    move-object v4, v5

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v4, v6}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_89

    .line 649
    :cond_44
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v6, :cond_5b

    .line 650
    invoke-virtual {v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 651
    move-object v4, v5

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v4, v6}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    .line 653
    iget-boolean v4, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    if-eqz v4, :cond_89

    .line 654
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 657
    :cond_5b
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v6, :cond_72

    .line 658
    invoke-virtual {v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->merge(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 659
    move-object v4, v5

    check-cast v4, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    sget-object v6, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 660
    invoke-virtual {v4, v6}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;)V

    .line 662
    iget-boolean v4, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    if-eqz v4, :cond_89

    .line 663
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 666
    :cond_72
    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/AttachmentMessageDM;

    if-nez v6, :cond_7f

    instance-of v6, v5, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v6, :cond_7b

    goto :goto_7f

    .line 675
    :cond_7b
    invoke-virtual {v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->mergeAndNotify(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_89

    .line 668
    :cond_7f
    :goto_7f
    invoke-virtual {v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->mergeAndNotify(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    .line 670
    iget-boolean v4, v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    if-eqz v4, :cond_89

    .line 671
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_89
    :goto_89
    iget-object v4, p4, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;->updatedMessageDMs:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 682
    :cond_8f
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 687
    :cond_93
    invoke-virtual {p0, v3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->clearRedactedAttachmentsResources(Ljava/util/List;)V

    .line 690
    invoke-static {v2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_9d

    return-void

    .line 695
    :cond_9d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 696
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->domain:Lcom/helpshift/common/domain/Domain;

    iget-object v3, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1, v3}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->setDependencies(Lcom/helpshift/common/domain/Domain;Lcom/helpshift/common/platform/Platform;)V

    .line 697
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->localId:Ljava/lang/Long;

    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->conversationLocalId:Ljava/lang/Long;

    .line 708
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    if-eqz v1, :cond_c5

    .line 709
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v1, v3}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_de

    .line 711
    :cond_c5
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz v1, :cond_d2

    .line 712
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/UserMessageState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserMessageState;

    invoke-virtual {v1, v3}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserMessageState;)V

    goto :goto_de

    .line 714
    :cond_d2
    instance-of v1, v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    if-eqz v1, :cond_de

    .line 715
    move-object v1, v0

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    invoke-virtual {v1, v3}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->setState(Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;)V

    .line 719
    :cond_de
    :goto_de
    invoke-virtual {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->addObserver(Ljava/util/Observer;)V

    goto :goto_a1

    :cond_e2
    if-eqz p2, :cond_120

    .line 724
    invoke-static {v2}, Lcom/helpshift/conversation/ConversationUtil;->sortMessagesBasedOnCreatedAt(Ljava/util/List;)V

    .line 725
    iget-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 726
    invoke-virtual {p0, v2, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotExecutionState(Ljava/util/List;Z)Z

    move-result p2

    iput-boolean p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isInBetweenBotExecution:Z

    .line 729
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p2, v2}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    .line 733
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_125

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 735
    instance-of v0, p3, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-eqz v0, :cond_110

    .line 736
    move-object v0, p3

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;->downloadThumbnailImage(Lcom/helpshift/common/platform/Platform;)V

    .line 738
    :cond_110
    instance-of v0, p3, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    if-eqz v0, :cond_11c

    .line 739
    move-object v0, p3

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {v0, v1}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->downloadImage(Lcom/helpshift/common/platform/Platform;)V

    .line 741
    :cond_11c
    invoke-virtual {p0, p1, p3}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateAcceptedRequestForReopenMessageDMs(Lcom/helpshift/conversation/activeconversation/model/Conversation;Lcom/helpshift/conversation/activeconversation/message/MessageDM;)V

    goto :goto_f8

    .line 745
    :cond_120
    iget-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p2, v2}, Lcom/helpshift/util/HSObservableList;->addAll(Ljava/util/Collection;)Z

    .line 749
    :cond_125
    iget-object p2, p4, Lcom/helpshift/conversation/activeconversation/ConversationUpdate;->newMessageDMs:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    invoke-virtual {p0, p1, v2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->evaluateBotControlMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/util/Collection;)V

    return-void
.end method

.method updateMessageOnConversationUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V
    .registers 3

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageClickableState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    .line 315
    instance-of p2, p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    if-eqz p2, :cond_e

    .line 316
    check-cast p1, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    .line 317
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-virtual {p1, p2}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->checkAndReDownloadImageIfNotExist(Lcom/helpshift/common/platform/Platform;)V

    :cond_e
    return-void
.end method

.method public updateMessagesClickOnBotSwitch(Lcom/helpshift/conversation/activeconversation/model/Conversation;Z)V
    .registers 4

    .line 2048
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 2049
    invoke-direct {p0, v0, p2}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageClickableState(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public updateMessagesOnIssueStatusUpdate(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 4

    .line 305
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->shouldEnableMessagesClick(Lcom/helpshift/conversation/activeconversation/model/Conversation;)Z

    move-result v0

    .line 306
    iget-object p1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {p1}, Lcom/helpshift/util/HSObservableList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 307
    invoke-virtual {p0, v1, v0}, Lcom/helpshift/conversation/activeconversation/ConversationManager;->updateMessageOnConversationUpdate(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Z)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public updateSmartIntentData(Lcom/helpshift/conversation/activeconversation/model/Conversation;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/model/Conversation;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2271
    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentTreeId:Ljava/lang/String;

    .line 2272
    iput-object p3, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;

    .line 2273
    iput-object p4, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentUserQuery:Ljava/lang/String;

    .line 2274
    iget-object p2, p0, Lcom/helpshift/conversation/activeconversation/ConversationManager;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    invoke-interface {p2, p1}, Lcom/helpshift/conversation/dao/ConversationDAO;->updateConversationWithoutMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V

    return-void
.end method

.method public updateStateBasedOnMessages(Lcom/helpshift/conversation/activeconversation/model/Conversation;)V
    .registers 5

    .line 2245
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    sget-object v1, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REQUESTED:Lcom/helpshift/conversation/dto/IssueState;

    if-ne v0, v1, :cond_41

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    if-eqz v0, :cond_41

    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 2246
    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    if-lez v0, :cond_41

    .line 2247
    iget-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    invoke-virtual {v0}, Lcom/helpshift/util/HSObservableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_1b
    if-ltz v0, :cond_30

    .line 2249
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->messageDMs:Lcom/helpshift/util/HSObservableList;

    .line 2251
    invoke-virtual {v1, v0}, Lcom/helpshift/util/HSObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    if-nez v2, :cond_2d

    instance-of v2, v1, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    if-eqz v2, :cond_30

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 2255
    :cond_30
    instance-of v0, v1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    if-eqz v0, :cond_39

    .line 2256
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_ACCEPTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    goto :goto_41

    .line 2258
    :cond_39
    instance-of v0, v1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    if-eqz v0, :cond_41

    .line 2259
    sget-object v0, Lcom/helpshift/conversation/dto/IssueState;->RESOLUTION_REJECTED:Lcom/helpshift/conversation/dto/IssueState;

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/model/Conversation;->state:Lcom/helpshift/conversation/dto/IssueState;

    :cond_41
    :goto_41
    return-void
.end method
