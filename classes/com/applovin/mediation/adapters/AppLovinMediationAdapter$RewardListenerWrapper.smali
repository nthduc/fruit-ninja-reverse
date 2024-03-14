.class abstract Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RewardListenerWrapper"
.end annotation


# instance fields
.field protected isFullyWatched:Z

.field final synthetic this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;


# direct methods
.method private constructor <init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;-><init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;)V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "User declined to view rewarded ad"

    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 v0, 0x0

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p1, v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userOverQuota(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is over quota: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userRewardRejected(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reward rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userRewardVerified(Lcom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "currency"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    const/4 v0, 0x0

    :try_start_1d
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_21} :catch_23

    double-to-int v0, v0

    goto :goto_3a

    :catch_23
    move-exception v1

    iget-object v2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse AppLovin reward amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3a
    iget-object p2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0, p1}, Lcom/applovin/mediation/MaxReward;->create(ILjava/lang/String;)Lcom/applovin/mediation/MaxReward;

    move-result-object p1

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p2, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    goto :goto_4d

    :cond_44
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {}, Lcom/applovin/mediation/MaxReward;->createDefault()Lcom/applovin/mediation/MaxReward;

    move-result-object p2

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    :goto_4d
    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rewarded verified: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    # getter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {v0}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$800(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lcom/applovin/mediation/MaxReward;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public validationRequestFailed(Lcom/applovin/sdk/AppLovinAd;I)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reward validation request failed with code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lcom/applovin/mediation/MaxReward;
    invoke-static {p1, p2}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxReward;)Lcom/applovin/mediation/MaxReward;

    return-void
.end method
