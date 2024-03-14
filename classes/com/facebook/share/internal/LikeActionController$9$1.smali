.class Lcom/facebook/share/internal/LikeActionController$9$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$9;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$9;

.field final synthetic val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

.field final synthetic val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V
    .registers 4

    .line 1007
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 9

    .line 1010
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    .line 1011
    invoke-virtual {p1}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object p1

    if-eqz p1, :cond_11

    goto :goto_35

    .line 1022
    :cond_11
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v0, p1, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    .line 1023
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->isObjectLiked()Z

    move-result v1

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v2, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v3, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v4, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v5, p1, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    .line 1028
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getUnlikeToken()Ljava/lang/String;

    move-result-object v6

    .line 1022
    # invokes: Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1014
    :cond_35
    :goto_35
    sget-object p1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1016
    # getter for: Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v3, v3, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1018
    # getter for: Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to refresh like state for id: \'%s\'"

    .line 1014
    invoke-static {p1, v0, v2, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
