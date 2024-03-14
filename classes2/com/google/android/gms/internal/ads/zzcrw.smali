.class public final Lcom/google/android/gms/internal/ads/zzcrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzglw:Lcom/google/android/gms/internal/ads/zzcru;

.field private final zzglx:Lcom/google/android/gms/internal/ads/zzdzb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcru;Lcom/google/android/gms/internal/ads/zzdzb;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzglw:Lcom/google/android/gms/internal/ads/zzcru;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdrp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdrp<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzglw:Lcom/google/android/gms/internal/ads/zzcru;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcrv;->zza(Lcom/google/android/gms/internal/ads/zzcru;)Ljava/util/concurrent/Callable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->zze(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcry;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcry;-><init>(Lcom/google/android/gms/internal/ads/zzcrw;Lcom/google/android/gms/internal/ads/zzdrp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrw;->zzglx:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-void
.end method
