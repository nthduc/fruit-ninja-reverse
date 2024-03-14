.class public final Lcom/google/android/gms/internal/ads/zzdln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdlv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestComponentT::",
        "Lcom/google/android/gms/internal/ads/zzbtn<",
        "TAdT;>;AdT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdlv<",
        "TRequestComponentT;TAdT;>;"
    }
.end annotation


# instance fields
.field private zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestComponentT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final declared-synchronized zzasw()Lcom/google/android/gms/internal/ads/zzbtn;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRequestComponentT;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlw;",
            "Lcom/google/android/gms/internal/ads/zzdlx<",
            "TRequestComponentT;>;)",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TAdT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_1
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbtn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdln;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zzajh()Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzasv()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdln;->zzasw()Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v0

    return-object v0
.end method
