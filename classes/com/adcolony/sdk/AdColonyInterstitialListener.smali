.class public abstract Lcom/adcolony/sdk/AdColonyInterstitialListener;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioStarted(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioStopped(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V
    .registers 4

    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .registers 2

    return-void
.end method

.method public abstract onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .registers 2

    return-void
.end method
