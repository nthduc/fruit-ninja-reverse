.class Lcom/vungle/warren/utility/ActivityManager$1;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/utility/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/utility/ActivityManager;


# direct methods
.method constructor <init>(Lcom/vungle/warren/utility/ActivityManager;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->resumed:I
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$000(Lcom/vungle/warren/utility/ActivityManager;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->paused:Z
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$100(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 67
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # setter for: Lcom/vungle/warren/utility/ActivityManager;->paused:Z
    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->access$102(Lcom/vungle/warren/utility/ActivityManager;Z)Z

    .line 68
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$200(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 69
    invoke-virtual {v2}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onPause()V

    goto :goto_20

    .line 72
    :cond_30
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->started:I
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$300(Lcom/vungle/warren/utility/ActivityManager;)I

    move-result v0

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->paused:Z
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$100(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->stopped:Z
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$400(Lcom/vungle/warren/utility/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 73
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # setter for: Lcom/vungle/warren/utility/ActivityManager;->stopped:Z
    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ActivityManager;->access$402(Lcom/vungle/warren/utility/ActivityManager;Z)Z

    .line 74
    iget-object v0, p0, Lcom/vungle/warren/utility/ActivityManager$1;->this$0:Lcom/vungle/warren/utility/ActivityManager;

    # getter for: Lcom/vungle/warren/utility/ActivityManager;->callbacks:Ljava/util/concurrent/CopyOnWriteArraySet;
    invoke-static {v0}, Lcom/vungle/warren/utility/ActivityManager;->access$200(Lcom/vungle/warren/utility/ActivityManager;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;

    .line 75
    invoke-virtual {v1}, Lcom/vungle/warren/utility/ActivityManager$LifeCycleCallback;->onStop()V

    goto :goto_57

    :cond_67
    return-void
.end method
