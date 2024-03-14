.class final Lcom/google/android/gms/internal/ads/zzkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzaps:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzarl:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/ads/zzjy;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BII)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_16

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_16
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_19
    and-int v5, v0, v3

    if-nez v5, :cond_22

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_22
    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BII)V

    :goto_2c
    if-ge v1, v4, :cond_3c

    shl-int/lit8 p1, v0, 0x8

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_2c

    .line 47
    :cond_3c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzjy;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_16

    cmp-long v8, v2, v4

    if-lez v8, :cond_15

    goto :goto_16

    :cond_15
    move-wide v4, v2

    :cond_16
    :goto_16
    long-to-int v5, v4

    .line 7
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-interface {v1, v4, v9, v8}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BII)V

    .line 8
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v10

    .line 9
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    :goto_28
    const-wide/32 v12, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v8, v10, v12

    if-eqz v8, :cond_50

    .line 11
    iget v8, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    if-ne v8, v5, :cond_38

    return v9

    .line 13
    :cond_38
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {v1, v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BII)V

    const/16 v4, 0x8

    shl-long/2addr v10, v4

    const-wide/16 v12, -0x100

    and-long/2addr v10, v12

    .line 15
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v4, v4, v9

    and-int/lit16 v4, v4, 0xff

    int-to-long v12, v4

    or-long/2addr v10, v12

    goto :goto_28

    .line 16
    :cond_50
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc(Lcom/google/android/gms/internal/ads/zzjy;)J

    move-result-wide v10

    .line 17
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    int-to-long v12, v5

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v10, v14

    if-eqz v5, :cond_a3

    cmp-long v5, v2, v6

    if-eqz v5, :cond_68

    add-long v5, v12, v10

    cmp-long v7, v5, v2

    if-ltz v7, :cond_68

    goto :goto_a3

    .line 20
    :cond_68
    :goto_68
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    int-to-long v5, v2

    add-long v7, v12, v10

    cmp-long v3, v5, v7

    if-gez v3, :cond_9d

    .line 21
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc(Lcom/google/android/gms/internal/ads/zzjy;)J

    move-result-wide v2

    cmp-long v5, v2, v14

    if-nez v5, :cond_7a

    return v9

    .line 24
    :cond_7a
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzkp;->zzc(Lcom/google/android/gms/internal/ads/zzjy;)J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_9c

    const-wide/32 v7, 0x7fffffff

    cmp-long v16, v2, v7

    if-lez v16, :cond_8c

    goto :goto_9c

    :cond_8c
    cmp-long v7, v2, v5

    if-eqz v7, :cond_68

    long-to-int v5, v2

    .line 28
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzjy;->zzaj(I)V

    .line 29
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    int-to-long v5, v5

    add-long/2addr v5, v2

    long-to-int v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkp;->zzarl:I

    goto :goto_68

    :cond_9c
    :goto_9c
    return v9

    :cond_9d
    int-to-long v1, v2

    cmp-long v3, v1, v7

    if-nez v3, :cond_a3

    return v4

    :cond_a3
    :goto_a3
    return v9
.end method
