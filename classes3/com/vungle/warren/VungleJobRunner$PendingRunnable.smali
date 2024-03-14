.class Lcom/vungle/warren/VungleJobRunner$PendingRunnable;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingRunnable"
.end annotation


# instance fields
.field runner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/warren/VungleJobRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/vungle/warren/VungleJobRunner;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;->runner:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/vungle/warren/VungleJobRunner$PendingRunnable;->runner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/VungleJobRunner;

    if-eqz v0, :cond_d

    .line 59
    # invokes: Lcom/vungle/warren/VungleJobRunner;->executePendingJobs()V
    invoke-static {v0}, Lcom/vungle/warren/VungleJobRunner;->access$000(Lcom/vungle/warren/VungleJobRunner;)V

    :cond_d
    return-void
.end method
