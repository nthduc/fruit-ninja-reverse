.class Lcom/ironsource/sdk/controller/WebController$1;
.super Lcom/ironsource/sdk/service/ConnectivityAdapter;
.source "WebController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->createConnectivityAdapter(Landroid/content/Context;)Lcom/ironsource/sdk/service/ConnectivityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lorg/json/JSONObject;Landroid/content/Context;)V
    .registers 4

    .line 232
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/service/ConnectivityAdapter;-><init>(Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 3

    .line 236
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z
    invoke-static {p2}, Lcom/ironsource/sdk/controller/WebController;->access$300(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 237
    iget-object p2, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p2, p1}, Lcom/ironsource/sdk/controller/WebController;->sendConnectionTypeChanged(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$300(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 244
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->sendConnectionTypeChanged(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p2, :cond_19

    .line 250
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mIsWebControllerReady:Z
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$300(Lcom/ironsource/sdk/controller/WebController;)Z

    move-result v0

    if-eqz v0, :cond_19

    :try_start_a
    const-string v0, "connectionType"

    .line 252
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    iget-object p1, p0, Lcom/ironsource/sdk/controller/WebController$1;->this$0:Lcom/ironsource/sdk/controller/WebController;

    invoke-virtual {p1, p2}, Lcom/ironsource/sdk/controller/WebController;->sendConnectionInfoChanged(Lorg/json/JSONObject;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 255
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method
