.class public final Lcom/google/android/gms/internal/ads/zzcmi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbul;
.implements Lcom/google/android/gms/internal/ads/zzbuz;
.implements Lcom/google/android/gms/internal/ads/zzbyc;
.implements Lcom/google/android/gms/internal/ads/zzux;


# instance fields
.field private final zzevd:Lcom/google/android/gms/internal/ads/zzdog;

.field private final zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;

.field private final zzggz:Lcom/google/android/gms/internal/ads/zzdow;

.field private final zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

.field private zzghb:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzghc:Z

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdow;Lcom/google/android/gms/internal/ads/zzcmu;Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzcsp;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzggz:Lcom/google/android/gms/internal/ads/zzdow;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    .line 8
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcxm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghc:Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzcmt;)V
    .registers 9

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhek:Z

    if-eqz v0, :cond_28

    .line 99
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapd()Ljava/lang/String;

    move-result-object v5

    .line 100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcsv;

    .line 101
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    sget v6, Lcom/google/android/gms/internal/ads/zzcsq;->zzgne:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcsv;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzgha:Lcom/google/android/gms/internal/ads/zzcsp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcsp;->zza(Lcom/google/android/gms/internal/ads/zzcsv;)V

    return-void

    .line 104
    :cond_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method

.method private final zzaoy()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghb:Ljava/lang/Boolean;

    if-nez v0, :cond_2d

    .line 64
    monitor-enter p0

    .line 65
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghb:Ljava/lang/Boolean;

    if-nez v0, :cond_28

    .line 66
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcqf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 68
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzvr:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayu;->zzbd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmi;->zzf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghb:Ljava/lang/Boolean;

    .line 72
    :cond_28
    monitor-exit p0

    goto :goto_2d

    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v0

    .line 73
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghb:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static zzf(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    if-nez p1, :cond_6

    goto :goto_15

    .line 76
    :cond_6
    :try_start_6
    invoke-static {p0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkv()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object p1

    const-string v1, "CsiActionsListener.isPatternMatched"

    invoke-virtual {p1, p0, v1}, Lcom/google/android/gms/internal/ads/zzayb;->zza(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_15
    :goto_15
    return v0
.end method

.method private final zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfpk:Lcom/google/android/gms/internal/ads/zzcmu;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmu;->zzapf()Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzevd:Lcom/google/android/gms/internal/ads/zzdog;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmt;->zza(Lcom/google/android/gms/internal/ads/zzdnw;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzd(Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    const-string v1, "action"

    .line 84
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_35

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "ancn"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 87
    :cond_35
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhek:Z

    if-eqz p1, :cond_68

    .line 89
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzvr:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayu;->zzbf(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "online"

    goto :goto_4b

    :cond_49
    const-string p1, "offline"

    :goto_4b
    const-string v1, "device_connectivity"

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "event_timestamp"

    .line 95
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    const-string p1, "offline_ad"

    const-string v1, "1"

    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    :cond_68
    return-object v0
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhek:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "click"

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zza(Lcom/google/android/gms/internal/ads/zzcmt;)V

    return-void
.end method

.method public final onAdImpression()V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzaoy()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzfmx:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzhek:Z

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-string v0, "impression"

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zza(Lcom/google/android/gms/internal/ads/zzcmt;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzccl;)V
    .registers 5

    .line 47
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghc:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "ifts"

    .line 49
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "exception"

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccl;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccl;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "msg"

    .line 54
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 55
    :cond_25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method

.method public final zzajk()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzaoy()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "adapter_impression"

    .line 22
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method

.method public final zzajm()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzaoy()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "adapter_shown"

    .line 26
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method

.method public final zzajw()V
    .registers 4

    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghc:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "ifts"

    .line 59
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "blocked"

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 7

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzghc:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "ifts"

    .line 30
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcmi;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    move-result-object v0

    const-string v1, "reason"

    const-string v2, "adapter"

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 32
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    .line 33
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgw:Ljava/lang/String;

    .line 34
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgx:Ljava/lang/String;

    const-string v4, "com.google.android.gms.ads"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgy:Lcom/google/android/gms/internal/ads/zzva;

    if-eqz v3, :cond_36

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgy:Lcom/google/android/gms/internal/ads/zzva;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzva;->zzcgx:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 36
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgy:Lcom/google/android/gms/internal/ads/zzva;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzva;->errorCode:I

    .line 37
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgy:Lcom/google/android/gms/internal/ads/zzva;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzva;->zzcgw:Ljava/lang/String;

    :cond_36
    if-ltz v1, :cond_41

    .line 40
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "arec"

    .line 41
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 42
    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmi;->zzggz:Lcom/google/android/gms/internal/ads/zzdow;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdow;->zzgu(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string v1, "areec"

    .line 44
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcmt;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcmt;

    .line 45
    :cond_4e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcmt;->zzapc()V

    return-void
.end method
