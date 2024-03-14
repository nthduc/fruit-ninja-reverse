.class public final Lcom/google/android/gms/internal/ads/zzapx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;


# instance fields
.field private uri:Landroid/net/Uri;

.field private zzdms:Landroid/app/Activity;

.field private zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzapx;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzapx;)Landroid/app/Activity;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdms:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public final onDestroy()V
    .registers 2

    const-string v0, "Destroying AdMobCustomTabsAdapter adapter."

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .registers 2

    const-string v0, "Pausing AdMobCustomTabsAdapter adapter."

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 2

    const-string v0, "Resuming AdMobCustomTabsAdapter adapter."

    .line 37
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method public final requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .registers 6

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    .line 3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    if-nez p2, :cond_c

    const-string p1, "Listener not set for mediation. Returning."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_c
    instance-of p2, p1, Landroid/app/Activity;

    const/4 p4, 0x0

    if-nez p2, :cond_1c

    const-string p1, "AdMobCustomTabs can only work with Activity context. Bailing out."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 11
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwichMR1()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzacc;->zzk(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/4 p2, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p2, 0x0

    :goto_2b
    if-nez p2, :cond_38

    const-string p1, "Default browser does not support custom tabs. Bailing out."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    :cond_38
    const-string p2, "tab_url"

    .line 17
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4f

    const-string p1, "The tab_url retrieved from mediation metadata is empty. Bailing out."

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0, p4}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V

    return-void

    .line 22
    :cond_4f
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdms:Landroid/app/Activity;

    .line 23
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->uri:Landroid/net/Uri;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapx;->zzdmt:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;->onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V

    return-void
.end method

.method public final showInterstitial()V
    .registers 10

    .line 26
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 27
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzapx;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 28
    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/zzb;

    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-direct {v4, v0}, Lcom/google/android/gms/ads/internal/overlay/zzb;-><init>(Landroid/content/Intent;)V

    .line 29
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaqa;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzaqa;-><init>(Lcom/google/android/gms/internal/ads/zzapx;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbbx;

    const/4 v1, 0x0

    invoke-direct {v8, v1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbbx;-><init>(IIZ)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzb;Lcom/google/android/gms/internal/ads/zzux;Lcom/google/android/gms/ads/internal/overlay/zzp;Lcom/google/android/gms/ads/internal/overlay/zzv;Lcom/google/android/gms/internal/ads/zzbbx;)V

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzapz;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzapz;-><init>(Lcom/google/android/gms/internal/ads/zzapx;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzayb;->zzwp()V

    return-void
.end method
