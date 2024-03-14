.class Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

.field final synthetic val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

.field final synthetic val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    iput-object p2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$502(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast p1, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoaded()V

    goto :goto_54

    :cond_2f
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$602(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast p1, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoaded()V

    goto :goto_54

    :cond_42
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    # setter for: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lcom/applovin/sdk/AppLovinAd;
    invoke-static {v0, p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$702(Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    iget-object p1, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast p1, Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdLoaded()V

    :goto_54
    return-void

    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Non-fullscreen ad loaded for fullscreen ad adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public failedToReceiveAd(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->this$0:Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad failed to load with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    # invokes: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(I)Lcom/applovin/mediation/adapter/MaxAdapterError;
    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$200(I)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_54

    :cond_31
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    # invokes: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(I)Lcom/applovin/mediation/adapter/MaxAdapterError;
    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$200(I)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_54

    :cond_43
    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter$4;->val$listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    # invokes: Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(I)Lcom/applovin/mediation/adapter/MaxAdapterError;
    invoke-static {p1}, Lcom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$200(I)Lcom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    :goto_54
    return-void

    :cond_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Non-fullscreen ad failed to load for fullscreen ad adapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
