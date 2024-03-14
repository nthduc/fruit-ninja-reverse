.class final Lcom/google/android/gms/internal/ads/zzald;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbci;


# instance fields
.field private final synthetic zzdht:Lcom/google/android/gms/internal/ads/zzakr;

.field private final synthetic zzdhv:Lcom/google/android/gms/internal/ads/zzalm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;Lcom/google/android/gms/internal/ads/zzalm;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdhv:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdht:Lcom/google/android/gms/internal/ads/zzakr;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzakr;->zza(Lcom/google/android/gms/internal/ads/zzakr;I)I

    const-string v1, "Failed loading new engine. Marking new engine destroyable."

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzald;->zzdhv:Lcom/google/android/gms/internal/ads/zzalm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzalm;->zztm()V

    .line 6
    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1
.end method
