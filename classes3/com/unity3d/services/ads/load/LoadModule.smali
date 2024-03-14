.class public Lcom/unity3d/services/ads/load/LoadModule;
.super Ljava/lang/Object;
.source "LoadModule.java"

# interfaces
.implements Lcom/unity3d/services/core/configuration/IInitializationListener;


# static fields
.field private static instance:Lcom/unity3d/services/ads/load/LoadModule;


# instance fields
.field private _initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

.field private _loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

.field private _loadEventBuffer:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/load/ILoadBridge;Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    .line 30
    iput-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

    .line 31
    iput-object p2, p0, Lcom/unity3d/services/ads/load/LoadModule;->_initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

    .line 32
    iget-object p1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_initializationNotificationCenter:Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;

    invoke-interface {p1, p0}, Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;->addListener(Lcom/unity3d/services/core/configuration/IInitializationListener;)V

    return-void
.end method

.method private addPlacementId(Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 54
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_33

    .line 55
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_28

    .line 57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 60
    :cond_28
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 63
    :cond_33
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    :goto_3d
    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/ads/load/LoadModule;
    .registers 3

    .line 17
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    if-nez v0, :cond_14

    .line 18
    new-instance v0, Lcom/unity3d/services/ads/load/LoadBridge;

    invoke-direct {v0}, Lcom/unity3d/services/ads/load/LoadBridge;-><init>()V

    .line 19
    invoke-static {}, Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;->getInstance()Lcom/unity3d/services/core/configuration/InitializationNotificationCenter;

    move-result-object v1

    .line 20
    new-instance v2, Lcom/unity3d/services/ads/load/LoadModule;

    invoke-direct {v2, v0, v1}, Lcom/unity3d/services/ads/load/LoadModule;-><init>(Lcom/unity3d/services/ads/load/ILoadBridge;Lcom/unity3d/services/core/configuration/IInitializationNotificationCenter;)V

    sput-object v2, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    .line 22
    :cond_14
    sget-object v0, Lcom/unity3d/services/ads/load/LoadModule;->instance:Lcom/unity3d/services/ads/load/LoadModule;

    return-object v0
.end method

.method private sendLoadEvents()V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 70
    iget-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadBridge:Lcom/unity3d/services/ads/load/ILoadBridge;

    iget-object v1, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1}, Lcom/unity3d/services/ads/load/ILoadBridge;->loadPlacements(Ljava/util/Map;)V

    .line 72
    :cond_13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/services/ads/load/LoadModule;->_loadEventBuffer:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized load(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 36
    :try_start_1
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/load/LoadModule;->addPlacementId(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 38
    invoke-direct {p0}, Lcom/unity3d/services/ads/load/LoadModule;->sendLoadEvents()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 40
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSdkInitializationFailed(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public declared-synchronized onSdkInitialized()V
    .registers 2

    monitor-enter p0

    .line 44
    :try_start_1
    invoke-direct {p0}, Lcom/unity3d/services/ads/load/LoadModule;->sendLoadEvents()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 45
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
