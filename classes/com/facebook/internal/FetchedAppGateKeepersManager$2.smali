.class final Lcom/facebook/internal/FetchedAppGateKeepersManager$2;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppGateKeepersManager;->pollCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$2;->val$callback:Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 150
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$2;->val$callback:Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;

    invoke-interface {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;->onCompleted()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 151
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
