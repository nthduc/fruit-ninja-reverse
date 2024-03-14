.class public Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;
.super Ljava/lang/Object;
.source "ConversationInboxManagerDM.java"


# instance fields
.field private activeUserAndInboxMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/helpshift/conversation/domainmodel/ConversationController;",
            ">;"
        }
    .end annotation
.end field

.field private final domain:Lcom/helpshift/common/domain/Domain;

.field private final platform:Lcom/helpshift/common/platform/Platform;

.field private final userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserManagerDM;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->activeUserAndInboxMapping:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 25
    iput-object p2, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 26
    iput-object p3, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    return-void
.end method

.method private buildConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;
    .registers 5

    .line 30
    new-instance v0, Lcom/helpshift/conversation/domainmodel/ConversationController;

    iget-object v1, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->platform:Lcom/helpshift/common/platform/Platform;

    iget-object v2, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;-><init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteConversations(Lcom/helpshift/account/domainmodel/UserDM;)V
    .registers 2

    monitor-enter p0

    .line 57
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->getConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 59
    invoke-virtual {p1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->deleteAllConversationsData()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 61
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActiveConversationInboxDM()Lcom/helpshift/conversation/domainmodel/ConversationController;
    .registers 4

    monitor-enter p0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->activeUserAndInboxMapping:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/domainmodel/ConversationController;

    if-nez v1, :cond_2a

    .line 37
    invoke-direct {p0, v0}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->buildConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->initialize()V

    .line 39
    iget-object v2, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->activeUserAndInboxMapping:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 40
    iget-object v2, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->activeUserAndInboxMapping:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 42
    :cond_2a
    monitor-exit p0

    return-object v1

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 47
    monitor-exit p0

    return-object p1

    .line 49
    :cond_6
    :try_start_6
    iget-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->activeUserAndInboxMapping:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/conversation/domainmodel/ConversationController;

    if-nez v0, :cond_18

    .line 51
    invoke-direct {p0, p1}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->buildConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1a

    .line 53
    :cond_18
    monitor-exit p0

    return-object v0

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetPreIssueConversations()V
    .registers 4

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->domain:Lcom/helpshift/common/domain/Domain;

    invoke-virtual {v0}, Lcom/helpshift/common/domain/Domain;->getUserManagerDM()Lcom/helpshift/account/domainmodel/UserManagerDM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserManagerDM;->getAllUsers()Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2f

    if-eqz v1, :cond_13

    .line 67
    monitor-exit p0

    return-void

    .line 70
    :cond_13
    :try_start_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/account/domainmodel/UserDM;

    .line 71
    invoke-virtual {p0, v1}, Lcom/helpshift/conversation/domainmodel/ConversationInboxManagerDM;->getConversationInboxDM(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/conversation/domainmodel/ConversationController;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 73
    invoke-virtual {v2, v1}, Lcom/helpshift/conversation/domainmodel/ConversationController;->resetPreIssueConversationsForUser(Lcom/helpshift/account/domainmodel/UserDM;)V
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2f

    goto :goto_17

    .line 76
    :cond_2d
    monitor-exit p0

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method
