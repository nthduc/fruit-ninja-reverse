.class public final Lcom/google/android/gms/internal/ads/zzatn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzdvm:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzatp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzatn;->zzdvm:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzatn;)Ljava/util/WeakHashMap;
    .registers 1

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatn;->zzdvm:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final zzy(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzatm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzatm;-><init>(Lcom/google/android/gms/internal/ads/zzatn;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
