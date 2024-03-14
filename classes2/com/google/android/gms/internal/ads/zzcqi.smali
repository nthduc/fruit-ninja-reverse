.class public final Lcom/google/android/gms/internal/ads/zzcqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqj;


# instance fields
.field private final zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final zzgkt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcqj;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzgku:Lcom/google/android/gms/internal/ads/zzbwr;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/internal/ads/zzbwr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzeph<",
            "Lcom/google/android/gms/internal/ads/zzcqj;",
            ">;>;",
            "Lcom/google/android/gms/internal/ads/zzdzb;",
            "Lcom/google/android/gms/internal/ads/zzbwr;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgkt:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgku:Lcom/google/android/gms/internal/ads/zzbwr;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzcqi;)Lcom/google/android/gms/internal/ads/zzbwr;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgku:Lcom/google/android/gms/internal/ads/zzbwr;

    return-object p0
.end method


# virtual methods
.method public final zzh(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatc;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgku:Lcom/google/android/gms/internal/ads/zzbwr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbwr;->zzd(Lcom/google/android/gms/internal/ads/zzatc;)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcof;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdpg;->zzhfy:Lcom/google/android/gms/internal/ads/zzdpg;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcof;-><init>(Lcom/google/android/gms/internal/ads/zzdpg;)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyq;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabb;->zzcyk:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    array-length v2, v1

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_46

    aget-object v4, v1, v3

    .line 13
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgkt:Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeph;

    if-eqz v4, :cond_43

    .line 15
    const-class v5, Lcom/google/android/gms/internal/ads/zzcof;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcqh;

    invoke-direct {v6, v4, p1}, Lcom/google/android/gms/internal/ads/zzcqh;-><init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzatc;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcqi;->zzgcz:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 16
    invoke-static {v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzdya;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object v0

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 18
    :cond_46
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcqk;-><init>(Lcom/google/android/gms/internal/ads/zzcqi;)V

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbbz;->zzeeu:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 20
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdyq;->zza(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdyr;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
