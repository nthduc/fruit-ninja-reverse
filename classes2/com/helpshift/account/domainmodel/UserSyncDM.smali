.class public Lcom/helpshift/account/domainmodel/UserSyncDM;
.super Ljava/lang/Object;
.source "UserSyncDM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/account/domainmodel/UserSyncDM$UserSyncListener;
    }
.end annotation


# instance fields
.field private domain:Lcom/helpshift/common/domain/Domain;

.field private platform:Lcom/helpshift/common/platform/Platform;

.field private userDM:Lcom/helpshift/account/domainmodel/UserDM;

.field private userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

.field private userSyncExecutor:Lcom/helpshift/account/domainmodel/IUserSyncExecutor;

.field private userSyncListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/helpshift/account/domainmodel/UserSyncDM$UserSyncListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/helpshift/common/platform/Platform;Lcom/helpshift/common/domain/Domain;Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/account/domainmodel/UserManagerDM;Lcom/helpshift/account/domainmodel/IUserSyncExecutor;Lcom/helpshift/account/domainmodel/UserSyncDM$UserSyncListener;)V
    .registers 7

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->platform:Lcom/helpshift/common/platform/Platform;

    .line 35
    iput-object p2, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->domain:Lcom/helpshift/common/domain/Domain;

    .line 36
    iput-object p3, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    .line 37
    iput-object p4, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    .line 38
    iput-object p5, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userSyncExecutor:Lcom/helpshift/account/domainmodel/IUserSyncExecutor;

    .line 39
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userSyncListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/helpshift/account/domainmodel/UserSyncDM;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    return-object p0
.end method

.method static synthetic access$100(Lcom/helpshift/account/domainmodel/UserSyncDM;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserSyncDM;->syncUserInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/helpshift/account/domainmodel/UserSyncDM;)Lcom/helpshift/common/domain/Domain;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->domain:Lcom/helpshift/common/domain/Domain;

    return-object p0
.end method

.method private declared-synchronized syncUserInternal()V
    .registers 6

    monitor-enter p0

    .line 111
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/account/domainmodel/UserSyncDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v0

    .line 112
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->NOT_STARTED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->FAILED:Lcom/helpshift/account/domainmodel/UserSyncStatus;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_60

    if-eq v0, v1, :cond_f

    .line 114
    monitor-exit p0

    return-void

    .line 118
    :cond_f
    :try_start_f
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->IN_PROGRESS:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_60

    .line 120
    :try_start_14
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userSyncExecutor:Lcom/helpshift/account/domainmodel/IUserSyncExecutor;

    invoke-interface {v1}, Lcom/helpshift/account/domainmodel/IUserSyncExecutor;->executeUserSync()V

    .line 122
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->COMPLETED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V
    :try_end_1e
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_14 .. :try_end_1e} :catch_1f
    .catchall {:try_start_14 .. :try_end_1e} :catchall_60

    goto :goto_58

    :catch_1f
    move-exception v1

    .line 129
    :try_start_20
    invoke-virtual {v1}, Lcom/helpshift/common/exception/RootAPIException;->getServerStatusCode()I

    move-result v2

    sget-object v3, Lcom/helpshift/common/domain/network/NetworkErrorCodes;->CONTENT_NOT_FOUND:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_4d

    .line 131
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->COMPLETED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V

    .line 133
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/helpshift/account/domainmodel/UserManagerDM;->updateIssueExists(Lcom/helpshift/account/domainmodel/UserDM;Z)V

    .line 134
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->platform:Lcom/helpshift/common/platform/Platform;

    invoke-interface {v0}, Lcom/helpshift/common/platform/Platform;->getConversationInboxDAO()Lcom/helpshift/conversation/dao/ConversationInboxDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v3, v4, v2}, Lcom/helpshift/conversation/dao/ConversationInboxDAO;->saveHasOlderMessages(JZ)V

    goto :goto_58

    .line 136
    :cond_4d
    iget-object v2, v1, Lcom/helpshift/common/exception/RootAPIException;->exceptionType:Lcom/helpshift/common/exception/ExceptionType;

    sget-object v3, Lcom/helpshift/common/exception/NetworkException;->NON_RETRIABLE:Lcom/helpshift/common/exception/NetworkException;

    if-ne v2, v3, :cond_5a

    .line 138
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->FAILED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_60

    .line 146
    :goto_58
    monitor-exit p0

    return-void

    .line 142
    :cond_5a
    :try_start_5a
    sget-object v2, Lcom/helpshift/account/domainmodel/UserSyncStatus;->FAILED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v2}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V

    .line 143
    throw v1
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V
    .registers 6

    .line 61
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userSyncListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 62
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/helpshift/account/domainmodel/UserSyncDM$UserSyncListener;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 65
    :goto_c
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userManagerDM:Lcom/helpshift/account/domainmodel/UserManagerDM;

    iget-object v2, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v1, v2, p2}, Lcom/helpshift/account/domainmodel/UserManagerDM;->updateSyncState(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V

    if-eqz v0, :cond_1f

    .line 70
    iget-object v1, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v2, Lcom/helpshift/account/domainmodel/UserSyncDM$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/helpshift/account/domainmodel/UserSyncDM$1;-><init>(Lcom/helpshift/account/domainmodel/UserSyncDM;Lcom/helpshift/account/domainmodel/UserSyncDM$UserSyncListener;Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V

    invoke-virtual {v1, v2}, Lcom/helpshift/common/domain/Domain;->runSerial(Lcom/helpshift/common/domain/F;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->userDM:Lcom/helpshift/account/domainmodel/UserDM;

    invoke-virtual {v0}, Lcom/helpshift/account/domainmodel/UserDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v0

    return-object v0
.end method

.method public retry()V
    .registers 1

    .line 149
    invoke-direct {p0}, Lcom/helpshift/account/domainmodel/UserSyncDM;->syncUserInternal()V

    return-void
.end method

.method public setAppropriateInitialState()V
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/helpshift/account/domainmodel/UserSyncDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->IN_PROGRESS:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    if-ne v0, v1, :cond_f

    .line 49
    sget-object v0, Lcom/helpshift/account/domainmodel/UserSyncStatus;->IN_PROGRESS:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->NOT_STARTED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/domainmodel/UserSyncDM;->updateUserSyncState(Lcom/helpshift/account/domainmodel/UserSyncStatus;Lcom/helpshift/account/domainmodel/UserSyncStatus;)V

    :cond_f
    return-void
.end method

.method public syncUser()V
    .registers 3

    .line 85
    invoke-virtual {p0}, Lcom/helpshift/account/domainmodel/UserSyncDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->COMPLETED:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    if-eq v0, v1, :cond_17

    sget-object v1, Lcom/helpshift/account/domainmodel/UserSyncStatus;->IN_PROGRESS:Lcom/helpshift/account/domainmodel/UserSyncStatus;

    if-ne v0, v1, :cond_d

    goto :goto_17

    .line 90
    :cond_d
    iget-object v0, p0, Lcom/helpshift/account/domainmodel/UserSyncDM;->domain:Lcom/helpshift/common/domain/Domain;

    new-instance v1, Lcom/helpshift/account/domainmodel/UserSyncDM$2;

    invoke-direct {v1, p0}, Lcom/helpshift/account/domainmodel/UserSyncDM$2;-><init>(Lcom/helpshift/account/domainmodel/UserSyncDM;)V

    invoke-virtual {v0, v1}, Lcom/helpshift/common/domain/Domain;->runParallel(Lcom/helpshift/common/domain/F;)V

    :cond_17
    :goto_17
    return-void
.end method
