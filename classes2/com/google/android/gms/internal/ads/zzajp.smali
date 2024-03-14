.class public final Lcom/google/android/gms/internal/ads/zzajp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzacr:Lcom/google/android/gms/internal/ads/zzwz;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzvr:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzacr:Lcom/google/android/gms/internal/ads/zzwz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "context cannot be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanc;-><init>()V

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzvx;->zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzwz;

    move-result-object p1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzajp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)Lcom/google/android/gms/internal/ads/zzajp;
    .registers 4

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzacr:Lcom/google/android/gms/internal/ads/zzwz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajn;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzajn;-><init>(Lcom/google/android/gms/ads/instream/InstreamAd$InstreamAdLoadCallback;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzwz;->zza(Lcom/google/android/gms/internal/ads/zzajk;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 14
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzajo;)Lcom/google/android/gms/internal/ads/zzajp;
    .registers 4

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzacr:Lcom/google/android/gms/internal/ads/zzwz;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzajc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzajc;-><init>(Lcom/google/android/gms/internal/ads/zzajo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzwz;->zza(Lcom/google/android/gms/internal/ads/zzajc;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 19
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-object p0
.end method

.method public final zztg()Lcom/google/android/gms/internal/ads/zzajq;
    .registers 4

    .line 21
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzajq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzvr:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzajp;->zzacr:Lcom/google/android/gms/internal/ads/zzwz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzwz;->zzqf()Lcom/google/android/gms/internal/ads/zzwu;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwu;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 23
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
