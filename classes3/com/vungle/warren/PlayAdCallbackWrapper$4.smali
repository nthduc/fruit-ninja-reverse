.class Lcom/vungle/warren/PlayAdCallbackWrapper$4;
.super Ljava/lang/Object;
.source "PlayAdCallbackWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/PlayAdCallbackWrapper;->onAdClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/PlayAdCallbackWrapper;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/PlayAdCallbackWrapper;Ljava/lang/String;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->this$0:Lcom/vungle/warren/PlayAdCallbackWrapper;

    iput-object p2, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->this$0:Lcom/vungle/warren/PlayAdCallbackWrapper;

    # getter for: Lcom/vungle/warren/PlayAdCallbackWrapper;->playAdCallback:Lcom/vungle/warren/PlayAdCallback;
    invoke-static {v0}, Lcom/vungle/warren/PlayAdCallbackWrapper;->access$000(Lcom/vungle/warren/PlayAdCallbackWrapper;)Lcom/vungle/warren/PlayAdCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/PlayAdCallbackWrapper$4;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vungle/warren/PlayAdCallback;->onAdClick(Ljava/lang/String;)V

    return-void
.end method
