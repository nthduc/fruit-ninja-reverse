.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyAdapter.java"

# interfaces
.implements Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initRewardedVideoForBidding(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 3

    .line 166
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$1;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoInitSuccess()V

    return-void
.end method
