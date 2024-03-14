.class public Lcom/applovin/adview/AppLovinInterstitialAd;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .registers 3

    if-eqz p0, :cond_16

    if-eqz p1, :cond_e

    new-instance v0, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;

    invoke-direct {v0}, Lcom/applovin/impl/adview/InterstitialAdDialogCreatorImpl;-><init>()V

    invoke-interface {v0, p0, p1}, Lcom/applovin/adview/InterstitialAdDialogCreator;->createInterstitialAdDialog(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p0

    return-object p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No context specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAdReadyToDisplay(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p0

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {p0, v0}, Lcom/applovin/sdk/AppLovinAdService;->hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p0

    return p0
.end method

.method public static show(Landroid/content/Context;)V
    .registers 2

    if-eqz p0, :cond_b

    new-instance v0, Lcom/applovin/adview/AppLovinInterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAd$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No context specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "AppLovinInterstitialAd{}"

    return-object v0
.end method
