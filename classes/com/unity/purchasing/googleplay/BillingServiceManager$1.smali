.class Lcom/unity/purchasing/googleplay/BillingServiceManager$1;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity/purchasing/googleplay/BillingServiceManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/unity/purchasing/googleplay/BillingServiceManager;Landroid/content/Context;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    iput-object p2, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 79
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    const-string v0, "Billing service connected."

    # invokes: Lcom/unity/purchasing/googleplay/BillingServiceManager;->logDebug(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$000(Lcom/unity/purchasing/googleplay/BillingServiceManager;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    const/4 v0, 0x1

    # setter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z
    invoke-static {p1, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$102(Lcom/unity/purchasing/googleplay/BillingServiceManager;Z)Z

    .line 81
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$500(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1$2;

    invoke-direct {v0, p0, p2}, Lcom/unity/purchasing/googleplay/BillingServiceManager$1$2;-><init>(Lcom/unity/purchasing/googleplay/BillingServiceManager$1;Landroid/os/IBinder;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 48
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    const-string v0, "Billing service disconnected."

    # invokes: Lcom/unity/purchasing/googleplay/BillingServiceManager;->logDebug(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$000(Lcom/unity/purchasing/googleplay/BillingServiceManager;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;->this$0:Lcom/unity/purchasing/googleplay/BillingServiceManager;

    # getter for: Lcom/unity/purchasing/googleplay/BillingServiceManager;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {p1}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->access$500(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1$1;

    invoke-direct {v0, p0}, Lcom/unity/purchasing/googleplay/BillingServiceManager$1$1;-><init>(Lcom/unity/purchasing/googleplay/BillingServiceManager$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
