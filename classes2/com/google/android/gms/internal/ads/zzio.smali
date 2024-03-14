.class public final Lcom/google/android/gms/internal/ads/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static zzajn:Z = false

.field private static zzajo:Z = false


# instance fields
.field private streamType:I

.field private zzafh:Lcom/google/android/gms/internal/ads/zzhu;

.field private zzahn:I

.field private final zzajp:Lcom/google/android/gms/internal/ads/zzif;

.field private final zzajq:Lcom/google/android/gms/internal/ads/zziz;

.field private final zzajr:Lcom/google/android/gms/internal/ads/zzje;

.field private final zzajs:[Lcom/google/android/gms/internal/ads/zzie;

.field private final zzajt:Lcom/google/android/gms/internal/ads/zziu;

.field private final zzaju:Landroid/os/ConditionVariable;

.field private final zzajv:[J

.field private final zzajw:Lcom/google/android/gms/internal/ads/zziq;

.field private final zzajx:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/android/gms/internal/ads/zzix;",
            ">;"
        }
    .end annotation
.end field

.field private zzajy:Landroid/media/AudioTrack;

.field private zzajz:I

.field private zzaka:I

.field private zzakb:I

.field private zzakc:Z

.field private zzakd:I

.field private zzake:J

.field private zzakf:Lcom/google/android/gms/internal/ads/zzhu;

.field private zzakg:J

.field private zzakh:J

.field private zzaki:Ljava/nio/ByteBuffer;

.field private zzakj:I

.field private zzakk:I

.field private zzakl:I

.field private zzakm:J

.field private zzakn:J

.field private zzako:Z

.field private zzakp:J

.field private zzakq:Ljava/lang/reflect/Method;

.field private zzakr:I

.field private zzaks:J

.field private zzakt:J

.field private zzaku:I

.field private zzakv:J

.field private zzakw:J

.field private zzakx:I

.field private zzaky:I

.field private zzakz:J

.field private zzala:J

.field private zzalb:J

.field private zzalc:[Lcom/google/android/gms/internal/ads/zzie;

.field private zzald:[Ljava/nio/ByteBuffer;

.field private zzale:Ljava/nio/ByteBuffer;

.field private zzalf:Ljava/nio/ByteBuffer;

.field private zzalg:[B

.field private zzalh:I

.field private zzali:I

.field private zzalj:Z

.field private zzalk:Z

.field private zzall:I

.field private zzalm:Z

.field private zzaln:Z

.field private zzalo:J

.field private zzdj:F


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzif;[Lcom/google/android/gms/internal/ads/zzie;Lcom/google/android/gms/internal/ads/zziu;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajp:Lcom/google/android/gms/internal/ads/zzif;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajt:Lcom/google/android/gms/internal/ads/zziu;

    .line 4
    new-instance p3, Landroid/os/ConditionVariable;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaju:Landroid/os/ConditionVariable;

    .line 5
    sget p3, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p3, v1, :cond_22

    .line 6
    :try_start_16
    const-class p3, Landroid/media/AudioTrack;

    const-string v1, "getLatency"

    .line 7
    invoke-virtual {p3, v1, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakq:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    .line 10
    :cond_22
    :goto_22
    sget p3, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_30

    .line 11
    new-instance p1, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzit;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    goto :goto_37

    .line 12
    :cond_30
    new-instance p3, Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zziq;-><init>(Lcom/google/android/gms/internal/ads/zzir;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    .line 13
    :goto_37
    new-instance p1, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zziz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajq:Lcom/google/android/gms/internal/ads/zziz;

    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzje;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    .line 15
    array-length p1, p2

    const/4 p3, 0x3

    add-int/2addr p1, p3

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzie;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>()V

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajq:Lcom/google/android/gms/internal/ads/zziz;

    aput-object v1, p1, v0

    .line 18
    array-length v0, p2

    const/4 v1, 0x2

    invoke-static {p2, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    array-length p2, p2

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    aput-object v0, p1, p2

    const/16 p1, 0xa

    .line 20
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajv:[J

    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzdj:F

    .line 22
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->streamType:I

    .line 24
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    .line 27
    new-array p1, v2, [Lcom/google/android/gms/internal/ads/zzie;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    .line 28
    new-array p1, v2, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    .line 29
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    return-void
.end method

.method private final isInitialized()Z
    .registers 2

    .line 523
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzio;)Landroid/os/ConditionVariable;
    .registers 1

    .line 541
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaju:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method private static zzaz(Ljava/lang/String;)I
    .registers 6

    .line 535
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_48

    goto :goto_34

    :sswitch_c
    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x3

    goto :goto_35

    :sswitch_16
    const-string v0, "audio/eac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :sswitch_20
    const-string v0, "audio/ac3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x0

    goto :goto_35

    :sswitch_2a
    const-string v0, "audio/vnd.dts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    const/4 p0, 0x2

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p0, -0x1

    :goto_35
    if-eqz p0, :cond_45

    if-eq p0, v4, :cond_43

    if-eq p0, v3, :cond_41

    if-eq p0, v2, :cond_3e

    return v1

    :cond_3e
    const/16 p0, 0x8

    return p0

    :cond_41
    const/4 p0, 0x7

    return p0

    :cond_43
    const/4 p0, 0x6

    return p0

    :cond_45
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_48
    .sparse-switch
        -0x41455b98 -> :sswitch_2a
        0xb269698 -> :sswitch_20
        0x59ae0c65 -> :sswitch_16
        0x59c2dc42 -> :sswitch_c
    .end sparse-switch
.end method

.method private final zzc(Ljava/nio/ByteBuffer;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 324
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eqz v0, :cond_18

    if-ne v0, p1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 325
    :goto_14
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    goto :goto_3b

    .line 326
    :cond_18
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    .line 327
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    if-ge v0, v2, :cond_3b

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 329
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalg:[B

    if-eqz v4, :cond_29

    array-length v4, v4

    if-ge v4, v0, :cond_2d

    .line 330
    :cond_29
    new-array v4, v0, [B

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalg:[B

    .line 331
    :cond_2d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 332
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalg:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalh:I

    .line 335
    :cond_3b
    :goto_3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 337
    sget v4, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    if-ge v4, v2, :cond_79

    .line 338
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakv:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    .line 339
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zziq;->zzfy()J

    move-result-wide v4

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    int-to-long v6, v2

    mul-long v4, v4, v6

    sub-long/2addr p2, v4

    long-to-int p3, p2

    .line 340
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_76

    .line 342
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 343
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalg:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalh:I

    invoke-virtual {p3, v2, v4, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_f2

    .line 345
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalh:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalh:I

    .line 346
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_f2

    :cond_76
    :goto_76
    const/4 p2, 0x0

    goto/16 :goto_f2

    .line 347
    :cond_79
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    if-eqz v2, :cond_ec

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v4

    if-eqz v2, :cond_88

    const/4 v2, 0x1

    goto :goto_89

    :cond_88
    const/4 v2, 0x0

    .line 348
    :goto_89
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 349
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 350
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_a9

    const/16 v4, 0x10

    .line 351
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    .line 352
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 353
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 354
    :cond_a9
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    if-nez v4, :cond_c5

    .line 355
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 356
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    const-wide/16 v6, 0x3e8

    mul-long p2, p2, v6

    invoke-virtual {v4, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 357
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    .line 359
    :cond_c5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    if-lez p2, :cond_dc

    .line 361
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p3, p2, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_d9

    .line 363
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    move p2, p3

    goto :goto_f2

    :cond_d9
    if-ge p3, p2, :cond_dc

    goto :goto_76

    .line 368
    :cond_dc
    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p1

    if-gez p1, :cond_e5

    .line 371
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    goto :goto_ea

    .line 373
    :cond_e5
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    :goto_ea
    move p2, p1

    goto :goto_f2

    .line 376
    :cond_ec
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 377
    invoke-virtual {p2, p1, v0, v1}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 379
    :cond_f2
    :goto_f2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalo:J

    if-ltz p2, :cond_117

    .line 382
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-nez p1, :cond_104

    .line 383
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakv:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakv:J

    :cond_104
    if-ne p2, v0, :cond_116

    .line 385
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz p1, :cond_112

    .line 386
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakw:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakx:I

    int-to-long v2, p3

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakw:J

    :cond_112
    const/4 p1, 0x0

    .line 387
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    return v1

    :cond_116
    return v3

    .line 381
    :cond_117
    new-instance p1, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zziw;-><init>(I)V

    throw p1

    return-void
.end method

.method private final zzdv(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v0, v0

    move v1, v0

    :goto_4
    if-ltz v1, :cond_3e

    if-lez v1, :cond_f

    .line 306
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_16

    .line 307
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_14

    goto :goto_16

    :cond_14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzie;->zzaiy:Ljava/nio/ByteBuffer;

    :goto_16
    if-ne v1, v0, :cond_1c

    .line 309
    invoke-direct {p0, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzio;->zzc(Ljava/nio/ByteBuffer;J)Z

    goto :goto_34

    .line 310
    :cond_1c
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    aget-object v3, v3, v1

    .line 311
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzie;->zzn(Ljava/nio/ByteBuffer;)V

    .line 312
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzie;->zzfm()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 313
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 314
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_34

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 317
    :cond_34
    :goto_34
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3e
    return-void
.end method

.method private final zzdw(J)J
    .registers 5

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 524
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzdx(J)J
    .registers 5

    .line 525
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    int-to-long v0, v0

    mul-long p1, p1, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private final zzfn()V
    .registers 8

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_1e

    aget-object v5, v1, v4

    .line 180
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzie;->isActive()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 181
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 182
    :cond_18
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzie;->flush()V

    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 184
    :cond_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 185
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/zzie;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzie;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    .line 186
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    :goto_30
    if-ge v3, v1, :cond_44

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    aget-object v0, v0, v3

    .line 189
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzie;->flush()V

    .line 190
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzie;->zzfm()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_44
    return-void
.end method

.method private final zzfq()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 398
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_14

    .line 399
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v0, v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    :goto_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 401
    :goto_15
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_38

    .line 402
    aget-object v4, v5, v4

    if-eqz v0, :cond_28

    .line 404
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->zzfl()V

    .line 405
    :cond_28
    invoke-direct {p0, v7, v8}, Lcom/google/android/gms/internal/ads/zzio;->zzdv(J)V

    .line 406
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->zzfe()Z

    move-result v0

    if-nez v0, :cond_32

    return v3

    .line 409
    :cond_32
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    goto :goto_12

    .line 411
    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    .line 412
    invoke-direct {p0, v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzio;->zzc(Ljava/nio/ByteBuffer;J)Z

    .line 413
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_44

    return v3

    .line 415
    :cond_44
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    return v2
.end method

.method private final zzfu()V
    .registers 3

    .line 465
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 466
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 467
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzdj:F

    .line 468
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    .line 470
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzdj:F

    .line 471
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :cond_1b
    return-void
.end method

.method private final zzfv()J
    .registers 5

    .line 526
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v0, :cond_7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakw:J

    return-wide v0

    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakv:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzfw()V
    .registers 4

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakm:J

    const/4 v2, 0x0

    .line 528
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakl:I

    .line 529
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakk:I

    .line 530
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakn:J

    .line 531
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    .line 532
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakp:J

    return-void
.end method

.method private final zzfx()Z
    .registers 3

    .line 534
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final pause()V
    .registers 2

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalk:Z

    .line 474
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 475
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfw()V

    .line 476
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziq;->pause()V

    :cond_11
    return-void
.end method

.method public final play()V
    .registers 5

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalk:Z

    .line 194
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 195
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzala:J

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_17
    return-void
.end method

.method public final release()V
    .registers 6

    .line 516
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->reset()V

    .line 517
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    .line 518
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->reset()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 520
    :cond_12
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 521
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalk:Z

    return-void
.end method

.method public final reset()V
    .registers 8

    .line 478
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_8a

    const-wide/16 v0, 0x0

    .line 479
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaks:J

    .line 480
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakt:J

    .line 481
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakv:J

    .line 482
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakw:J

    const/4 v2, 0x0

    .line 483
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakx:I

    .line 484
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 485
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 486
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    goto :goto_33

    .line 487
    :cond_1d
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 488
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzix;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzix;->zza(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 489
    :cond_33
    :goto_33
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 490
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakg:J

    .line 491
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakh:J

    .line 492
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    .line 493
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 494
    :goto_41
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalc:[Lcom/google/android/gms/internal/ads/zzie;

    array-length v6, v5

    if-ge v3, v6, :cond_56

    .line 495
    aget-object v5, v5, v3

    .line 496
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzie;->flush()V

    .line 497
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzio;->zzald:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzie;->zzfm()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 499
    :cond_56
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalj:Z

    const/4 v3, -0x1

    .line 500
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzali:I

    .line 501
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaki:Ljava/nio/ByteBuffer;

    .line 502
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    .line 503
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    .line 504
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    .line 505
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfw()V

    .line 506
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_74

    .line 508
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 509
    :cond_74
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 510
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 511
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zziq;->zza(Landroid/media/AudioTrack;Z)V

    .line 512
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaju:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 513
    new-instance v1, Lcom/google/android/gms/internal/ads/zzir;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzir;-><init>(Lcom/google/android/gms/internal/ads/zzio;Landroid/media/AudioTrack;)V

    .line 514
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzir;->start()V

    :cond_8a
    return-void
.end method

.method public final setStreamType(I)V
    .registers 3

    .line 442
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->streamType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 444
    :cond_5
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->streamType:I

    .line 445
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    if-eqz p1, :cond_c

    return-void

    .line 447
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->reset()V

    const/4 p1, 0x0

    .line 448
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    return-void
.end method

.method public final setVolume(F)V
    .registers 3

    .line 461
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzdj:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 462
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzdj:F

    .line 463
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfu()V

    :cond_b
    return-void
.end method

.method public final zza(Ljava/lang/String;IIII[I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzis;
        }
    .end annotation

    const-string p5, "audio/raw"

    .line 109
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    xor-int/2addr p5, v0

    if-eqz p5, :cond_f

    .line 110
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzio;->zzaz(Ljava/lang/String;)I

    move-result p1

    goto :goto_10

    :cond_f
    move p1, p4

    :goto_10
    const/4 v1, 0x0

    if-nez p5, :cond_4f

    .line 113
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzpq;->zzg(II)I

    move-result p4

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakr:I

    .line 114
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajq:Lcom/google/android/gms/internal/ads/zziz;

    invoke-virtual {p4, p6}, Lcom/google/android/gms/internal/ads/zziz;->zzb([I)V

    .line 115
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajs:[Lcom/google/android/gms/internal/ads/zzie;

    array-length p6, p4

    move v3, p1

    move v2, p2

    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_25
    if-ge p1, p6, :cond_46

    aget-object v4, p4, p1

    .line 116
    :try_start_29
    invoke-interface {v4, p3, v2, v3}, Lcom/google/android/gms/internal/ads/zzie;->zzb(III)Z

    move-result v5
    :try_end_2d
    .catch Lcom/google/android/gms/internal/ads/zzih; {:try_start_29 .. :try_end_2d} :catch_3f

    or-int/2addr p2, v5

    .line 120
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->isActive()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 121
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->zzfj()I

    move-result v2

    .line 122
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzie;->zzfk()I

    move-result v3

    :cond_3c
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    :catch_3f
    move-exception p1

    .line 119
    new-instance p2, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzis;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_46
    if-eqz p2, :cond_4b

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfn()V

    :cond_4b
    move p4, p2

    move p2, v2

    move p1, v3

    goto :goto_50

    :cond_4f
    const/4 p4, 0x0

    :goto_50
    const/16 p6, 0xfc

    const/16 v2, 0xc

    packed-switch p2, :pswitch_data_154

    .line 143
    new-instance p1, Lcom/google/android/gms/internal/ads/zzis;

    const/16 p3, 0x26

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Unsupported channel count: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzis;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :pswitch_70
    sget v3, Lcom/google/android/gms/internal/ads/zzha;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_86

    :pswitch_73
    const/16 v3, 0x4fc

    goto :goto_86

    :pswitch_76
    const/16 v3, 0xfc

    goto :goto_86

    :pswitch_79
    const/16 v3, 0xdc

    goto :goto_86

    :pswitch_7c
    const/16 v3, 0xcc

    goto :goto_86

    :pswitch_7f
    const/16 v3, 0x1c

    goto :goto_86

    :pswitch_82
    const/16 v3, 0xc

    goto :goto_86

    :pswitch_85
    const/4 v3, 0x4

    .line 144
    :goto_86
    sget v4, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v5, 0x17

    const/4 v6, 0x5

    if-gt v4, v5, :cond_ad

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpq;->DEVICE:Ljava/lang/String;

    const-string v5, "foster"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    sget-object v4, Lcom/google/android/gms/internal/ads/zzpq;->MANUFACTURER:Ljava/lang/String;

    const-string v5, "NVIDIA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ad

    const/4 v4, 0x3

    if-eq p2, v4, :cond_ae

    if-eq p2, v6, :cond_ae

    const/4 p6, 0x7

    if-eq p2, p6, :cond_aa

    goto :goto_ad

    .line 146
    :cond_aa
    sget p6, Lcom/google/android/gms/internal/ads/zzha;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_ae

    :cond_ad
    :goto_ad
    move p6, v3

    .line 149
    :cond_ae
    :goto_ae
    sget v3, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v4, 0x19

    if-gt v3, v4, :cond_c4

    sget-object v3, Lcom/google/android/gms/internal/ads/zzpq;->DEVICE:Ljava/lang/String;

    const-string v4, "fugu"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c4

    if-eqz p5, :cond_c4

    if-ne p2, v0, :cond_c4

    const/16 p6, 0xc

    :cond_c4
    if-nez p4, :cond_d9

    .line 151
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result p4

    if-eqz p4, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaka:I

    if-ne p4, p1, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    if-ne p4, p3, :cond_d9

    iget p4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    if-ne p4, p6, :cond_d9

    return-void

    .line 153
    :cond_d9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->reset()V

    .line 154
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaka:I

    .line 155
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    .line 156
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    .line 157
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    const/4 p4, 0x2

    if-eqz p5, :cond_e8

    goto :goto_e9

    :cond_e8
    const/4 p1, 0x2

    .line 158
    :goto_e9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    .line 159
    invoke-static {p4, p2}, Lcom/google/android/gms/internal/ads/zzpq;->zzg(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    if-eqz p5, :cond_102

    .line 161
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    if-eq p1, v6, :cond_ff

    const/4 p2, 0x6

    if-ne p1, p2, :cond_fb

    goto :goto_ff

    :cond_fb
    const p1, 0xc000

    goto :goto_138

    :cond_ff
    :goto_ff
    const/16 p1, 0x5000

    goto :goto_138

    .line 164
    :cond_102
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    .line 165
    invoke-static {p3, p6, p1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 p2, -0x2

    if-eq p1, p2, :cond_10c

    goto :goto_10d

    :cond_10c
    const/4 v0, 0x0

    .line 166
    :goto_10d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    shl-int/lit8 p2, p1, 0x2

    const-wide/32 p3, 0x3d090

    .line 168
    invoke-direct {p0, p3, p4}, Lcom/google/android/gms/internal/ads/zzio;->zzdx(J)J

    move-result-wide p3

    long-to-int p4, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    mul-int p3, p3, p4

    int-to-long v0, p1

    const-wide/32 v2, 0xb71b0

    .line 170
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/ads/zzio;->zzdx(J)J

    move-result-wide v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    int-to-long v4, p1

    mul-long v2, v2, v4

    .line 171
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    if-ge p2, p3, :cond_134

    move p1, p3

    goto :goto_138

    :cond_134
    if-le p2, p1, :cond_137

    goto :goto_138

    :cond_137
    move p1, p2

    .line 174
    :goto_138
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    if-eqz p5, :cond_142

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_14c

    .line 175
    :cond_142
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaku:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzio;->zzdw(J)J

    move-result-wide p1

    :goto_14c
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzake:J

    .line 176
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzio;->zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;

    return-void

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_85
        :pswitch_82
        :pswitch_7f
        :pswitch_7c
        :pswitch_79
        :pswitch_76
        :pswitch_73
        :pswitch_70
    .end packed-switch
.end method

.method public final zzay(Ljava/lang/String;)Z
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajp:Lcom/google/android/gms/internal/ads/zzif;

    if-eqz v0, :cond_10

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzio;->zzaz(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzif;->zzw(I)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhu;)Lcom/google/android/gms/internal/ads/zzhu;
    .registers 5

    .line 426
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v0, :cond_b

    .line 427
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhu;->zzahz:Lcom/google/android/gms/internal/ads/zzhu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 428
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object p1

    .line 429
    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    .line 430
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzje;->zza(F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzhu;->zzaib:F

    .line 431
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzje;->zzb(F)F

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhu;-><init>(FF)V

    .line 432
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    if-eqz p1, :cond_25

    goto :goto_3c

    .line 433
    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3a

    .line 434
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzix;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzix;->zza(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object p1

    goto :goto_3c

    .line 435
    :cond_3a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 436
    :goto_3c
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 438
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    goto :goto_4d

    .line 439
    :cond_4b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 440
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object p1
.end method

.method public final zzb(Ljava/nio/ByteBuffer;J)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziv;,
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 201
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_11

    if-ne v0, v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    :goto_12
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_ea

    .line 204
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaju:Landroid/os/ConditionVariable;

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 205
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    if-eqz v4, :cond_66

    .line 206
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 207
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 208
    invoke-virtual {v10, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/4 v11, 0x3

    .line 209
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    const/16 v11, 0x10

    .line 210
    invoke-virtual {v10, v11}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v10

    .line 211
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v11

    .line 212
    new-instance v10, Landroid/media/AudioFormat$Builder;

    invoke-direct {v10}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 213
    invoke-virtual {v10, v8}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 214
    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    .line 215
    invoke-virtual {v8, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v4

    .line 216
    invoke-virtual {v4}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v12

    .line 217
    new-instance v4, Landroid/media/AudioTrack;

    const/4 v14, 0x1

    move-object v10, v4

    invoke-direct/range {v10 .. v15}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 218
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    goto :goto_9f

    .line 219
    :cond_66
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    if-nez v4, :cond_7e

    .line 220
    new-instance v4, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzio;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    const/4 v14, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    goto :goto_9f

    .line 221
    :cond_7e
    new-instance v8, Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzio;->streamType:I

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    const/16 v22, 0x1

    move-object/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v23, v4

    invoke-direct/range {v16 .. v23}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 223
    :goto_9f
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    if-ne v4, v6, :cond_d0

    .line 234
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v4

    .line 235
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    if-eq v8, v4, :cond_b8

    .line 236
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 237
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajt:Lcom/google/android/gms/internal/ads/zziu;

    invoke-interface {v8, v4}, Lcom/google/android/gms/internal/ads/zziu;->zzx(I)V

    .line 238
    :cond_b8
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfx()Z

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/zziq;->zza(Landroid/media/AudioTrack;Z)V

    .line 239
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfu()V

    .line 240
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaln:Z

    .line 241
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzalk:Z

    if-eqz v4, :cond_ea

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->play()V

    goto :goto_ea

    .line 225
    :cond_d0
    :try_start_d0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d5} :catch_dc
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_d8

    .line 226
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    goto :goto_de

    :catchall_d8
    move-exception v0

    .line 231
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 232
    throw v0

    .line 229
    :catch_dc
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 233
    :goto_de
    new-instance v0, Lcom/google/android/gms/internal/ads/zziv;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzio;->zzahn:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajz:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    invoke-direct {v0, v4, v2, v3, v5}, Lcom/google/android/gms/internal/ads/zziv;-><init>(IIII)V

    throw v0

    .line 243
    :cond_ea
    :goto_ea
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfx()Z

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    if-eqz v4, :cond_111

    .line 244
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v10, :cond_fe

    .line 245
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaln:Z

    return v5

    .line 247
    :cond_fe
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-ne v4, v6, :cond_111

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    .line 248
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zziq;->zzfy()J

    move-result-wide v11

    cmp-long v4, v11, v8

    if-eqz v4, :cond_111

    return v5

    .line 250
    :cond_111
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaln:Z

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfr()Z

    move-result v11

    iput-boolean v11, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaln:Z

    if-eqz v4, :cond_13e

    .line 252
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaln:Z

    if-nez v4, :cond_13e

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    if-eq v4, v6, :cond_13e

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzio;->zzalo:J

    sub-long v19, v11, v13

    .line 254
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajt:Lcom/google/android/gms/internal/ads/zziu;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakd:I

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzio;->zzake:J

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzha;->zzdm(J)J

    move-result-wide v17

    move/from16 v16, v4

    invoke-interface/range {v15 .. v20}, Lcom/google/android/gms/internal/ads/zziu;->zzc(IJJ)V

    .line 255
    :cond_13e
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    if-nez v4, :cond_240

    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_149

    return v6

    .line 258
    :cond_149
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v4, :cond_18a

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakx:I

    if-nez v4, :cond_18a

    .line 259
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakb:I

    const/4 v11, 0x7

    if-eq v4, v11, :cond_184

    const/16 v11, 0x8

    if-ne v4, v11, :cond_15b

    goto :goto_184

    :cond_15b
    const/4 v11, 0x5

    if-ne v4, v11, :cond_163

    .line 263
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzic;->zzfi()I

    move-result v4

    goto :goto_188

    :cond_163
    const/4 v11, 0x6

    if-ne v4, v11, :cond_16b

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzic;->zzm(Ljava/nio/ByteBuffer;)I

    move-result v4

    goto :goto_188

    .line 266
    :cond_16b
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_184
    :goto_184
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zziy;->zzo(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 267
    :goto_188
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakx:I

    .line 268
    :cond_18a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    if-eqz v4, :cond_1b9

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfq()Z

    move-result v4

    if-nez v4, :cond_195

    return v5

    .line 271
    :cond_195
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    new-instance v15, Lcom/google/android/gms/internal/ads/zzix;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    .line 272
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 273
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfv()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/google/android/gms/internal/ads/zzio;->zzdw(J)J

    move-result-wide v16

    const/4 v10, 0x0

    move-object v11, v15

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Lcom/google/android/gms/internal/ads/zzhu;JJLcom/google/android/gms/internal/ads/zzir;)V

    .line 274
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakf:Lcom/google/android/gms/internal/ads/zzhu;

    .line 276
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfn()V

    .line 277
    :cond_1b9
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    if-nez v4, :cond_1c6

    .line 278
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    .line 279
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    goto :goto_227

    .line 280
    :cond_1c6
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    .line 282
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v8, :cond_1cf

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakt:J

    goto :goto_1d5

    :cond_1cf
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaks:J

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakr:I

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 283
    :goto_1d5
    invoke-direct {v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzio;->zzdw(J)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 284
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    if-ne v8, v6, :cond_214

    sub-long v8, v4, v2

    .line 285
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x30d40

    cmp-long v12, v8, v10

    if-lez v12, :cond_214

    const/16 v8, 0x50

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Discontinuity detected [expected "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", got "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    .line 287
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    goto :goto_215

    :cond_214
    const/4 v8, 0x2

    .line 288
    :goto_215
    iget v9, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    if-ne v9, v8, :cond_227

    .line 289
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    sub-long v4, v2, v4

    add-long/2addr v8, v4

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    .line 290
    iput v6, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    .line 291
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzajt:Lcom/google/android/gms/internal/ads/zziu;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zziu;->zzen()V

    .line 292
    :cond_227
    :goto_227
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v4, :cond_234

    .line 293
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakt:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakx:I

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakt:J

    goto :goto_23e

    .line 294
    :cond_234
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaks:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzio;->zzaks:J

    .line 295
    :goto_23e
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    .line 296
    :cond_240
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-eqz v0, :cond_24a

    .line 297
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzio;->zzc(Ljava/nio/ByteBuffer;J)Z

    goto :goto_24d

    .line 298
    :cond_24a
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzio;->zzdv(J)V

    .line 299
    :goto_24d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_258

    .line 300
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzio;->zzale:Ljava/nio/ByteBuffer;

    return v6

    :cond_258
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfe()Z
    .registers 2

    .line 417
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalj:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfr()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public final zzfo()V
    .registers 3

    .line 198
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x2

    .line 199
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    :cond_8
    return-void
.end method

.method public final zzfp()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zziw;
        }
    .end annotation

    .line 390
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalj:Z

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_20

    .line 392
    :cond_b
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfq()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfv()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zziq;->zzdy(J)V

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzakj:I

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalj:Z

    :cond_20
    :goto_20
    return-void
.end method

.method public final zzfr()Z
    .registers 8

    .line 418
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    .line 419
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfv()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zziq;->zzfy()J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v2, v4

    if-gtz v6, :cond_32

    .line 421
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfx()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 422
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    .line 423
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v2

    if-nez v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_33

    :cond_32
    return v0

    :cond_33
    return v1
.end method

.method public final zzfs()Lcom/google/android/gms/internal/ads/zzhu;
    .registers 2

    .line 441
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    return-object v0
.end method

.method public final zzft()V
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    .line 458
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 459
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->reset()V

    :cond_c
    return-void
.end method

.method public final zzj(Z)J
    .registers 21

    move-object/from16 v0, p0

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->isInitialized()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzaky:I

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    if-nez v1, :cond_16

    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1

    .line 38
    :cond_16
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    if-ne v1, v4, :cond_166

    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziq;->zzfz()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-eqz v1, :cond_166

    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    div-long/2addr v11, v5

    .line 43
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakn:J

    sub-long v13, v11, v13

    const-wide/16 v15, 0x7530

    cmp-long v1, v13, v15

    if-ltz v1, :cond_6a

    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajv:[J

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakk:I

    sub-long v13, v7, v11

    aput-wide v13, v1, v4

    add-int/2addr v4, v2

    const/16 v1, 0xa

    .line 45
    rem-int/2addr v4, v1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakk:I

    .line 46
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakl:I

    if-ge v4, v1, :cond_51

    add-int/2addr v4, v2

    .line 47
    iput v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakl:I

    .line 48
    :cond_51
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakn:J

    .line 49
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakm:J

    const/4 v1, 0x0

    .line 50
    :goto_56
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakl:I

    if-ge v1, v2, :cond_6a

    .line 51
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakm:J

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajv:[J

    aget-wide v15, v4, v1

    int-to-long v9, v2

    div-long/2addr v15, v9

    add-long/2addr v13, v15

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakm:J

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v9, 0x0

    goto :goto_56

    .line 53
    :cond_6a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzio;->zzfx()Z

    move-result v1

    if-nez v1, :cond_166

    .line 54
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakp:J

    sub-long v1, v11, v1

    const-wide/32 v9, 0x7a120

    cmp-long v4, v1, v9

    if-ltz v4, :cond_166

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziq;->zzga()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    .line 56
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    const-string v2, "AudioTrack"

    if-eqz v1, :cond_113

    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziq;->zzgb()J

    move-result-wide v13

    div-long/2addr v13, v5

    .line 58
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziq;->zzgc()J

    move-result-wide v5

    .line 59
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzio;->zzala:J

    cmp-long v1, v13, v9

    if-gez v1, :cond_9f

    .line 60
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    goto :goto_113

    :cond_9f
    sub-long v9, v13, v11

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-string v1, ", "

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_d9

    const/16 v4, 0x88

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    goto :goto_113

    .line 65
    :cond_d9
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzio;->zzdw(J)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v17, 0x4c4b40

    cmp-long v4, v9, v17

    if-lez v4, :cond_113

    const/16 v4, 0x8a

    .line 66
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    .line 69
    :cond_113
    :goto_113
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakq:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_164

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakc:Z

    if-nez v3, :cond_164

    const/4 v3, 0x0

    .line 70
    :try_start_11c
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajy:Landroid/media/AudioTrack;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzake:J

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    .line 71
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    .line 72
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    const-wide/32 v6, 0x4c4b40

    cmp-long v1, v4, v6

    if-lez v1, :cond_164

    .line 73
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    const/16 v1, 0x3d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x0

    .line 74
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_161} :catch_162

    goto :goto_164

    .line 77
    :catch_162
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakq:Ljava/lang/reflect/Method;

    .line 78
    :cond_164
    :goto_164
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakp:J

    .line 79
    :cond_166
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 80
    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzako:Z

    if-eqz v5, :cond_189

    .line 81
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zziq;->zzgb()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzio;->zzdx(J)J

    move-result-wide v1

    .line 83
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zziq;->zzgc()J

    move-result-wide v3

    add-long/2addr v3, v1

    .line 84
    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzio;->zzdw(J)J

    move-result-wide v1

    goto :goto_19c

    .line 86
    :cond_189
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakl:I

    if-nez v3, :cond_194

    .line 87
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajw:Lcom/google/android/gms/internal/ads/zziq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zziq;->zzfz()J

    move-result-wide v1

    goto :goto_197

    .line 88
    :cond_194
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakm:J

    add-long/2addr v1, v3

    :goto_197
    if-nez p1, :cond_19c

    .line 90
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzalb:J

    sub-long/2addr v1, v3

    .line 91
    :cond_19c
    :goto_19c
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    .line 92
    :goto_19e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1d4

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    .line 93
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzix;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzix;->zzb(Lcom/google/android/gms/internal/ads/zzix;)J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-ltz v7, :cond_1d4

    .line 94
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzix;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzix;->zza(Lcom/google/android/gms/internal/ads/zzix;)Lcom/google/android/gms/internal/ads/zzhu;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    .line 96
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzix;->zzb(Lcom/google/android/gms/internal/ads/zzix;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakh:J

    .line 97
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzix;->zzc(Lcom/google/android/gms/internal/ads/zzix;)J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakz:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakg:J

    goto :goto_19e

    .line 99
    :cond_1d4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1e5

    .line 100
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakg:J

    add-long/2addr v1, v5

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakh:J

    sub-long/2addr v1, v5

    goto :goto_225

    .line 101
    :cond_1e5
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajx:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_210

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzje;->zzgg()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v9, v5, v7

    if-ltz v9, :cond_210

    .line 103
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakg:J

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakh:J

    sub-long v9, v1, v7

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    .line 104
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzje;->zzgf()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzajr:Lcom/google/android/gms/internal/ads/zzje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzje;->zzgg()J

    move-result-wide v13

    .line 105
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v1

    goto :goto_224

    .line 107
    :cond_210
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakg:J

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzio;->zzafh:Lcom/google/android/gms/internal/ads/zzhu;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhu;->zzaia:F

    float-to-double v7, v7

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzio;->zzakh:J

    sub-long/2addr v1, v9

    long-to-double v1, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v1

    double-to-long v1, v7

    :goto_224
    add-long/2addr v1, v5

    :goto_225
    add-long/2addr v3, v1

    return-wide v3
.end method

.method public final zzz(I)V
    .registers 5

    .line 450
    sget v0, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 451
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    if-eq v0, p1, :cond_1c

    .line 452
    :cond_15
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzalm:Z

    .line 453
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzall:I

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzio;->reset()V

    :cond_1c
    return-void
.end method
