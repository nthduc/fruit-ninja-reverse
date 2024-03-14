.class public final Lcom/google/android/gms/internal/ads/zzdrw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzhjx:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final zzhkc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzhkd:Lcom/google/android/gms/internal/ads/zzdru;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhkd:Lcom/google/android/gms/internal/ads/zzdru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhjx:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhkc:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdrt;)V
    .registers 5

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdrw;-><init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdsa;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/zzdsa<",
            "TO;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhkc:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzk(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzdyv;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrv;->zzgww:Ljava/util/concurrent/Callable;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v7

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdsa;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhkd:Lcom/google/android/gms/internal/ads/zzdru;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhjx:Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzdrw;->zzhkc:Ljava/util/List;

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdru;->zza(Lcom/google/android/gms/internal/ads/zzdru;)Lcom/google/android/gms/internal/ads/zzdzb;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzdyv;->zza(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzdsa;-><init>(Lcom/google/android/gms/internal/ads/zzdru;Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdzc;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdrt;)V

    return-object v1
.end method
