.class Lcom/ironsource/sdk/controller/ControllerManager$16;
.super Ljava/lang/Object;
.source "ControllerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/ControllerManager;->updateConsentInfo(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/ControllerManager;

.field final synthetic val$consentParams:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/ControllerManager;Lorg/json/JSONObject;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/ironsource/sdk/controller/ControllerManager$16;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/ControllerManager$16;->val$consentParams:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/ironsource/sdk/controller/ControllerManager$16;->this$0:Lcom/ironsource/sdk/controller/ControllerManager;

    # getter for: Lcom/ironsource/sdk/controller/ControllerManager;->mController:Lcom/ironsource/sdk/controller/IronSourceController;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/ControllerManager;->access$500(Lcom/ironsource/sdk/controller/ControllerManager;)Lcom/ironsource/sdk/controller/IronSourceController;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/ControllerManager$16;->val$consentParams:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceController;->updateConsentInfo(Lorg/json/JSONObject;)V

    return-void
.end method
