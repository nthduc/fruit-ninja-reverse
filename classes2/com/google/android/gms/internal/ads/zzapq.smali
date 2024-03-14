.class public final Lcom/google/android/gms/internal/ads/zzapq;
.super Lcom/google/android/gms/internal/ads/zzapk;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

.field private final zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

.field private zzdmj:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

.field private zzdmk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapk;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzapg;",
            "Lcom/google/android/gms/internal/ads/zzanh;",
            ")",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapt;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapt;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;)Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmj:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/ads/mediation/MediationRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    return-object p1
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 132
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzado:Ljava/lang/String;

    .line 133
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "max_ad_content_rating"

    .line 134
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_d} :catch_d

    :catch_d
    return-object p1
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z
    .registers 1

    .line 131
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzvg;->zzche:Z

    if-nez p0, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbg;->zzym()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_10

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x1

    return p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;
    .registers 3

    .line 138
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    if-eqz v0, :cond_17

    .line 139
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzvg;->zzchi:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_17

    return-object p1

    .line 142
    :cond_17
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    return-object p1
.end method

.method private static zzdu(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Server parameters: "

    if-eqz v1, :cond_11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzfe(Ljava/lang/String;)V

    .line 119
    :try_start_19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_42

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 123
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 124
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_41} :catch_44

    goto :goto_2e

    :cond_42
    move-object p0, v0

    :cond_43
    return-object p0

    :catch_44
    move-exception p0

    const-string v0, ""

    .line 129
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    instance-of v1, v0, Lcom/google/android/gms/ads/mediation/zza;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    .line 84
    :cond_8
    :try_start_8
    check-cast v0, Lcom/google/android/gms/ads/mediation/zza;

    .line 85
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/zza;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    const-string v1, ""

    .line 87
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzvn;Lcom/google/android/gms/internal/ads/zzapm;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapu;

    invoke-direct {v0, p0, p6}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapm;)V

    .line 90
    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    .line 92
    new-instance v1, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    const/4 v2, -0x1

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_88

    goto :goto_3c

    :sswitch_15
    const-string v3, "interstitial"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :sswitch_1f
    const-string v3, "rewarded"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const/4 v2, 0x2

    goto :goto_3c

    :sswitch_29
    const-string v3, "native"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const/4 v2, 0x3

    goto :goto_3c

    :sswitch_33
    const-string v3, "banner"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    const/4 v2, 0x0

    :cond_3c
    :goto_3c
    if-eqz v2, :cond_55

    if-eq v2, v6, :cond_52

    if-eq v2, v5, :cond_4f

    if-ne v2, v4, :cond_47

    .line 97
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->NATIVE:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_57

    .line 98
    :cond_47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Internal Error"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_4f
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_57

    .line 95
    :cond_52
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    goto :goto_57

    .line 94
    :cond_55
    sget-object p2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 99
    :goto_57
    invoke-direct {v1, p2, p4}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;-><init>(Lcom/google/android/gms/ads/AdFormat;Landroid/os/Bundle;)V

    .line 100
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance p4, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;

    .line 103
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget v1, p5, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v2, p5, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzvn;->zzacy:Ljava/lang/String;

    .line 104
    invoke-static {v1, v2, p5}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object p5

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/os/Bundle;Lcom/google/android/gms/ads/AdSize;)V

    .line 106
    invoke-virtual {p6, p4, v0}, Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;->collectSignals(Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7a} :catch_7b

    return-void

    :catch_7b
    move-exception p1

    const-string p2, "Error generating signals for RTB"

    .line 109
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    new-instance p1, Landroid/os/RemoteException;

    invoke-direct {p1}, Landroid/os/RemoteException;-><init>()V

    throw p1

    nop

    :sswitch_data_88
    .sparse-switch
        -0x533a80d4 -> :sswitch_33
        -0x3ebdafe9 -> :sswitch_29
        -0xe47b3f2 -> :sswitch_1f
        0x240b672c -> :sswitch_15
    .end sparse-switch
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaov;Lcom/google/android/gms/internal/ads/zzanh;Lcom/google/android/gms/internal/ads/zzvn;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p7

    .line 5
    :try_start_6
    new-instance v3, Lcom/google/android/gms/internal/ads/zzapp;

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzapp;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzaov;Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 6
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;

    .line 7
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/content/Context;

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapq;->zzdu(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 9
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapq;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v9

    .line 10
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v10

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 11
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v14

    iget v0, v2, Lcom/google/android/gms/internal/ads/zzvn;->width:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzvn;->height:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzvn;->zzacy:Ljava/lang/String;

    .line 12
    invoke-static {v0, v5, v2}, Lcom/google/android/gms/ads/zzb;->zza(IILjava/lang/String;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    move-object v5, v15

    move-object/from16 v7, p1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v16}, Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Lcom/google/android/gms/ads/AdSize;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v4, v1, v3}, Lcom/google/android/gms/ads/mediation/Adapter;->loadBannerAd(Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    move-exception v0

    const-string v1, "Adapter failed to render banner ad."

    .line 16
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapa;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 18
    :try_start_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaps;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaps;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapa;Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 19
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;

    .line 20
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 21
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapq;->zzdu(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 22
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapq;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v8

    .line 23
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 24
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/Adapter;->loadInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    const-string v2, "Adapter failed to render interstitial ad."

    .line 28
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapb;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    .line 56
    :try_start_4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzapr;

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzapr;-><init>(Lcom/google/android/gms/internal/ads/zzapq;Lcom/google/android/gms/internal/ads/zzapb;Lcom/google/android/gms/internal/ads/zzanh;)V

    .line 57
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;

    .line 58
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 59
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapq;->zzdu(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 60
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapq;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v8

    .line 61
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 62
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/Adapter;->loadNativeAd(Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_39} :catch_3a

    return-void

    :catch_3a
    move-exception v0

    const-string v2, "Adapter failed to render rewarded ad."

    .line 66
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 31
    :try_start_8
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v2

    .line 32
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 33
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 34
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapq;->zzdu(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapq;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v8

    .line 36
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 37
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    const-string v2, "Adapter failed to render rewarded ad."

    .line 41
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zza([Ljava/lang/String;[Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdlj:Lcom/google/android/gms/ads/mediation/MediationRewardedAd;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAd;->showAd(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p1

    const-string v0, ""

    .line 80
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 44
    :try_start_8
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Lcom/google/android/gms/internal/ads/zzapg;Lcom/google/android/gms/internal/ads/zzanh;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    move-result-object v2

    .line 45
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    new-instance v15, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;

    .line 46
    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/content/Context;

    .line 47
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzapq;->zzdu(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 48
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapq;->zzd(Lcom/google/android/gms/internal/ads/zzvg;)Landroid/os/Bundle;

    move-result-object v8

    .line 49
    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zzc(Lcom/google/android/gms/internal/ads/zzvg;)Z

    move-result v9

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvg;->zznb:Landroid/location/Location;

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadm:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzvg;->zzadn:I

    .line 50
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/ads/zzapq;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvg;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    move-object v4, v15

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;ZLandroid/location/Location;IILjava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v3, v15, v2}, Lcom/google/android/gms/ads/mediation/Adapter;->loadRewardedInterstitialAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception v0

    const-string v2, "Adapter failed to render rewarded interstitial ad."

    .line 54
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final zzdr(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmk:Ljava/lang/String;

    return-void
.end method

.method public final zzua()Lcom/google/android/gms/internal/ads/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v0

    return-object v0
.end method

.method public final zzub()Lcom/google/android/gms/internal/ads/zzapv;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmi:Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/Adapter;->getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzapv;->zza(Lcom/google/android/gms/ads/mediation/VersionInfo;)Lcom/google/android/gms/internal/ads/zzapv;

    move-result-object v0

    return-object v0
.end method

.method public final zzy(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapq;->zzdmj:Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 70
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;->showAd(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p1

    const-string v0, ""

    .line 73
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    const/4 p1, 0x1

    return p1
.end method
