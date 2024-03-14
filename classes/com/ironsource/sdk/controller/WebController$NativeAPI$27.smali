.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->postAdEventNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$extData:Lorg/json/JSONObject;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    .line 2267
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$demandSourceId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$extData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2269
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_d

    goto :goto_23

    .line 2274
    :cond_d
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_3a

    .line 2275
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_3a

    .line 2270
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4600(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2272
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$demandSourceId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$27;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3a
    :goto_3a
    return-void
.end method
