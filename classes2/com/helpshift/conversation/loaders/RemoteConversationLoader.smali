.class public Lcom/helpshift/conversation/loaders/RemoteConversationLoader;
.super Ljava/lang/Object;
.source "RemoteConversationLoader.java"


# instance fields
.field private conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

.field private conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

.field private domain:Lcom/helpshift/common/domain/Domain;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private remoteDataFetcher:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;

.field private remoteDataMerger:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;

.field private userDM:Lcom/helpshift/account/domainmodel/UserDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationManager;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->platform:Lcom/helpshift/common/platform/Platform;

    .line 30
    iput-object p2, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->domain:Lcom/helpshift/common/domain/Domain;

    .line 31
    iput-object p3, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 33
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getConversationDAO()Lcom/helpshift/conversation/dao/ConversationDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    .line 34
    invoke-interface {p1}, Lcom/helpshift/common/platform/Platform;->getConversationInboxDAO()Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    .line 35
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;

    invoke-direct {v0, p1, p2, p3}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;)V

    iput-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->remoteDataFetcher:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;

    .line 36
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/activeconversation/ConversationManager;)V

    iput-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->remoteDataMerger:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;

    return-void
.end method


# virtual methods
.method public hasMoreMessage()Z
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    iget-object v1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/helpshift/conversation/dao/ConversationInboxDAO;->getHasOlderMessages(J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized loadMoreMessages()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/helpshift/common/exception/RootAPIException;
        }
    .end annotation

    monitor-enter p0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->hasMoreMessage()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5e

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 50
    monitor-exit p0

    return v1

    .line 53
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->conversationDAO:Lcom/helpshift/conversation/dao/ConversationDAO;

    iget-object v2, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/helpshift/conversation/dao/ConversationDAO;->getOldestMessageCursor(J)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_5e

    if-eqz v2, :cond_22

    .line 56
    monitor-exit p0

    return v1

    .line 61
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->remoteDataFetcher:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataFetcher;->fetchConversations(Ljava/lang/String;)Lcom/helpshift/conversation/dto/ConversationHistory;

    move-result-object v0
    :try_end_28
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_22 .. :try_end_28} :catch_43
    .catchall {:try_start_22 .. :try_end_28} :catchall_5e

    .line 72
    :try_start_28
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->conversationInboxDAO:Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    iget-object v2, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v4, v0, Lcom/helpshift/conversation/dto/ConversationHistory;->hasOlderMessages:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/helpshift/conversation/dao/ConversationInboxDAO;->saveHasOlderMessages(JZ)V

    .line 74
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->remoteDataMerger:Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;

    iget-object v0, v0, Lcom/helpshift/conversation/dto/ConversationHistory;->conversations:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/helpshift/conversation/domainmodel/ConversationHistoryRemoteDataMerger;->merge(Ljava/util/List;)V
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_5e

    const/4 v0, 0x1

    .line 75
    monitor-exit p0

    return v0

    :catch_43
    move-exception v0

    .line 64
    :try_start_44
    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->INVALID_AUTH_TOKEN:Lcom/helpshift/common/exception/NetworkException;

    if-eq v1, v2, :cond_50

    iget-object v1, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v2, Lcom/helpshift/common/exception/NetworkException;->AUTH_TOKEN_NOT_PROVIDED:Lcom/helpshift/common/exception/NetworkException;

    if-ne v1, v2, :cond_5d

    .line 66
    :cond_50
    iget-object v1, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v1}, Lcom/helpshift/common/domain/Domain;->getAuthenticationFailureDM()Lcom/helpshift/account/AuthenticationFailureDM;

    move-result-object v1

    iget-object v2, p0, Lcom/helpshift/conversation/loaders/RemoteConversationLoader;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    iget-object v3, v0, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    invoke-virtual {v1, v2, v3}, Lcom/helpshift/account/AuthenticationFailureDM;->notifyAuthenticationFailure(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/common/exception/ExceptionType;)V

    .line 68
    :cond_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_44 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
