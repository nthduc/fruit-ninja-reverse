.class Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController$NativeAPI;->onAdWindowsClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

.field final synthetic val$demandSourceId:Ljava/lang/String;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController$NativeAPI;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 4

    .line 2192
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$demandSourceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2194
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_d

    goto :goto_1f

    .line 2199
    :cond_d
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_32

    .line 2200
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto :goto_32

    .line 2195
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->this$1:Lcom/ironsource/sdk/controller/WebController$NativeAPI;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/WebController$NativeAPI;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4600(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2197
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$NativeAPI$26;->val$demandSourceId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return-void
.end method
