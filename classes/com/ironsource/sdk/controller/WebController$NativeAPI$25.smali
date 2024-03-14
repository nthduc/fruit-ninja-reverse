.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->onGetUserCreditsFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Ljava/lang/String;)V
    .registers 3

    .line 2159
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 2161
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->val$message:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 2165
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$25;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    return-void
.end method
