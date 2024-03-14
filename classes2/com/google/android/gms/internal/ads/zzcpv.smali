.class public abstract Lcom/google/android/gms/internal/ads/zzcpv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field protected final mLock:Ljava/lang/Object;

.field protected final zzdja:Lcom/google/android/gms/internal/ads/zzbcg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbcg<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field protected zzgke:Z

.field protected zzgkf:Z

.field protected zzgkg:Lcom/google/android/gms/internal/ads/zzatc;

.field protected zzgkh:Lcom/google/android/gms/internal/ads/zzask;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgke:Z

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkf:Z

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Disconnected from remote ad request service."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzdja:Lcom/google/android/gms/internal/ads/zzbcg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqm;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfw:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onConnectionSuspended(I)V
    .registers 2

    const-string p1, "Cannot connect to remote service, fallback to local instance."

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    return-void
.end method

.method protected final zzapz()V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcpv;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 9
    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkf:Z

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzask;->isConnected()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzask;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 11
    :cond_16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcpv;->zzgkh:Lcom/google/android/gms/internal/ads/zzask;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzask;->disconnect()V

    .line 12
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v1
.end method
