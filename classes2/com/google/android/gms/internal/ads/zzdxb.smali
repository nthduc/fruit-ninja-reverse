.class final Lcom/google/android/gms/internal/ads/zzdxb;
.super Lcom/google/android/gms/internal/ads/zzdws;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzdws<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient size:I

.field private final transient zzhqz:[Ljava/lang/Object;

.field private final transient zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdwt<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient zzhre:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwt;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdwt<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdws;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzhqz:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzhre:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdxb;->size:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdxb;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->size:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdxb;)[Ljava/lang/Object;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzhqz:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    .line 10
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 11
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxb;->zzhrd:Lcom/google/android/gms/internal/ads/zzdwt;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzdwt;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxi()Lcom/google/android/gms/internal/ads/zzdxg;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdxb;->size:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .registers 4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxm()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdwk;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzaxi()Lcom/google/android/gms/internal/ads/zzdxg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdxg<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdwk;->zzaxm()Lcom/google/android/gms/internal/ads/zzdwp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdwk;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxg;

    return-object v0
.end method

.method final zzaxn()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method final zzaxq()Lcom/google/android/gms/internal/ads/zzdwp;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdwp<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdxa;-><init>(Lcom/google/android/gms/internal/ads/zzdxb;)V

    return-object v0
.end method
