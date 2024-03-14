.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;
.super Ljava/lang/Object;
.source "AdColonyAdapter.java"

# interfaces
.implements Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 4

    .line 182
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 191
    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->val$config:Lorg/json/JSONObject;

    const-string v1, "zoneId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$2;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # invokes: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->loadRewardedVideoInternal(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$000(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Ljava/lang/String;)V

    return-void
.end method
