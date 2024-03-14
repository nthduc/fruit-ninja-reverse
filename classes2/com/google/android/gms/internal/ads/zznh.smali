.class public final Lcom/google/android/gms/internal/ads/zznh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkg;


# instance fields
.field private final zzaps:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzbdm:Lcom/google/android/gms/internal/ads/zzok;

.field private final zzbfy:I

.field private final zzbfz:Lcom/google/android/gms/internal/ads/zznf;

.field private final zzbga:Lcom/google/android/gms/internal/ads/zzni;

.field private final zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

.field private zzbgc:Lcom/google/android/gms/internal/ads/zznk;

.field private zzbgd:Lcom/google/android/gms/internal/ads/zznk;

.field private zzbge:Lcom/google/android/gms/internal/ads/zzho;

.field private zzbgf:Z

.field private zzbgg:Lcom/google/android/gms/internal/ads/zzho;

.field private zzbgh:J

.field private zzbgi:I

.field private zzbgj:Lcom/google/android/gms/internal/ads/zznj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzok;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzok;->zzio()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/ads/zznf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zznf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzni;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzni;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    .line 6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zznk;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zznk;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    return-void
.end method

.method private final zza(J[BI)V
    .registers 11

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;->zzej(J)V

    const/4 v0, 0x0

    :cond_4
    :goto_4
    if-ge v0, p4, :cond_3c

    .line 106
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zznk;->zzbgl:J

    sub-long v1, p1, v1

    long-to-int v2, v1

    sub-int v1, p4, v0

    .line 107
    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 108
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 109
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzoh;->zzbh(I)I

    move-result v2

    invoke-static {v4, v2, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v1

    add-long/2addr p1, v4

    add-int/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zznk;->zzawj:J

    cmp-long v4, p1, v1

    if-nez v4, :cond_4

    .line 113
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zznk;->zzik()Lcom/google/android/gms/internal/ads/zznk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    goto :goto_4

    :cond_3c
    return-void
.end method

.method private final zzbc(I)I
    .registers 8

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    if-ne v0, v1, :cond_2f

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgm:Z

    if-eqz v0, :cond_15

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgo:Lcom/google/android/gms/internal/ads/zznk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    .line 204
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzok;->zzin()Lcom/google/android/gms/internal/ads/zzoh;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zznk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zznk;->zzawj:J

    iget v5, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zznk;-><init>(JI)V

    .line 205
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 206
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgo:Lcom/google/android/gms/internal/ads/zznk;

    const/4 v1, 0x1

    .line 207
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgm:Z

    .line 208
    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final zzej(J)V
    .registers 6

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zznk;->zzawj:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1a

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznk;->zzik()Lcom/google/android/gms/internal/ads/zznk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    goto :goto_0

    :cond_1a
    return-void
.end method

.method private final zzib()V
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzib()V

    .line 184
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    .line 185
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgm:Z

    if-eqz v1, :cond_31

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zznk;->zzbgm:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zznk;->zzbgl:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgl:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    div-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 187
    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzoh;

    const/4 v2, 0x0

    .line 189
    :goto_1e
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 190
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    aput-object v3, v1, v2

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznk;->zzik()Lcom/google/android/gms/internal/ads/zznk;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 193
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzok;->zza([Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 194
    :cond_31
    new-instance v0, Lcom/google/android/gms/internal/ads/zznk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zznk;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    .line 196
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J

    .line 197
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzok;->zzn()V

    return-void
.end method

.method private final zzii()Z
    .registers 4

    .line 179
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method private final zzij()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzib()V

    :cond_d
    return-void
.end method


# virtual methods
.method public final disable()V
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-nez v0, :cond_c

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzib()V

    :cond_c
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;ZZJ)I
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 34
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbge:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zznf;->zza(Lcom/google/android/gms/internal/ads/zzhq;Lcom/google/android/gms/internal/ads/zzjk;ZZLcom/google/android/gms/internal/ads/zzho;Lcom/google/android/gms/internal/ads/zzni;)I

    move-result v1

    const/4 v2, -0x5

    if-eq v1, v2, :cond_155

    const/4 v2, -0x4

    if-eq v1, v2, :cond_26

    const/4 v2, -0x3

    if-ne v1, v2, :cond_20

    return v2

    .line 102
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 38
    :cond_26
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzjh;->zzgl()Z

    move-result v1

    if-nez v1, :cond_154

    .line 39
    iget-wide v3, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaob:J

    cmp-long v1, v3, p5

    if-gez v1, :cond_37

    const/high16 v1, -0x80000000

    .line 40
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzjh;->zzac(I)V

    .line 41
    :cond_37
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzjk;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_103

    .line 42
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    .line 43
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    .line 44
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpk;->reset(I)V

    .line 45
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zznh;->zza(J[BI)V

    const-wide/16 v9, 0x1

    add-long/2addr v3, v9

    .line 47
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v9, v5, 0x80

    if-eqz v9, :cond_5e

    const/4 v9, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v9, 0x0

    :goto_5f
    and-int/lit8 v5, v5, 0x7f

    .line 50
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    if-nez v10, :cond_6f

    .line 51
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    const/16 v11, 0x10

    new-array v11, v11, [B

    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    .line 52
    :cond_6f
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/android/gms/internal/ads/zznh;->zza(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v9, :cond_92

    .line 55
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzpk;->reset(I)V

    .line 56
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zznh;->zza(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 58
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v6

    move v11, v6

    goto :goto_93

    :cond_92
    const/4 v11, 0x1

    .line 60
    :goto_93
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfClearData:[I

    if-eqz v5, :cond_9c

    .line 61
    array-length v6, v5

    if-ge v6, v11, :cond_9e

    .line 62
    :cond_9c
    new-array v5, v11, [I

    :cond_9e
    move-object v12, v5

    .line 63
    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzjg;->numBytesOfEncryptedData:[I

    if-eqz v5, :cond_a8

    .line 64
    array-length v6, v5

    if-ge v6, v11, :cond_aa

    .line 65
    :cond_a8
    new-array v5, v11, [I

    :cond_aa
    move-object v13, v5

    if-eqz v9, :cond_d7

    mul-int/lit8 v5, v11, 0x6

    .line 68
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzpk;->reset(I)V

    .line 69
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zznh;->zza(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 71
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    :goto_c2
    if-ge v7, v11, :cond_e3

    .line 73
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v5

    aput v5, v12, v7

    .line 74
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v5

    aput v5, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    .line 77
    :cond_d7
    aput v7, v12, v7

    .line 78
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzni;->size:I

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    sub-long v9, v3, v9

    long-to-int v6, v9

    sub-int/2addr v5, v6

    aput v5, v13, v7

    .line 79
    :cond_e3
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzni;->zzarq:Lcom/google/android/gms/internal/ads/zzkf;

    .line 80
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v14, v5, Lcom/google/android/gms/internal/ads/zzkf;->zzapa:[B

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzaoa:Lcom/google/android/gms/internal/ads/zzjg;

    iget-object v15, v6, Lcom/google/android/gms/internal/ads/zzjg;->iv:[B

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzkf;->zzaoz:I

    move/from16 v16, v5

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzjg;->set(I[I[I[B[BI)V

    .line 81
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 82
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    int-to-long v9, v4

    add-long/2addr v5, v9

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    .line 83
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzni;->size:I

    sub-int/2addr v3, v4

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzni;->size:I

    .line 84
    :cond_103
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzni;->size:I

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzjk;->zzae(I)V

    .line 85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzni;->zzawn:J

    iget-object v1, v8, Lcom/google/android/gms/internal/ads/zzjk;->zzdd:Ljava/nio/ByteBuffer;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzni;->size:I

    .line 87
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zznh;->zzej(J)V

    :cond_117
    :goto_117
    if-lez v5, :cond_14d

    .line 89
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zznk;->zzbgl:J

    sub-long v6, v3, v6

    long-to-int v7, v6

    .line 90
    iget v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbfy:I

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 91
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 92
    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzoh;->zzbh(I)I

    move-result v7

    invoke-virtual {v1, v9, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v9, v6

    add-long/2addr v3, v9

    sub-int/2addr v5, v6

    .line 95
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    iget-wide v6, v6, Lcom/google/android/gms/internal/ads/zznk;->zzawj:J

    cmp-long v9, v3, v6

    if-nez v9, :cond_117

    .line 96
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbdm:Lcom/google/android/gms/internal/ads/zzok;

    invoke-interface {v6, v8}, Lcom/google/android/gms/internal/ads/zzok;->zza(Lcom/google/android/gms/internal/ads/zzoh;)V

    .line 97
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zznk;->zzik()Lcom/google/android/gms/internal/ads/zznk;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbgc:Lcom/google/android/gms/internal/ads/zznk;

    goto :goto_117

    .line 99
    :cond_14d
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbga:Lcom/google/android/gms/internal/ads/zzni;

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzni;->zzbgk:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zznh;->zzej(J)V

    :cond_154
    return v2

    :cond_155
    move-object/from16 v1, p1

    .line 36
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zznh;->zzbge:Lcom/google/android/gms/internal/ads/zzho;

    return v2
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzii()Z

    move-result p3

    const/4 v0, -0x1

    if-nez p3, :cond_14

    .line 137
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzjy;->zzah(I)I

    move-result p1

    if-eq p1, v0, :cond_e

    return p1

    .line 140
    :cond_e
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 142
    :cond_14
    :try_start_14
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zznh;->zzbc(I)I

    move-result p2

    .line 143
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 144
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 145
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzoh;->zzbh(I)I

    move-result p3

    .line 146
    invoke-interface {p1, v1, p3, p2}, Lcom/google/android/gms/internal/ads/zzjy;->read([BII)I

    move-result p1

    if-eq p1, v0, :cond_39

    .line 150
    iget p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 151
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_3f

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzij()V

    return p1

    .line 149
    :cond_39
    :try_start_39
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    .line 155
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzij()V

    .line 156
    throw p1
.end method

.method public final zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V
    .registers 17

    move-object v1, p0

    .line 170
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzii()Z

    move-result v0

    if-nez v0, :cond_e

    .line 171
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    move-wide v3, p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznf;->zzei(J)V

    return-void

    :cond_e
    move-wide v3, p1

    .line 173
    :try_start_f
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J

    move v0, p4

    int-to-long v7, v0

    sub-long/2addr v5, v7

    move v2, p5

    int-to-long v7, v2

    sub-long v7, v5, v7

    .line 174
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    move-wide v3, p1

    move v5, p3

    move-wide v6, v7

    move v8, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zznf;->zza(JIJILcom/google/android/gms/internal/ads/zzkf;)V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_27

    .line 175
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzij()V

    return-void

    :catchall_27
    move-exception v0

    .line 177
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzij()V

    .line 178
    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznj;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgj:Lcom/google/android/gms/internal/ads/zznj;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpk;I)V
    .registers 8

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzii()Z

    move-result v0

    if-nez v0, :cond_a

    .line 158
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    return-void

    :cond_a
    :goto_a
    if-lez p2, :cond_2c

    .line 161
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zznh;->zzbc(I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgd:Lcom/google/android/gms/internal/ads/zznk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zznk;->zzbgn:Lcom/google/android/gms/internal/ads/zzoh;

    .line 163
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzoh;->data:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzoh;->zzbh(I)I

    move-result v1

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 164
    iget v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgi:I

    .line 165
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgh:J

    sub-int/2addr p2, v0

    goto :goto_a

    .line 168
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzij()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzho;)V
    .registers 4

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move-object v0, p1

    .line 130
    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zznf;->zzg(Lcom/google/android/gms/internal/ads/zzho;)Z

    move-result v1

    .line 131
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgg:Lcom/google/android/gms/internal/ads/zzho;

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgf:Z

    .line 133
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgj:Lcom/google/android/gms/internal/ads/zznj;

    if-eqz p1, :cond_19

    if-eqz v1, :cond_19

    .line 134
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zznj;->zzf(Lcom/google/android/gms/internal/ads/zzho;)V

    :cond_19
    return-void
.end method

.method public final zze(JZ)Z
    .registers 6

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zznf;->zzd(JZ)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-nez p3, :cond_e

    const/4 p1, 0x0

    return p1

    .line 32
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;->zzej(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzhv()J
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzhv()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzid()I
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzid()I

    move-result v0

    return v0
.end method

.method public final zzie()Z
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzie()Z

    move-result v0

    return v0
.end method

.method public final zzif()Lcom/google/android/gms/internal/ads/zzho;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzif()Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v0

    return-object v0
.end method

.method public final zzih()V
    .registers 6

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzig()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    .line 27
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zznh;->zzej(J)V

    :cond_f
    return-void
.end method

.method public final zzk(Z)V
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbgb:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_8

    :cond_7
    const/4 p1, 0x2

    :goto_8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result p1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zznh;->zzib()V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbfz:Lcom/google/android/gms/internal/ads/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zznf;->zzic()V

    if-ne p1, v1, :cond_19

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznh;->zzbge:Lcom/google/android/gms/internal/ads/zzho;

    :cond_19
    return-void
.end method
