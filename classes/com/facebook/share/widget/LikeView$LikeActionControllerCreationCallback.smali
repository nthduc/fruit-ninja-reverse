.class Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
.super Ljava/lang/Object;
.source "LikeView.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/widget/LikeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LikeActionControllerCreationCallback"
.end annotation


# instance fields
.field private isCancelled:Z

.field final synthetic this$0:Lcom/facebook/share/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/share/widget/LikeView;)V
    .registers 2

    .line 771
    iput-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$1;)V
    .registers 3

    .line 771
    invoke-direct {p0, p1}, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;-><init>(Lcom/facebook/share/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 776
    iput-boolean v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->isCancelled:Z

    return-void
.end method

.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 4

    .line 781
    iget-boolean v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->isCancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1e

    .line 786
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController;->shouldEnableView()Z

    move-result v0

    if-nez v0, :cond_14

    .line 787
    new-instance p2, Lcom/facebook/FacebookException;

    const-string v0, "Cannot use LikeView. The device may not be supported."

    invoke-direct {p2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 792
    :cond_14
    iget-object v0, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    # invokes: Lcom/facebook/share/widget/LikeView;->associateWithLikeActionController(Lcom/facebook/share/internal/LikeActionController;)V
    invoke-static {v0, p1}, Lcom/facebook/share/widget/LikeView;->access$1100(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/internal/LikeActionController;)V

    .line 793
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    # invokes: Lcom/facebook/share/widget/LikeView;->updateLikeStateAndLayout()V
    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$700(Lcom/facebook/share/widget/LikeView;)V

    :cond_1e
    if-eqz p2, :cond_31

    .line 797
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    # getter for: Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;
    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 798
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    # getter for: Lcom/facebook/share/widget/LikeView;->onErrorListener:Lcom/facebook/share/widget/LikeView$OnErrorListener;
    invoke-static {p1}, Lcom/facebook/share/widget/LikeView;->access$800(Lcom/facebook/share/widget/LikeView;)Lcom/facebook/share/widget/LikeView$OnErrorListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/share/widget/LikeView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 802
    :cond_31
    iget-object p1, p0, Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;->this$0:Lcom/facebook/share/widget/LikeView;

    const/4 p2, 0x0

    # setter for: Lcom/facebook/share/widget/LikeView;->creationCallback:Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;
    invoke-static {p1, p2}, Lcom/facebook/share/widget/LikeView;->access$1202(Lcom/facebook/share/widget/LikeView;Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;)Lcom/facebook/share/widget/LikeView$LikeActionControllerCreationCallback;

    return-void
.end method
