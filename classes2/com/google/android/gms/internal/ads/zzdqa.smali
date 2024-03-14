.class final Lcom/google/android/gms/internal/ads/zzdqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final maxEntries:I

.field private final zzhha:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final zzhhb:I

.field private final zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->maxEntries:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhb:I

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdqx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    return-void
.end method

.method private final zzaue()V
    .registers 6

    .line 28
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqk;

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzky()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzdqk;->zzhis:J

    sub-long/2addr v1, v3

    .line 32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhb:I

    int-to-long v3, v0

    cmp-long v0, v1, v3

    if-ltz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_32

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzauw()V

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_32
    return-void
.end method


# virtual methods
.method public final getCreationTimeMillis()J
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->getCreationTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final size()I
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaue()V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final zzatz()Lcom/google/android/gms/internal/ads/zzdqk;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzauu()V

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaue()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdqk;

    if-eqz v0, :cond_21

    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdqx;->zzauv()V

    :cond_21
    return-object v0
.end method

.method public final zzaua()J
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzaua()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzaub()I
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzaub()I

    move-result v0

    return v0
.end method

.method public final zzauc()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzaum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaud()Lcom/google/android/gms/internal/ads/zzdra;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzaux()Lcom/google/android/gms/internal/ads/zzdra;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdqk;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "*>;)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhhc:Lcom/google/android/gms/internal/ads/zzdqx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdqx;->zzauu()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdqa;->zzaue()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdqa;->maxEntries:I

    if-ne v0, v1, :cond_14

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdqa;->zzhha:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method
