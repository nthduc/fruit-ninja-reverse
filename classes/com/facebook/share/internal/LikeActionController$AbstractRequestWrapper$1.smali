.class Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;)V
    .registers 2

    .line 1563
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4

    .line 1566
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1567
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_16

    .line 1568
    iget-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    iget-object v0, p1, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {p1, v0}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->processError(Lcom/facebook/FacebookRequestError;)V

    goto :goto_1b

    .line 1570
    :cond_16
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->processSuccess(Lcom/facebook/GraphResponse;)V

    :goto_1b
    return-void
.end method
