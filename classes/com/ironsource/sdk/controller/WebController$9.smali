.class Lcom/ironsource/sdk/controller/WebController$9;
.super Ljava/lang/Object;
.source "WebController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/WebController;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/WebController;

.field final synthetic val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V
    .registers 5

    .line 2852
    iput-object p1, p0, Lcom/ironsource/sdk/controller/WebController$9;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2854
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_37

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v0, v1, :cond_37

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Banner:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_13

    goto :goto_37

    .line 2865
    :cond_13
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_25

    .line 2866
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$9;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    goto :goto_88

    .line 2867
    :cond_25
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v0, v1, :cond_88

    .line 2868
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$9;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    invoke-static {v0}, Lcom/ironsource/sdk/controller/WebController;->access$4200(Lcom/ironsource/sdk/controller/WebController;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_88

    .line 2856
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_88

    .line 2859
    :cond_46
    iget-object v0, p0, Lcom/ironsource/sdk/controller/WebController$9;->this$0:Lcom/ironsource/sdk/controller/WebController;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    # invokes: Lcom/ironsource/sdk/controller/WebController;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/WebController;->access$4600(Lcom/ironsource/sdk/controller/WebController;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    .line 2860
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->this$0:Lcom/ironsource/sdk/controller/WebController;

    # getter for: Lcom/ironsource/sdk/controller/WebController;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/sdk/controller/WebController;->access$600(Lcom/ironsource/sdk/controller/WebController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdProductInitFailed (message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_88

    .line 2863
    iget-object v1, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$productType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$demandSource:Lcom/ironsource/sdk/data/DemandSource;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/WebController$9;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    return-void
.end method
