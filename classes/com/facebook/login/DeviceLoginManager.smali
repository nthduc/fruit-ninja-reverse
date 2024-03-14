.class public Lcom/facebook/login/DeviceLoginManager;
.super Lcom/facebook/login/LoginManager;
.source "DeviceLoginManager.java"


# static fields
.field private static volatile instance:Lcom/facebook/login/DeviceLoginManager;


# instance fields
.field private deviceAuthTargetUserId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/login/DeviceLoginManager;
    .registers 2

    .line 40
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/facebook/login/DeviceLoginManager;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/facebook/login/DeviceLoginManager;

    invoke-direct {v1}, Lcom/facebook/login/DeviceLoginManager;-><init>()V

    sput-object v1, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 47
    :cond_17
    :goto_17
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    return-object v0
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object p1

    .line 96
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 98
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->setDeviceRedirectUriString(Ljava/lang/String;)V

    .line 100
    :cond_11
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceAuthTargetUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 102
    invoke-virtual {p1, v0}, Lcom/facebook/login/LoginClient$Request;->setDeviceAuthTargetUserId(Ljava/lang/String;)V

    :cond_1a
    return-object p1
.end method

.method public getDeviceAuthTargetUserId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRedirectUri()Landroid/net/Uri;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setDeviceAuthTargetUserId(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceRedirectUri(Landroid/net/Uri;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    return-void
.end method
