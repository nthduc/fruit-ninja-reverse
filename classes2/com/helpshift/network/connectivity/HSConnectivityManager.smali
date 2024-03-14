.class public Lcom/helpshift/network/connectivity/HSConnectivityManager;
.super Ljava/lang/Object;
.source "HSConnectivityManager.java"

# interfaces
.implements Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;


# static fields
.field private static instance:Lcom/helpshift/network/connectivity/HSConnectivityManager;


# instance fields
.field private connectivityCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

.field private hsAndroidConnectivityManagerProvider:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 24
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    .line 28
    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->context:Landroid/content/Context;

    .line 29
    new-instance p1, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;

    invoke-direct {p1}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManagerProvider:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/helpshift/network/connectivity/HSConnectivityManager;
    .registers 2

    .line 33
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->instance:Lcom/helpshift/network/connectivity/HSConnectivityManager;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/helpshift/network/connectivity/HSConnectivityManager;

    invoke-direct {v0, p0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->instance:Lcom/helpshift/network/connectivity/HSConnectivityManager;

    .line 36
    :cond_b
    sget-object p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->instance:Lcom/helpshift/network/connectivity/HSConnectivityManager;

    return-object p0
.end method

.method private startListenNetworkStatus()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    if-nez v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManagerProvider:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;

    iget-object v1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;->getOSConnectivityManager(Landroid/content/Context;)Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    .line 79
    :cond_e
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    invoke-interface {v0, p0}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;->startListeningConnectivityChange(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V

    return-void
.end method

.method private stopListenNetworkStatus()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    if-nez v0, :cond_5

    return-void

    .line 87
    :cond_5
    invoke-interface {v0}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;->stopListeningConnectivityChange()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    return-void
.end method


# virtual methods
.method public getConnectivityType()Lcom/helpshift/network/connectivity/HSConnectivityType;
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    if-nez v0, :cond_e

    .line 115
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManagerProvider:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;

    iget-object v1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManagerProvider;->getOSConnectivityManager(Landroid/content/Context;)Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    .line 117
    :cond_e
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    invoke-interface {v0}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;->getConnectivityType()Lcom/helpshift/network/connectivity/HSConnectivityType;

    move-result-object v0

    return-object v0
.end method

.method public onNetworkAvailable()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 97
    :cond_9
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    .line 98
    invoke-interface {v1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkAvailable()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public onNetworkUnavailable()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 108
    :cond_9
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    .line 109
    invoke-interface {v1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public declared-synchronized registerNetworkConnectivityListener(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V
    .registers 4
    .param p1    # Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 41
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_12

    .line 46
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->startListenNetworkStatus()V

    goto :goto_2e

    .line 50
    :cond_12
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->hsAndroidConnectivityManager:Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;

    invoke-interface {v0}, Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;->getConnectivityStatus()Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    move-result-object v0

    .line 51
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityManager$1;->$SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I

    invoke-virtual {v0}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_27

    goto :goto_2e

    .line 56
    :cond_27
    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    goto :goto_2e

    .line 53
    :cond_2b
    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkAvailable()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 60
    :goto_2e
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterNetworkConnectivityListener(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V
    .registers 3
    .param p1    # Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSConnectivityManager;->connectivityCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 68
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSConnectivityManager;->stopListenNetworkStatus()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 70
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method
