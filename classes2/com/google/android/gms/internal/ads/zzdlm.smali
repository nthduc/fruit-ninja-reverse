.class public final Lcom/google/android/gms/internal/ads/zzdlm;
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

.field private final zzhca:Lcom/google/android/gms/internal/ads/zzdlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdlv<",
            "TRequestComponentT;TAdT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlv<",
            "TRequestComponentT;TAdT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhca:Lcom/google/android/gms/internal/ads/zzdlv;

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

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;
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
    .registers 4
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

    .line 5
    :try_start_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhce:Lcom/google/android/gms/internal/ads/zzatc;

    if-eqz v0, :cond_21

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhcf:Lcom/google/android/gms/internal/ads/zzdlu;

    .line 7
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzdlx;->zzc(Lcom/google/android/gms/internal/ads/zzdlu;)Lcom/google/android/gms/internal/ads/zzbtq;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbtq;->zzaey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbtn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object p2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlw;->zzhce:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbrl;->zzb(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_33

    monitor-exit p0

    return-object p1

    .line 9
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhca:Lcom/google/android/gms/internal/ads/zzdlv;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdlv;->zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhca:Lcom/google/android/gms/internal/ads/zzdlv;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdlv;->zzasv()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbtn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdlm;->zzhbn:Lcom/google/android/gms/internal/ads/zzbtn;
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_33

    .line 11
    monitor-exit p0

    return-object p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic zzasv()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdlm;->zzasw()Lcom/google/android/gms/internal/ads/zzbtn;

    move-result-object v0

    return-object v0
.end method
