.class public final Lcom/google/android/gms/internal/ads/zzalw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdij:Ljava/lang/Object;

.field private final zzdik:Ljava/lang/Object;

.field private zzdil:Lcom/google/android/gms/internal/ads/zzamb;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockClient"
    .end annotation
.end field

.field private zzdim:Lcom/google/android/gms/internal/ads/zzamb;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lockService"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdij:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdik:Ljava/lang/Object;

    return-void
.end method

.method private static zzl(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    return-object v0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdik:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdim:Lcom/google/android/gms/internal/ads/zzamb;

    if-nez v1, :cond_1a

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamb;

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalw;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzade;->zzdcm:Lcom/google/android/gms/internal/ads/zzaci;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzaci;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzamb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdim:Lcom/google/android/gms/internal/ads/zzamb;

    .line 9
    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdim:Lcom/google/android/gms/internal/ads/zzamb;

    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public final zzb(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)Lcom/google/android/gms/internal/ads/zzamb;
    .registers 7

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdij:Ljava/lang/Object;

    monitor-enter v0

    .line 12
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdil:Lcom/google/android/gms/internal/ads/zzamb;

    if-nez v1, :cond_1e

    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamb;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalw;->zzl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcls:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzamb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdil:Lcom/google/android/gms/internal/ads/zzamb;

    .line 17
    :cond_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalw;->zzdil:Lcom/google/android/gms/internal/ads/zzamb;

    monitor-exit v0

    return-object p1

    :catchall_22
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method
