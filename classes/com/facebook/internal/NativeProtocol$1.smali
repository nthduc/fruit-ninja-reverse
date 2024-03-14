.class final Lcom/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 856
    :try_start_8
    # getter for: Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$900()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    const/4 v3, 0x1

    .line 857
    # invokes: Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V
    invoke-static {v2, v3}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->access$1000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    goto :goto_10

    .line 860
    :cond_21
    :try_start_21
    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_29
    move-exception v1

    # getter for: Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 861
    throw v1
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_32} :catch_32

    :catch_32
    move-exception v0

    .line 862
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
