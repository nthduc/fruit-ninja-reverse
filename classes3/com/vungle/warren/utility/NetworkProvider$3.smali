.class Lcom/vungle/warren/utility/NetworkProvider$3;
.super Ljava/lang/Object;
.source "NetworkProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/NetworkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/NetworkProvider;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/NetworkProvider;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    # getter for: Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->access$000(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 165
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v0}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    .line 166
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    # getter for: Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/vungle/warren/utility/NetworkProvider;->access$200(Lcom/vungle/warren/utility/NetworkProvider;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/utility/NetworkProvider$3;->this$0:Lcom/vungle/warren/utility/NetworkProvider;

    # getter for: Lcom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/vungle/warren/utility/NetworkProvider;->access$100(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method
