.class public final Lcom/google/android/gms/internal/ads/zzkl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzjv;


# static fields
.field private static final zzapj:Lcom/google/android/gms/internal/ads/zzka;

.field private static final zzapk:[B

.field private static final zzapl:[B

.field private static final zzapm:Ljava/util/UUID;


# instance fields
.field private zzaih:J

.field private final zzapd:Lcom/google/android/gms/internal/ads/zzks;

.field private final zzapn:Lcom/google/android/gms/internal/ads/zzkj;

.field private final zzapo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/zzkq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapp:Z

.field private final zzapq:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapr:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzaps:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapt:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapu:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapv:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapw:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapx:Lcom/google/android/gms/internal/ads/zzpk;

.field private final zzapy:Lcom/google/android/gms/internal/ads/zzpk;

.field private zzapz:Ljava/nio/ByteBuffer;

.field private zzaqa:J

.field private zzaqb:J

.field private zzaqc:J

.field private zzaqd:J

.field private zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

.field private zzaqf:Z

.field private zzaqg:I

.field private zzaqh:J

.field private zzaqi:Z

.field private zzaqj:J

.field private zzaqk:J

.field private zzaql:J

.field private zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

.field private zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

.field private zzaqo:Z

.field private zzaqp:I

.field private zzaqq:J

.field private zzaqr:J

.field private zzaqs:I

.field private zzaqt:I

.field private zzaqu:[I

.field private zzaqv:I

.field private zzaqw:I

.field private zzaqx:I

.field private zzaqy:I

.field private zzaqz:Z

.field private zzara:Z

.field private zzarb:Z

.field private zzarc:Z

.field private zzard:B

.field private zzare:I

.field private zzarf:I

.field private zzarg:I

.field private zzarh:Z

.field private zzari:Z

.field private zzarj:Lcom/google/android/gms/internal/ads/zzjx;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 577
    new-instance v0, Lcom/google/android/gms/internal/ads/zzko;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzko;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapj:Lcom/google/android/gms/internal/ads/zzka;

    const/16 v0, 0x20

    .line 578
    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapk:[B

    const/16 v0, 0xc

    .line 579
    new-array v0, v0, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapl:[B

    .line 580
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapm:Ljava/util/UUID;

    return-void

    nop

    :array_2c
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_40
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzki;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzki;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzkl;-><init>(Lcom/google/android/gms/internal/ads/zzkj;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzkj;I)V
    .registers 7

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqc:J

    .line 8
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqd:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqj:J

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqk:J

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaql:J

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapn:Lcom/google/android/gms/internal/ads/zzkj;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapn:Lcom/google/android/gms/internal/ads/zzkj;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzkn;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzkn;-><init>(Lcom/google/android/gms/internal/ads/zzkl;Lcom/google/android/gms/internal/ads/zzko;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzkj;->zza(Lcom/google/android/gms/internal/ads/zzkm;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapp:Z

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/zzks;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzks;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapo:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzpk;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapt:Lcom/google/android/gms/internal/ads/zzpk;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapu:Lcom/google/android/gms/internal/ads/zzpk;

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzpf;->zzbjr:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzpk;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapx:Lcom/google/android/gms/internal/ads/zzpk;

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapy:Lcom/google/android/gms/internal/ads/zzpk;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkg;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v0

    if-lez v0, :cond_12

    .line 562
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 563
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    goto :goto_17

    :cond_12
    const/4 v0, 0x0

    .line 564
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzjy;IZ)I

    move-result p1

    .line 565
    :goto_17
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 566
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    return p1
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkq;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 459
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 460
    sget-object p2, Lcom/google/android/gms/internal/ads/zzkl;->zzapk:[B

    array-length p2, p2

    add-int/2addr p2, p3

    .line 461
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_23

    .line 462
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzkl;->zzapk:[B

    add-int v3, p2, p3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    .line 463
    :cond_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    sget-object v2, Lcom/google/android/gms/internal/ads/zzkl;->zzapk:[B

    array-length v2, v2

    invoke-interface {p1, v0, v2, p3}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 464
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 465
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbn(I)V

    return-void

    .line 467
    :cond_38
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    .line 468
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqz:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_185

    .line 469
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzaro:Z

    if-eqz v2, :cond_175

    .line 470
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    .line 471
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzara:Z

    const/16 v5, 0x80

    if-nez v2, :cond_7a

    .line 472
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 473
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 474
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v2, v2, v1

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_72

    .line 476
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v2, v2, v1

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzard:B

    .line 477
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzara:Z

    goto :goto_7a

    .line 475
    :cond_72
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_7a
    :goto_7a
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzard:B

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_183

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_85

    const/4 v2, 0x1

    goto :goto_86

    :cond_85
    const/4 v2, 0x0

    .line 480
    :goto_86
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    .line 481
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarb:Z

    if-nez v6, :cond_cb

    .line 482
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapx:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/16 v7, 0x8

    invoke-interface {p1, v6, v1, v7}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 483
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 484
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarb:Z

    .line 485
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    if-eqz v2, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v5, 0x0

    :goto_a9
    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    .line 486
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 487
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 488
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    .line 489
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapx:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 490
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapx:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 491
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    :cond_cb
    if-eqz v2, :cond_183

    .line 493
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarc:Z

    if-nez v2, :cond_ec

    .line 494
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 495
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 496
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 497
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzare:I

    .line 498
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarc:Z

    .line 499
    :cond_ec
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzare:I

    shl-int/2addr v2, v3

    .line 500
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzpk;->reset(I)V

    .line 501
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-interface {p1, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 502
    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 503
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzare:I

    div-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-short v2, v2

    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    .line 505
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_112

    .line 506
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_118

    .line 507
    :cond_112
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    .line 508
    :cond_118
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 511
    :goto_124
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzare:I

    if-ge v2, v7, :cond_146

    .line 513
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v7

    .line 514
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_13b

    .line 515
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    int-to-short v6, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_142

    .line 516
    :cond_13b
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_142
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_124

    .line 518
    :cond_146
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    .line 519
    rem-int/2addr v7, v3

    if-ne v7, v4, :cond_154

    .line 520
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_15f

    .line 521
    :cond_154
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 522
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 523
    :goto_15f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapy:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapz:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzc([BI)V

    .line 524
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapy:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 525
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    goto :goto_183

    .line 526
    :cond_175
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    if-eqz v2, :cond_183

    .line 527
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    array-length v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzc([BI)V

    .line 528
    :cond_183
    :goto_183
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqz:Z

    .line 529
    :cond_185
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v2

    add-int/2addr p3, v2

    .line 530
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-nez v2, :cond_1ac

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a2

    goto :goto_1ac

    .line 553
    :cond_1a2
    :goto_1a2
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    if-ge v2, p3, :cond_206

    sub-int v2, p3, v2

    .line 554
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkg;I)I

    goto :goto_1a2

    .line 531
    :cond_1ac
    :goto_1ac
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    .line 532
    aput-byte v1, v2, v1

    .line 533
    aput-byte v1, v2, v4

    .line 534
    aput-byte v1, v2, v3

    .line 535
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzasr:I

    .line 536
    iget v4, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzasr:I

    rsub-int/lit8 v4, v4, 0x4

    .line 537
    :goto_1bc
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    if-ge v6, p3, :cond_206

    .line 538
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarf:I

    if-nez v6, :cond_1fe

    .line 540
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v3, v6

    .line 541
    invoke-interface {p1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    if-lez v6, :cond_1dc

    .line 543
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v7, v2, v4, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 544
    :cond_1dc
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 545
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 546
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapr:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarf:I

    .line 547
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 548
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapq:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 549
    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    goto :goto_1bc

    .line 551
    :cond_1fe
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkg;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarf:I

    goto :goto_1bc

    .line 555
    :cond_206
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21f

    .line 556
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 557
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapt:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 558
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    :cond_21f
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzkq;J)V
    .registers 15

    .line 417
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8e

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqr:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_1e

    .line 421
    sget-object v2, Lcom/google/android/gms/internal/ads/zzkl;->zzapl:[B

    goto :goto_71

    :cond_1e
    const-wide v4, 0xd693a400L

    .line 422
    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    .line 424
    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    .line 426
    div-long v9, v2, v9

    long-to-int v4, v9

    const v7, 0xf4240

    mul-int v7, v7, v4

    int-to-long v9, v7

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    .line 428
    div-long/2addr v2, v9

    long-to-int v3, v2

    .line 429
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 430
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 431
    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzpq;->zzbk(Ljava/lang/String;)[B

    move-result-object v2

    :goto_71
    const/16 v3, 0x13

    const/16 v4, 0xc

    .line 432
    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzkg;->zza(Lcom/google/android/gms/internal/ads/zzpk;I)V

    .line 434
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapw:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    .line 435
    :cond_8e
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasq:Lcom/google/android/gms/internal/ads/zzkg;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarq:Lcom/google/android/gms/internal/ads/zzkf;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzkg;->zza(JIIILcom/google/android/gms/internal/ads/zzkf;)V

    .line 436
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarh:Z

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgu()V

    return-void
.end method

.method private static zza([II)[I
    .registers 3

    if-nez p0, :cond_5

    .line 572
    new-array p0, p1, [I

    return-object p0

    .line 573
    :cond_5
    array-length v0, p0

    if-lt v0, p1, :cond_9

    return-object p0

    .line 575
    :cond_9
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static zzan(I)I
    .registers 1

    sparse-switch p0, :sswitch_data_10

    const/4 p0, 0x0

    return p0

    :sswitch_5
    const/4 p0, 0x5

    return p0

    :sswitch_7
    const/4 p0, 0x4

    return p0

    :sswitch_9
    const/4 p0, 0x1

    return p0

    :sswitch_b
    const/4 p0, 0x3

    return p0

    :sswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_10
    .sparse-switch
        0x83 -> :sswitch_d
        0x86 -> :sswitch_b
        0x88 -> :sswitch_d
        0x9b -> :sswitch_d
        0x9f -> :sswitch_d
        0xa0 -> :sswitch_9
        0xa1 -> :sswitch_7
        0xa3 -> :sswitch_7
        0xae -> :sswitch_9
        0xb0 -> :sswitch_d
        0xb3 -> :sswitch_d
        0xb5 -> :sswitch_5
        0xb7 -> :sswitch_9
        0xba -> :sswitch_d
        0xbb -> :sswitch_9
        0xd7 -> :sswitch_d
        0xe0 -> :sswitch_9
        0xe1 -> :sswitch_9
        0xe7 -> :sswitch_d
        0xf1 -> :sswitch_d
        0xfb -> :sswitch_d
        0x4254 -> :sswitch_d
        0x4255 -> :sswitch_7
        0x4282 -> :sswitch_b
        0x4285 -> :sswitch_d
        0x42f7 -> :sswitch_d
        0x4489 -> :sswitch_5
        0x47e1 -> :sswitch_d
        0x47e2 -> :sswitch_7
        0x47e7 -> :sswitch_9
        0x47e8 -> :sswitch_d
        0x4dbb -> :sswitch_9
        0x5031 -> :sswitch_d
        0x5032 -> :sswitch_d
        0x5034 -> :sswitch_9
        0x5035 -> :sswitch_9
        0x53ab -> :sswitch_7
        0x53ac -> :sswitch_d
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_d
        0x54b2 -> :sswitch_d
        0x54ba -> :sswitch_d
        0x55aa -> :sswitch_d
        0x55b0 -> :sswitch_9
        0x55b9 -> :sswitch_d
        0x55ba -> :sswitch_d
        0x55bb -> :sswitch_d
        0x55bc -> :sswitch_d
        0x55bd -> :sswitch_d
        0x55d0 -> :sswitch_9
        0x55d1 -> :sswitch_5
        0x55d2 -> :sswitch_5
        0x55d3 -> :sswitch_5
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_5
        0x55d6 -> :sswitch_5
        0x55d7 -> :sswitch_5
        0x55d8 -> :sswitch_5
        0x55d9 -> :sswitch_5
        0x55da -> :sswitch_5
        0x56aa -> :sswitch_d
        0x56bb -> :sswitch_d
        0x6240 -> :sswitch_9
        0x6264 -> :sswitch_d
        0x63a2 -> :sswitch_7
        0x6d80 -> :sswitch_9
        0x7670 -> :sswitch_9
        0x7672 -> :sswitch_7
        0x22b59c -> :sswitch_b
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_d
        0x114d9b74 -> :sswitch_9
        0x1549a966 -> :sswitch_9
        0x1654ae6b -> :sswitch_9
        0x18538067 -> :sswitch_9
        0x1a45dfa3 -> :sswitch_9
        0x1c53bb6b -> :sswitch_9
        0x1f43b675 -> :sswitch_9
    .end sparse-switch
.end method

.method static zzao(I)Z
    .registers 2

    const v0, 0x1549a966

    if-eq p0, v0, :cond_17

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_17

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_17

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v0

    if-lt v0, p2, :cond_9

    return-void

    .line 452
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->capacity()I

    move-result v0

    if-ge v0, p2, :cond_2d

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    .line 454
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v2

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzc([BI)V

    .line 456
    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->limit()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 457
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbn(I)V

    return-void
.end method

.method private final zzea(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    .line 568
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqc:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_13

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 570
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 569
    :cond_13
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzgu()V
    .registers 2

    const/4 v0, 0x0

    .line 439
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqy:I

    .line 440
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarg:I

    .line 441
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarf:I

    .line 442
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqz:Z

    .line 443
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzara:Z

    .line 444
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarc:Z

    .line 445
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzare:I

    .line 446
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzard:B

    .line 447
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarb:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapv:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpk;->reset()V

    return-void
.end method

.method static synthetic zzgv()Ljava/util/UUID;
    .registers 1

    .line 576
    sget-object v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapm:Ljava/util/UUID;

    return-object v0
.end method


# virtual methods
.method public final release()V
    .registers 1

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkb;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarh:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_3a

    .line 40
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarh:Z

    if-nez v3, :cond_3a

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapn:Lcom/google/android/gms/internal/ads/zzkj;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzkj;->zzb(Lcom/google/android/gms/internal/ads/zzjy;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v3

    .line 43
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqi:Z

    if-eqz v5, :cond_25

    .line 44
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqk:J

    .line 45
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqj:J

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/zzkb;->position:J

    .line 46
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqi:Z

    :goto_23
    const/4 v3, 0x1

    goto :goto_37

    .line 48
    :cond_25
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqf:Z

    if-eqz v3, :cond_36

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqk:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_36

    .line 49
    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/zzkb;->position:J

    .line 50
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqk:J

    goto :goto_23

    :cond_36
    const/4 v3, 0x0

    :goto_37
    if-eqz v3, :cond_5

    return v1

    :cond_3a
    if-eqz v2, :cond_3d

    return v0

    :cond_3d
    const/4 p1, -0x1

    return p1
.end method

.method final zza(ID)V
    .registers 5

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4489

    if-eq p1, v0, :cond_48

    packed-switch p1, :pswitch_data_52

    goto :goto_11

    .line 299
    :pswitch_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzask:F

    :goto_11
    return-void

    .line 297
    :pswitch_12
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasj:F

    return-void

    .line 295
    :pswitch_18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasi:F

    return-void

    .line 293
    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzash:F

    return-void

    .line 291
    :pswitch_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasg:F

    return-void

    .line 289
    :pswitch_2a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasf:F

    return-void

    .line 287
    :pswitch_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzase:F

    return-void

    .line 285
    :pswitch_36
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasd:F

    return-void

    .line 283
    :pswitch_3c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasc:F

    return-void

    .line 281
    :pswitch_42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-float p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasb:F

    return-void

    :cond_48
    double-to-long p1, p2

    .line 277
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqd:J

    return-void

    .line 279
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    double-to-int p2, p2

    iput p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahn:I

    return-void

    :pswitch_data_52
    .packed-switch 0x55d1
        :pswitch_42
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_2a
        :pswitch_24
        :pswitch_1e
        :pswitch_18
        :pswitch_12
        :pswitch_c
    .end packed-switch
.end method

.method final zza(IILcom/google/android/gms/internal/ads/zzjy;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0xa1

    const/16 v5, 0xa3

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v4, :cond_91

    if-eq v1, v5, :cond_91

    const/16 v4, 0x4255

    if-eq v1, v4, :cond_85

    const/16 v4, 0x47e2

    if-eq v1, v4, :cond_76

    const/16 v4, 0x53ab

    if-eq v1, v4, :cond_58

    const/16 v4, 0x63a2

    if-eq v1, v4, :cond_4c

    const/16 v4, 0x7672

    if-ne v1, v4, :cond_33

    .line 317
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzahk:[B

    .line 318
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzahk:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    return-void

    .line 416
    :cond_33
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v3, 0x1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected id: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_4c
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzarr:[B

    .line 315
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzarr:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    return-void

    .line 309
    :cond_58
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapu:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    invoke-static {v1, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 310
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapu:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    sub-int/2addr v6, v2

    invoke-interface {v3, v1, v6, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 311
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapu:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 312
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapu:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqg:I

    return-void

    .line 323
    :cond_76
    new-array v1, v2, [B

    .line 324
    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 325
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzkf;

    invoke-direct {v3, v8, v1}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(I[B)V

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/zzkq;->zzarq:Lcom/google/android/gms/internal/ads/zzkf;

    return-void

    .line 320
    :cond_85
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    new-array v4, v2, [B

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    .line 321
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    invoke-interface {v3, v1, v7, v2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    return-void

    .line 327
    :cond_91
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    const/16 v9, 0x8

    if-nez v4, :cond_b6

    .line 328
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v4, v3, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzjy;ZZI)J

    move-result-wide v10

    long-to-int v4, v10

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqv:I

    .line 329
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzks;->zzgw()I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 330
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqr:J

    .line 331
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    .line 332
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpk;->reset()V

    .line 333
    :cond_b6
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzapo:Landroid/util/SparseArray;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqv:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzkq;

    if-nez v4, :cond_cc

    .line 335
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    sub-int v1, v2, v1

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 336
    iput v7, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    return-void

    .line 338
    :cond_cc
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    if-ne v10, v8, :cond_285

    const/4 v10, 0x3

    .line 339
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzkl;->zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V

    .line 340
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/lit8 v11, v11, 0x6

    shr-int/2addr v11, v8

    const/16 v13, 0xff

    if-nez v11, :cond_f6

    .line 342
    iput v8, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    .line 343
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzkl;->zza([II)[I

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    .line 344
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    sub-int/2addr v2, v11

    sub-int/2addr v2, v10

    aput v2, v6, v7

    goto/16 :goto_212

    :cond_f6
    if-ne v1, v5, :cond_27d

    .line 347
    invoke-direct {v0, v3, v6}, Lcom/google/android/gms/internal/ads/zzkl;->zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V

    .line 348
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v14, v14, v10

    and-int/2addr v14, v13

    add-int/2addr v14, v8

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    .line 349
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    .line 350
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzkl;->zza([II)[I

    move-result-object v14

    iput-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    if-ne v11, v12, :cond_11f

    .line 352
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    sub-int/2addr v2, v10

    sub-int/2addr v2, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    div-int/2addr v2, v6

    .line 353
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    invoke-static {v10, v7, v6, v2}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_212

    :cond_11f
    if-ne v11, v8, :cond_157

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 357
    :goto_124
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_14b

    .line 358
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aput v7, v14, v6

    :cond_12e
    add-int/2addr v10, v8

    .line 359
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzkl;->zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V

    .line 360
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    and-int/2addr v14, v13

    .line 361
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aget v16, v15, v6

    add-int v16, v16, v14

    aput v16, v15, v6

    if-eq v14, v13, :cond_12e

    .line 363
    aget v14, v15, v6

    add-int/2addr v11, v14

    add-int/lit8 v6, v6, 0x1

    goto :goto_124

    .line 365
    :cond_14b
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    sub-int/2addr v14, v8

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    sub-int/2addr v2, v15

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v6, v14

    goto/16 :goto_212

    :cond_157
    if-ne v11, v10, :cond_264

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    .line 369
    :goto_15c
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    add-int/lit8 v15, v14, -0x1

    if-ge v6, v15, :cond_207

    .line 370
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aput v7, v14, v6

    add-int/lit8 v10, v10, 0x1

    .line 371
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzkl;->zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V

    .line 372
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/lit8 v15, v10, -0x1

    aget-byte v14, v14, v15

    if-eqz v14, :cond_1ff

    const-wide/16 v16, 0x0

    const/4 v14, 0x0

    :goto_178
    if-ge v14, v9, :cond_1ca

    rsub-int/lit8 v18, v14, 0x7

    shl-int v18, v8, v18

    .line 377
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v5, v5, v15

    and-int v5, v5, v18

    if-eqz v5, :cond_1c0

    add-int/2addr v10, v14

    .line 380
    invoke-direct {v0, v3, v10}, Lcom/google/android/gms/internal/ads/zzkl;->zzb(Lcom/google/android/gms/internal/ads/zzjy;I)V

    .line 381
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/lit8 v16, v15, 0x1

    aget-byte v5, v5, v15

    and-int/2addr v5, v13

    xor-int/lit8 v15, v18, -0x1

    and-int/2addr v5, v15

    int-to-long v7, v5

    move/from16 v5, v16

    :goto_19b
    move-wide/from16 v16, v7

    if-ge v5, v10, :cond_1b2

    shl-long v7, v16, v9

    .line 384
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    and-int/2addr v5, v13

    int-to-long v12, v5

    or-long/2addr v7, v12

    move/from16 v5, v16

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_19b

    :cond_1b2
    if-lez v6, :cond_1ca

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v7, 0x1

    shl-long v12, v7, v14

    sub-long/2addr v12, v7

    sub-long v16, v16, v12

    goto :goto_1ca

    :cond_1c0
    add-int/lit8 v14, v14, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto :goto_178

    :cond_1ca
    :goto_1ca
    move-wide/from16 v7, v16

    const-wide/32 v12, -0x80000000

    cmp-long v5, v7, v12

    if-ltz v5, :cond_1f7

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v7, v12

    if-gtz v5, :cond_1f7

    long-to-int v5, v7

    .line 391
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    if-nez v6, :cond_1e0

    goto :goto_1e5

    :cond_1e0
    add-int/lit8 v8, v6, -0x1

    .line 392
    aget v8, v7, v8

    add-int/2addr v5, v8

    :goto_1e5
    aput v5, v7, v6

    .line 393
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aget v5, v5, v6

    add-int/2addr v11, v5

    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xa3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x2

    const/16 v13, 0xff

    goto/16 :goto_15c

    .line 389
    :cond_1f7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v2, "EBML lacing sample size out of range."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :cond_1ff
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v2, "No valid varint length mask found"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_207
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    const/4 v6, 0x1

    sub-int/2addr v14, v6

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqw:I

    sub-int/2addr v2, v6

    sub-int/2addr v2, v10

    sub-int/2addr v2, v11

    aput v2, v5, v14

    .line 398
    :goto_212
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v5, 0x0

    aget-byte v2, v2, v5

    shl-int/2addr v2, v9

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    .line 399
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaql:J

    int-to-long v7, v2

    invoke-direct {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzkl;->zzea(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqq:J

    .line 400
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    and-int/2addr v2, v9

    if-ne v2, v9, :cond_23b

    const/4 v2, 0x1

    goto :goto_23c

    :cond_23b
    const/4 v2, 0x0

    .line 401
    :goto_23c
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzkq;->type:I

    if-eq v6, v5, :cond_252

    const/16 v6, 0xa3

    if-ne v1, v6, :cond_250

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaps:Lcom/google/android/gms/internal/ads/zzpk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    aget-byte v6, v6, v5

    const/16 v5, 0x80

    and-int/2addr v6, v5

    if-ne v6, v5, :cond_250

    goto :goto_252

    :cond_250
    const/4 v5, 0x0

    goto :goto_253

    :cond_252
    :goto_252
    const/4 v5, 0x1

    :goto_253
    if-eqz v2, :cond_258

    const/high16 v7, -0x80000000

    goto :goto_259

    :cond_258
    const/4 v7, 0x0

    :goto_259
    or-int v2, v5, v7

    .line 403
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    const/4 v2, 0x2

    .line 404
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    const/4 v2, 0x0

    .line 405
    iput v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqs:I

    goto :goto_285

    .line 397
    :cond_264
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_27d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v2, "Lacing only supported in SimpleBlocks."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_285
    :goto_285
    const/16 v2, 0xa3

    if-ne v1, v2, :cond_2b0

    .line 407
    :goto_289
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqs:I

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqt:I

    if-ge v1, v2, :cond_2ac

    .line 408
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkq;I)V

    .line 409
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqq:J

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqs:I

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzkq;->zzarn:I

    mul-int v5, v5, v6

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 410
    invoke-direct {v0, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkq;J)V

    .line 411
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqs:I

    goto :goto_289

    :cond_2ac
    const/4 v1, 0x0

    .line 413
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    return-void

    :cond_2b0
    const/4 v1, 0x0

    .line 414
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqu:[I

    aget v1, v2, v1

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzjy;Lcom/google/android/gms/internal/ads/zzkq;I)V

    return-void
.end method

.method final zza(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    const/16 v0, 0x86

    if-eq p1, v0, :cond_4c

    const/16 v0, 0x4282

    if-eq p1, v0, :cond_14

    const v0, 0x22b59c

    if-eq p1, v0, :cond_e

    goto :goto_4b

    .line 306
    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzkq;->zza(Lcom/google/android/gms/internal/ads/zzkq;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4b

    :cond_14
    const-string p1, "webm"

    .line 302
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4b

    const-string p1, "matroska"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_4b

    .line 303
    :cond_25
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocType "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    :goto_4b
    return-void

    .line 304
    :cond_4c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjx;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzjy;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzkp;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkp;->zza(Lcom/google/android/gms/internal/ads/zzjy;)Z

    move-result p1

    return p1
.end method

.method final zzap(I)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_252

    const/16 v0, 0xae

    const/4 v3, 0x0

    if-eq p1, v0, :cond_154

    const/16 v0, 0x4dbb

    const-wide/16 v4, -0x1

    const v6, 0x1c53bb6b

    if-eq p1, v0, :cond_13c

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_10b

    const/16 v0, 0x6d80

    if-eq p1, v0, :cond_f6

    const v0, 0x1549a966

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eq p1, v0, :cond_de

    const v0, 0x1654ae6b

    if-eq p1, v0, :cond_c7

    if-eq p1, v6, :cond_2f

    goto/16 :goto_14b

    .line 101
    :cond_2f
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqf:Z

    if-nez p1, :cond_14b

    .line 102
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    .line 103
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    cmp-long v0, v9, v4

    if-eqz v0, :cond_b6

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    cmp-long v0, v4, v7

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_b6

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->size()I

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_b6

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->size()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzpe;->size()I

    move-result v4

    if-eq v0, v4, :cond_5c

    goto :goto_b6

    .line 109
    :cond_5c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->size()I

    move-result v0

    .line 110
    new-array v4, v0, [I

    .line 111
    new-array v5, v0, [J

    .line 112
    new-array v6, v0, [J

    .line 113
    new-array v7, v0, [J

    const/4 v8, 0x0

    :goto_6b
    if-ge v8, v0, :cond_83

    .line 115
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzpe;->get(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    .line 116
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzpe;->get(I)J

    move-result-wide v11

    add-long/2addr v9, v11

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6b

    :cond_83
    :goto_83
    add-int/lit8 v8, v0, -0x1

    if-ge v1, v8, :cond_9a

    add-int/lit8 v8, v1, 0x1

    .line 119
    aget-wide v9, v5, v8

    aget-wide v11, v5, v1

    sub-long/2addr v9, v11

    long-to-int v10, v9

    aput v10, v4, v1

    .line 120
    aget-wide v9, v7, v8

    aget-wide v11, v7, v1

    sub-long/2addr v9, v11

    aput-wide v9, v6, v1

    move v1, v8

    goto :goto_83

    .line 122
    :cond_9a
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqa:J

    add-long/2addr v0, v9

    aget-wide v9, v5, v8

    sub-long/2addr v0, v9

    long-to-int v1, v0

    aput v1, v4, v8

    .line 123
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    aget-wide v9, v7, v8

    sub-long/2addr v0, v9

    aput-wide v0, v6, v8

    .line 124
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    .line 125
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    .line 126
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjt;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzjt;-><init>([I[J[J[J)V

    goto :goto_c1

    .line 106
    :cond_b6
    :goto_b6
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    .line 107
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    .line 108
    new-instance v0, Lcom/google/android/gms/internal/ads/zzkd;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(J)V

    .line 127
    :goto_c1
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    .line 128
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqf:Z

    return-void

    .line 176
    :cond_c7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-eqz p1, :cond_d6

    .line 178
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjx;->zzgr()V

    goto/16 :goto_14b

    .line 177
    :cond_d6
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v0, "No valid tracks were found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_de
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqc:J

    cmp-long p1, v0, v7

    if-nez p1, :cond_e9

    const-wide/32 v0, 0xf4240

    .line 94
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqc:J

    .line 95
    :cond_e9
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqd:J

    cmp-long p1, v0, v7

    if-eqz p1, :cond_14b

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzkl;->zzea(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    return-void

    .line 140
    :cond_f6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzaro:Z

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarp:[B

    if-nez p1, :cond_103

    goto :goto_14b

    .line 141
    :cond_103
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v0, "Combining encryption and compression is not supported"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_10b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzaro:Z

    if-eqz p1, :cond_14b

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarq:Lcom/google/android/gms/internal/ads/zzkf;

    if-eqz p1, :cond_134

    .line 139
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzjn;

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzjn$zza;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjn$zza;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzha;->UUID_NIL:Ljava/util/UUID;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkq;->zzarq:Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkf;->zzapa:[B

    const-string v6, "video/webm"

    invoke-direct {v3, v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzjn$zza;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzjn;-><init>([Lcom/google/android/gms/internal/ads/zzjn$zza;)V

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahf:Lcom/google/android/gms/internal/ads/zzjn;

    return-void

    .line 138
    :cond_134
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_13c
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqg:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_14c

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqh:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_14c

    if-ne p1, v6, :cond_14b

    .line 100
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqj:J

    :cond_14b
    :goto_14b
    return-void

    .line 98
    :cond_14c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 142
    :cond_154
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarm:Ljava/lang/String;

    const-string v0, "V_VP8"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_VP9"

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEG2"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEG4/ISO/SP"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEG4/ISO/ASP"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEG4/ISO/AP"

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEG4/ISO/AVC"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MPEGH/ISO/HEVC"

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_MS/VFW/FOURCC"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "V_THEORA"

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_OPUS"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_VORBIS"

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_AAC"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_MPEG/L2"

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_MPEG/L3"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_AC3"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_EAC3"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_TRUEHD"

    .line 160
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_DTS"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_DTS/EXPRESS"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_DTS/LOSSLESS"

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_FLAC"

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_MS/ACM"

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "A_PCM/INT/LIT"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "S_TEXT/UTF8"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "S_VOBSUB"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "S_HDMV/PGS"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_238

    const-string v0, "S_DVBSUB"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_239

    :cond_238
    const/4 v1, 0x1

    :cond_239
    if-eqz v1, :cond_24f

    .line 172
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->number:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzkq;->zza(Lcom/google/android/gms/internal/ads/zzjx;I)V

    .line 173
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapo:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzkq;->number:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    :cond_24f
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    return-void

    .line 129
    :cond_252
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_258

    return-void

    .line 131
    :cond_258
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzari:Z

    if-nez p1, :cond_261

    .line 132
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqx:I

    .line 133
    :cond_261
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapo:Landroid/util/SparseArray;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqv:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzkq;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqq:J

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkl;->zza(Lcom/google/android/gms/internal/ads/zzkq;J)V

    .line 134
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    return-void
.end method

.method final zzc(IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    const/16 v0, 0x5031

    const/16 v1, 0x37

    const-string v2, " not supported"

    if-eq p1, v0, :cond_1f4

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_1d5

    const/16 v0, 0x32

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_216

    const/4 v0, 0x7

    const/4 v1, 0x6

    packed-switch p1, :pswitch_data_284

    goto/16 :goto_1fa

    .line 274
    :pswitch_1e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasa:I

    goto/16 :goto_1fa

    .line 272
    :pswitch_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarz:I

    return-void

    .line 249
    :pswitch_2b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarv:Z

    long-to-int p3, p2

    if-eq p3, v7, :cond_49

    const/16 p2, 0x9

    if-eq p3, p2, :cond_46

    const/4 p1, 0x4

    if-eq p3, p1, :cond_41

    const/4 p1, 0x5

    if-eq p3, p1, :cond_41

    if-eq p3, v1, :cond_41

    if-eq p3, v0, :cond_41

    return-void

    .line 253
    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarw:I

    return-void

    .line 255
    :cond_46
    iput v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarw:I

    return-void

    .line 251
    :cond_49
    iput v7, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarw:I

    return-void

    :pswitch_4c
    long-to-int p1, p2

    if-eq p1, v7, :cond_66

    const/16 p2, 0x10

    if-eq p1, p2, :cond_61

    const/16 p2, 0x12

    if-eq p1, p2, :cond_5c

    if-eq p1, v1, :cond_66

    if-eq p1, v0, :cond_66

    return-void

    .line 263
    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarx:I

    return-void

    .line 261
    :cond_61
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarx:I

    return-void

    .line 259
    :cond_66
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarx:I

    return-void

    :pswitch_6b
    long-to-int p1, p2

    if-eq p1, v7, :cond_76

    if-eq p1, v6, :cond_71

    return-void

    .line 269
    :cond_71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzary:I

    return-void

    .line 267
    :cond_76
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzary:I

    return-void

    .line 187
    :sswitch_7b
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqc:J

    return-void

    .line 207
    :sswitch_7e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarn:I

    return-void

    .line 215
    :sswitch_84
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasl:I

    return-void

    .line 211
    :sswitch_8a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasn:J

    return-void

    .line 209
    :sswitch_8f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasm:J

    return-void

    .line 203
    :sswitch_94
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    cmp-long v0, p2, v3

    if-nez v0, :cond_9b

    const/4 v1, 0x1

    :cond_9b
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzasp:Z

    return-void

    .line 195
    :sswitch_9e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzart:I

    return-void

    .line 197
    :sswitch_a4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzaru:I

    return-void

    .line 193
    :sswitch_aa
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzars:I

    return-void

    :sswitch_b0
    long-to-int p1, p2

    if-eqz p1, :cond_cb

    if-eq p1, v7, :cond_c6

    if-eq p1, v5, :cond_c1

    const/16 p2, 0xf

    if-eq p1, p2, :cond_bc

    return-void

    .line 246
    :cond_bc
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahj:I

    return-void

    .line 244
    :cond_c1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahj:I

    return-void

    .line 242
    :cond_c6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahj:I

    return-void

    .line 240
    :cond_cb
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahj:I

    return-void

    .line 185
    :sswitch_d0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqh:J

    return-void

    :sswitch_d6
    cmp-long p1, p2, v3

    if-nez p1, :cond_dc

    goto/16 :goto_1fa

    .line 228
    :cond_dc
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "AESSettingsCipherMode "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_f8
    const-wide/16 v0, 0x5

    cmp-long p1, p2, v0

    if-nez p1, :cond_100

    goto/16 :goto_1fa

    .line 226
    :cond_100
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentEncAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_11c
    cmp-long p1, p2, v3

    if-nez p1, :cond_122

    goto/16 :goto_1fa

    .line 182
    :cond_122
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "EBMLReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_13c
    cmp-long p1, p2, v3

    if-ltz p1, :cond_148

    const-wide/16 v0, 0x2

    cmp-long p1, p2, v0

    if-gtz p1, :cond_148

    goto/16 :goto_1fa

    .line 184
    :cond_148
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "DocTypeReadVersion "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_164
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_16c

    goto/16 :goto_1fa

    .line 224
    :cond_16c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "ContentCompAlgo "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :sswitch_186
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzari:Z

    return-void

    .line 231
    :sswitch_189
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqo:Z

    if-nez p1, :cond_1fa

    .line 232
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpe;->add(J)V

    .line 233
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqo:Z

    return-void

    .line 234
    :sswitch_195
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zzea(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaql:J

    return-void

    .line 199
    :sswitch_19c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->number:I

    return-void

    .line 191
    :sswitch_1a2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->height:I

    return-void

    .line 229
    :sswitch_1a8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zzea(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzpe;->add(J)V

    return-void

    .line 189
    :sswitch_1b2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->width:I

    return-void

    .line 213
    :sswitch_1b8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzahm:I

    return-void

    .line 236
    :sswitch_1be
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzkl;->zzea(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqr:J

    return-void

    .line 201
    :sswitch_1c5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    cmp-long v0, p2, v3

    if-nez v0, :cond_1cc

    const/4 v1, 0x1

    :cond_1cc
    iput-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzaso:Z

    return-void

    .line 205
    :sswitch_1cf
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    long-to-int p3, p2

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzkq;->type:I

    return-void

    :cond_1d5
    cmp-long p1, p2, v3

    if-nez p1, :cond_1da

    goto :goto_1fa

    .line 222
    :cond_1da
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingScope "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f4
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_1fb

    :cond_1fa
    :goto_1fa
    return-void

    .line 220
    :cond_1fb
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentEncodingOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_216
    .sparse-switch
        0x83 -> :sswitch_1cf
        0x88 -> :sswitch_1c5
        0x9b -> :sswitch_1be
        0x9f -> :sswitch_1b8
        0xb0 -> :sswitch_1b2
        0xb3 -> :sswitch_1a8
        0xba -> :sswitch_1a2
        0xd7 -> :sswitch_19c
        0xe7 -> :sswitch_195
        0xf1 -> :sswitch_189
        0xfb -> :sswitch_186
        0x4254 -> :sswitch_164
        0x4285 -> :sswitch_13c
        0x42f7 -> :sswitch_11c
        0x47e1 -> :sswitch_f8
        0x47e8 -> :sswitch_d6
        0x53ac -> :sswitch_d0
        0x53b8 -> :sswitch_b0
        0x54b0 -> :sswitch_aa
        0x54b2 -> :sswitch_a4
        0x54ba -> :sswitch_9e
        0x55aa -> :sswitch_94
        0x56aa -> :sswitch_8f
        0x56bb -> :sswitch_8a
        0x6264 -> :sswitch_84
        0x23e383 -> :sswitch_7e
        0x2ad7b1 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_284
    .packed-switch 0x55b9
        :pswitch_6b
        :pswitch_4c
        :pswitch_2b
        :pswitch_25
        :pswitch_1e
    .end packed-switch
.end method

.method public final zzc(JJ)V
    .registers 5

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaql:J

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqp:I

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapn:Lcom/google/android/gms/internal/ads/zzkj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkj;->reset()V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzks;->reset()V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzkl;->zzgu()V

    return-void
.end method

.method final zzd(IJJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_93

    const/16 v0, 0xae

    if-eq p1, v0, :cond_8a

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_87

    const/16 v0, 0x4dbb

    const-wide/16 v1, -0x1

    if-eq p1, v0, :cond_81

    const/16 v0, 0x5035

    const/4 v3, 0x1

    if-eq p1, v0, :cond_7c

    const/16 v0, 0x55d0

    if-eq p1, v0, :cond_77

    const/16 v0, 0x6240

    if-eq p1, v0, :cond_76

    const v0, 0x18538067

    if-eq p1, v0, :cond_5f

    const p2, 0x1c53bb6b

    if-eq p1, p2, :cond_50

    const p2, 0x1f43b675

    if-eq p1, p2, :cond_30

    goto :goto_7b

    .line 78
    :cond_30
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqf:Z

    if-nez p1, :cond_7b

    .line 79
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzapp:Z

    if-eqz p1, :cond_41

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqj:J

    cmp-long p3, p1, v1

    if-eqz p3, :cond_41

    .line 80
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqi:Z

    return-void

    .line 81
    :cond_41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzarj:Lcom/google/android/gms/internal/ads/zzjx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzkd;

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaih:J

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzkd;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzjx;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    .line 82
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqf:Z

    return-void

    .line 73
    :cond_50
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqm:Lcom/google/android/gms/internal/ads/zzpe;

    .line 74
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpe;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqn:Lcom/google/android/gms/internal/ads/zzpe;

    return-void

    .line 65
    :cond_5f
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_72

    cmp-long p1, v3, p2

    if-nez p1, :cond_6a

    goto :goto_72

    .line 66
    :cond_6a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const-string p2, "Multiple Segment elements not supported"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_72
    :goto_72
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqb:J

    .line 68
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqa:J

    :cond_76
    return-void

    .line 90
    :cond_77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzarv:Z

    :cond_7b
    :goto_7b
    return-void

    .line 86
    :cond_7c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    iput-boolean v3, p1, Lcom/google/android/gms/internal/ads/zzkq;->zzaro:Z

    return-void

    :cond_81
    const/4 p1, -0x1

    .line 70
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqg:I

    .line 71
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqh:J

    return-void

    .line 76
    :cond_87
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqo:Z

    return-void

    .line 88
    :cond_8a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzkq;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzkq;-><init>(Lcom/google/android/gms/internal/ads/zzko;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzaqe:Lcom/google/android/gms/internal/ads/zzkq;

    return-void

    .line 83
    :cond_93
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkl;->zzari:Z

    return-void
.end method
