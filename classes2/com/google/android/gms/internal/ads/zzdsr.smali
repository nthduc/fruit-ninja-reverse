.class public final Lcom/google/android/gms/internal/ads/zzdsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbqa:Lcom/google/android/gms/common/util/Clock;

.field private final zzbre:Ljava/lang/String;

.field private final zzcja:Ljava/lang/String;

.field private final zzdqu:Ljava/lang/String;

.field private final zzfna:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

.field private final zzfwe:Lcom/google/android/gms/internal/ads/zzcwj;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdoj;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 9
    .param p6    # Lcom/google/android/gms/internal/ads/zzdoj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfwe:Lcom/google/android/gms/internal/ads/zzcwj;

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzbre:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzdqu:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzcja:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzvr:Landroid/content/Context;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method private static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, ""

    .line 66
    :cond_8
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzgy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbk;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "fakeForAdDebugLog"

    :cond_e
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnv;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzatw;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzatw;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzbqa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 45
    :try_start_b
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzatw;->getType()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzatw;->getAmount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_83

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    const-string v5, ""

    if-nez v4, :cond_1f

    move-object v4, v5

    goto :goto_25

    :cond_1f
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzdoj;->zzdvz:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdsr;->zzgy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    :goto_25
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    if-nez v6, :cond_2a

    goto :goto_30

    :cond_2a
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzdoj;->zzdwa:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsr;->zzgy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    :goto_30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_34
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_82

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 54
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_userid@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_custom_data@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_tmstmp@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_itm@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_amt@"

    .line 58
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzbre:Ljava/lang/String;

    const-string v8, "@gw_sdkver@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzvr:Landroid/content/Context;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtp:Z

    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaxh;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v6

    .line 61
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_82
    return-object v0

    :catch_83
    move-exception p1

    const-string p2, "Unable to determine award type and amount."

    .line 49
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsr;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 13
    .param p2    # Lcom/google/android/gms/internal/ads/zzdnv;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_a

    const-string p3, "1"

    goto :goto_c

    :cond_a
    const-string p3, "0"

    .line 14
    :goto_c
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_10
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 15
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzdog;->zzhev:Lcom/google/android/gms/internal/ads/zzdof;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdof;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdok;->zzhfb:Ljava/lang/String;

    const-string v3, "@gw_adlocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@gw_adnetrefresh@"

    .line 16
    invoke-static {v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzbre:Ljava/lang/String;

    const-string v3, "@gw_sdkver@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_58

    .line 19
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzdkp:Ljava/lang/String;

    const-string v3, "@gw_qdata@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzagx:Ljava/lang/String;

    const-string v3, "@gw_adnetid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzdjo:Ljava/lang/String;

    const-string v3, "@gw_allocid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzvr:Landroid/content/Context;

    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzdnv;->zzdtp:Z

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzaxh;->zzc(Ljava/lang/String;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_58
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfwe:Lcom/google/android/gms/internal/ads/zzcwj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcwj;->zzaqm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@gw_adnetstatus@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzdqu:Ljava/lang/String;

    const-string v3, "@gw_seqnum@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzcja:Ljava/lang/String;

    const-string v3, "@gw_sessid@"

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsr;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcro:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8f

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    const/4 v2, 0x1

    goto :goto_90

    :cond_8f
    const/4 v2, 0x0

    .line 30
    :goto_90
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v2, :cond_99

    if-eqz v3, :cond_c5

    .line 32
    :cond_99
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 33
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdsr;->zzfna:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 34
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    if-eqz v2, :cond_b5

    const-string v2, "ms"

    .line 36
    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    :cond_b5
    if-eqz v3, :cond_bd

    const-string v2, "attok"

    .line 38
    invoke-virtual {v1, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 39
    :cond_bd
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :cond_c5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_ca
    return-object v0
.end method
