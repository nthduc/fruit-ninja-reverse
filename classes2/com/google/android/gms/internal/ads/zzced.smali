.class public final Lcom/google/android/gms/internal/ads/zzced;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzckt:Lcom/google/android/gms/internal/ads/zzadz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdv;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzced;->zzckt:Lcom/google/android/gms/internal/ads/zzadz;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzadz;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzadz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    .line 5
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzced;->zzckt:Lcom/google/android/gms/internal/ads/zzadz;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 6
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzsw()Lcom/google/android/gms/internal/ads/zzadz;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzced;->zzckt:Lcom/google/android/gms/internal/ads/zzadz;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
