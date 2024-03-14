.class final Lcom/google/android/gms/internal/ads/zzdks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdag<",
        "Lcom/google/android/gms/internal/ads/zzboh;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhbb:Lcom/google/android/gms/internal/ads/zzdko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdko;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 7

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/ads/zzboh;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    monitor-enter v0

    .line 7
    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdko;->zzhaz:Lcom/google/android/gms/internal/ads/zzboh;

    if-eqz v1, :cond_12

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdko;->zzhaz:Lcom/google/android/gms/internal/ads/zzboh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    .line 9
    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzdko;->zzhaz:Lcom/google/android/gms/internal/ads/zzboh;

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzdko;->zza(Lcom/google/android/gms/internal/ads/zzdko;Lcom/google/android/gms/internal/ads/zzboh;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdko;->zza(Lcom/google/android/gms/internal/ads/zzdko;)Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbok;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdko;->zza(Lcom/google/android/gms/internal/ads/zzdko;)Lcom/google/android/gms/internal/ads/zzdkc;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzbok;-><init>(Lcom/google/android/gms/internal/ads/zzboh;Lcom/google/android/gms/internal/ads/zzxc;Lcom/google/android/gms/internal/ads/zzdkc;)V

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkc;->zzb(Lcom/google/android/gms/internal/ads/zzsg;)V

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbqo;->zzaih()V

    .line 15
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_36

    throw p1
.end method

.method public final zzaqv()V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    monitor-enter v0

    .line 3
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdks;->zzhbb:Lcom/google/android/gms/internal/ads/zzdko;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdko;->zzhaz:Lcom/google/android/gms/internal/ads/zzboh;

    .line 4
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
