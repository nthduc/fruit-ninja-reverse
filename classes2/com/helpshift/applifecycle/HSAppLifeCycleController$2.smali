.class Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;
.super Ljava/lang/Object;
.source "HSAppLifeCycleController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/applifecycle/HSAppLifeCycleController;->onAppBackground(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/helpshift/applifecycle/HSAppLifeCycleController;Landroid/content/Context;)V
    .registers 3

    .line 108
    iput-object p1, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;->this$0:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    iput-object p2, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 111
    # getter for: Lcom/helpshift/applifecycle/HSAppLifeCycleController;->lock:Ljava/lang/Object;
    invoke-static {}, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 112
    :try_start_5
    iget-object v1, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;->this$0:Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    # getter for: Lcom/helpshift/applifecycle/HSAppLifeCycleController;->appLifeCycleListeners:Ljava/util/List;
    invoke-static {v1}, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->access$100(Lcom/helpshift/applifecycle/HSAppLifeCycleController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/applifecycle/HSAppLifeCycleListener;

    .line 113
    iget-object v3, p0, Lcom/helpshift/applifecycle/HSAppLifeCycleController$2;->val$context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/helpshift/applifecycle/HSAppLifeCycleListener;->onAppBackground(Landroid/content/Context;)V

    goto :goto_f

    .line 115
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v1

    return-void
.end method
