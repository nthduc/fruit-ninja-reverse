.class Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;
.super Landroid/os/CountDownTimer;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;JJ)V
    .registers 6

    .line 403
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Event Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$1000(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 415
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const/4 v1, 0x0

    # setter for: Lcom/ironsource/sdk/controller/WebController;->isRemoveCloseEventHandler:Z
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$1002(Lcom/ironsource/sdk/controller/WebController;Z)Z

    goto :goto_29

    .line 417
    :cond_20
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "forceClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->engageEnd(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public onTick(J)V
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Event Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
