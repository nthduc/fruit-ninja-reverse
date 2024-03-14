.class public final Lcom/google/android/gms/internal/ads/zzagq;
.super Lcom/google/android/gms/internal/ads/zzafr;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzdem:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzafr;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzdem:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzagq;)Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagq;->zzdem:Lcom/google/android/gms/ads/formats/OnPublisherAdViewLoadedListener;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 6

    const-string v0, ""

    if-eqz p1, :cond_57

    if-nez p2, :cond_7

    goto :goto_57

    .line 6
    :cond_7
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    .line 7
    new-instance v1, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;

    invoke-direct {v1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 8
    :try_start_13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxc;->zzkk()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz v2, :cond_31

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxc;->zzkk()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvc;

    if-eqz v2, :cond_28

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvc;->getAdListener()Lcom/google/android/gms/ads/AdListener;

    move-result-object v2

    goto :goto_29

    :cond_28
    move-object v2, p2

    .line 12
    :goto_29
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    .line 15
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :cond_31
    :goto_31
    :try_start_31
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxc;->zzkj()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz v2, :cond_4d

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzxc;->zzkj()Lcom/google/android/gms/internal/ads/zzxk;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvt;

    if-eqz v2, :cond_45

    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvt;->getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    move-result-object p2

    .line 21
    :cond_45
    invoke-virtual {v1, p2}, Lcom/google/android/gms/ads/doubleclick/PublisherAdView;->setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p2

    .line 24
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :cond_4d
    :goto_4d
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbbg;->zzaah:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzagp;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzagp;-><init>(Lcom/google/android/gms/internal/ads/zzagq;Lcom/google/android/gms/ads/doubleclick/PublisherAdView;Lcom/google/android/gms/internal/ads/zzxc;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_57
    :goto_57
    return-void
.end method
