.class Lcom/facebook/share/internal/LikeActionController$8;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;

.field final synthetic val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V
    .registers 4

    .line 949
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 5

    .line 952
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v0, 0x0

    # setter for: Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z
    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 954
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 957
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v0, 0x1

    # invokes: Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V
    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    goto :goto_34

    .line 959
    :cond_15
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v1, 0x0

    # setter for: Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 960
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # setter for: Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z
    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 962
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/InternalAppEventsLogger;
    invoke-static {p1}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/InternalAppEventsLogger;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    const-string v2, "fb_like_control_did_unlike"

    .line 963
    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/appevents/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 968
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    # invokes: Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V
    invoke-static {p1, v0}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    :goto_34
    return-void
.end method
