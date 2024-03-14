.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;
.super Lcom/adcolony/sdk/AdColonyAdViewListener;
.source "AdColonyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdColonyBannerAdUnitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;


# direct methods
.method public constructor <init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)V
    .registers 2

    .line 701
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyAdViewListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyAdView;)V
    .registers 5

    .line 747
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adColonyAdView.getZoneId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdView;->getZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdView;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p1, :cond_2f

    .line 751
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdClicked()V

    :cond_2f
    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyAdView;)V
    .registers 5

    .line 737
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adColonyAdView.getZoneId() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdView;->getZoneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdView;->getZoneId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p1, :cond_2f

    .line 741
    invoke-interface {p1}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLeftApplication()V

    :cond_2f
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyAdView;)V
    .registers 6

    .line 705
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAdView;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 706
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$800(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v1, :cond_70

    .line 710
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v1

    if-nez v1, :cond_2f

    goto :goto_70

    .line 715
    :cond_2f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 716
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$900(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    :cond_3e
    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {p1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p1, :cond_6f

    .line 721
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerAdView:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$900(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$800(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/ISBannerSize;

    move-result-object v0

    # invokes: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->getBannerLayoutParams(Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v2, v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$1000(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoaded(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    :cond_6f
    return-void

    .line 711
    :cond_70
    :goto_70
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "banner layout is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .registers 5

    .line 727
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zone.getZoneID() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$AdColonyBannerAdUnitListener;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    if-eqz p1, :cond_35

    const-string v0, "Request Not Filled"

    .line 731
    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_35
    return-void
.end method
