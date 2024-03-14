.class public final Lcom/facebook/internal/CallbackManagerImpl;
.super Ljava/lang/Object;
.source "CallbackManagerImpl.java"

# interfaces
.implements Lcom/facebook/CallbackManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;,
        Lcom/facebook/internal/CallbackManagerImpl$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManagerImpl"

.field private static staticCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/internal/CallbackManagerImpl$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    return-void
.end method

.method private static declared-synchronized getStaticCallback(Ljava/lang/Integer;)Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .registers 3

    const-class v0, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/CallbackManagerImpl$Callback;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    .registers 5

    const-class v0, Lcom/facebook/internal/CallbackManagerImpl;

    monitor-enter v0

    :try_start_3
    const-string v1, "callback"

    .line 47
    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    if-eqz v1, :cond_16

    .line 49
    monitor-exit v0

    return-void

    .line 51
    :cond_16
    :try_start_16
    sget-object v1, Lcom/facebook/internal/CallbackManagerImpl;->staticCallbacks:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_21

    .line 52
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static runStaticCallback(IILandroid/content/Intent;)Z
    .registers 3

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/internal/CallbackManagerImpl;->getStaticCallback(Ljava/lang/Integer;)Lcom/facebook/internal/CallbackManagerImpl$Callback;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 61
    invoke-interface {p0, p1, p2}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 6

    .line 79
    iget-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/CallbackManagerImpl$Callback;

    if-eqz v0, :cond_13

    .line 81
    invoke-interface {v0, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl$Callback;->onActivityResult(ILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 83
    :cond_13
    invoke-static {p1, p2, p3}, Lcom/facebook/internal/CallbackManagerImpl;->runStaticCallback(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    .registers 4

    const-string v0, "callback"

    .line 69
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterCallback(I)V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/facebook/internal/CallbackManagerImpl;->callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
