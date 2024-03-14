.class public final Lcom/google/android/gms/internal/ads/zzajq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzacs:Lcom/google/android/gms/internal/ads/zzvl;

.field private final zzact:Lcom/google/android/gms/internal/ads/zzwu;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwu;)V
    .registers 4

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->zzchs:Lcom/google/android/gms/internal/ads/zzvl;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzajq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzvl;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzwu;Lcom/google/android/gms/internal/ads/zzvl;)V
    .registers 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzvr:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzact:Lcom/google/android/gms/internal/ads/zzwu;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzacs:Lcom/google/android/gms/internal/ads/zzvl;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzyw;)V
    .registers 4

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzact:Lcom/google/android/gms/internal/ads/zzwu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajq;->zzvr:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyw;)Lcom/google/android/gms/internal/ads/zzvg;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzwu;->zzb(Lcom/google/android/gms/internal/ads/zzvg;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method

.method public final loadAd(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .registers 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.INTERNET"
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zzdr()Lcom/google/android/gms/internal/ads/zzyw;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzajq;->zza(Lcom/google/android/gms/internal/ads/zzyw;)V

    return-void
.end method
