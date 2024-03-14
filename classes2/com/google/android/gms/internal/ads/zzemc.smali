.class final Lcom/google/android/gms/internal/ads/zzemc;
.super Lcom/google/android/gms/internal/ads/zzeip;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field static final zzimo:[I


# instance fields
.field private final zzimp:I

.field private final zzimq:Lcom/google/android/gms/internal/ads/zzeip;

.field private final zzimr:Lcom/google/android/gms/internal/ads/zzeip;

.field private final zzims:I

.field private final zzimt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    .line 142
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemc;->zzimo:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeip;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzemb;)V
    .registers 4

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 7

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 10
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    .line 12
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzemc;->zzb(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0

    .line 15
    :cond_20
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzemc;

    if-eqz v2, :cond_69

    .line 16
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzemc;

    .line 17
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    .line 18
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzemc;->zzb(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzemc;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object p1

    .line 20
    :cond_42
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v3

    if-le v1, v3, :cond_69

    .line 22
    new-instance p0, Lcom/google/android/gms/internal/ads/zzemc;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzemc;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object p1

    .line 24
    :cond_69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbej()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemc;->zzhm(I)I

    move-result v1

    if-lt v0, v1, :cond_83

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object v0

    .line 27
    :cond_83
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeme;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzemb;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzeme;->zza(Lcom/google/android/gms/internal/ads/zzeme;Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzemc;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 6

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 30
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zza([BIII)V

    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zza([BIII)V

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeip;->zzv([B)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzemc;)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    return-object p0
.end method

.method static zzhm(I)I
    .registers 3

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemc;->zzimo:[I

    array-length v1, v0

    if-lt p0, v1, :cond_9

    const p0, 0x7fffffff

    return p0

    .line 36
    :cond_9
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 85
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 87
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeip;

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 90
    :cond_15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    if-nez v1, :cond_1a

    return v0

    .line 92
    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->zzbel()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzbel()I

    move-result v3

    if-eqz v1, :cond_29

    if-eqz v3, :cond_29

    if-eq v1, v3, :cond_29

    return v2

    .line 98
    :cond_29
    new-instance v1, Lcom/google/android/gms/internal/ads/zzemd;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/zzemd;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzemb;)V

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeiw;

    .line 101
    new-instance v5, Lcom/google/android/gms/internal/ads/zzemd;

    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzemd;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzemb;)V

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiw;

    move-object v3, p1

    const/4 p1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :goto_44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v8

    sub-int/2addr v8, p1

    .line 105
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez p1, :cond_59

    .line 108
    invoke-virtual {v4, v3, v6, v10}, Lcom/google/android/gms/internal/ads/zzeiw;->zza(Lcom/google/android/gms/internal/ads/zzeip;II)Z

    move-result v11

    goto :goto_5d

    .line 109
    :cond_59
    invoke-virtual {v3, v4, p1, v10}, Lcom/google/android/gms/internal/ads/zzeiw;->zza(Lcom/google/android/gms/internal/ads/zzeip;II)Z

    move-result v11

    :goto_5d
    if-nez v11, :cond_60

    return v2

    :cond_60
    add-int/2addr v7, v10

    .line 113
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    if-lt v7, v11, :cond_6e

    if-ne v7, v11, :cond_68

    return v0

    .line 116
    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6e
    if-ne v10, v8, :cond_79

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiw;

    move-object v4, p1

    const/4 p1, 0x0

    goto :goto_7a

    :cond_79
    add-int/2addr p1, v10

    :goto_7a
    if-ne v10, v9, :cond_84

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeiw;

    const/4 v6, 0x0

    goto :goto_44

    :cond_84
    add-int/2addr v6, v10

    goto :goto_44
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->zzbee()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    return v0
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeip;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzeim;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Lcom/google/android/gms/internal/ads/zzeim;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zza(Lcom/google/android/gms/internal/ads/zzeim;)V

    return-void
.end method

.method protected final zzb([BIII)V
    .registers 7

    add-int v0, p2, p4

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    if-gt v0, v1, :cond_c

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    return-void

    :cond_15
    sub-int/2addr v1, p2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzeip;->zzb([BIII)V

    return-void
.end method

.method public final zzbee()Lcom/google/android/gms/internal/ads/zzeiu;
    .registers 2

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemb;-><init>(Lcom/google/android/gms/internal/ads/zzemc;)V

    return-object v0
.end method

.method public final zzbeg()Z
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v2
.end method

.method public final zzbeh()Lcom/google/android/gms/internal/ads/zzeja;
    .registers 5

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemg;-><init>(Lcom/google/android/gms/internal/ads/zzemc;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/internal/ads/zzejf;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzejf;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzejd;)V

    return-object v1
.end method

.method protected final zzbej()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimt:I

    return v0
.end method

.method protected final zzbek()Z
    .registers 3

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimt:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemc;->zzhm(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfu(I)B
    .registers 3

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzemc;->zzaa(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzfv(I)B

    move-result p1

    return p1
.end method

.method final zzfv(I)B
    .registers 4

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    if-ge p1, v0, :cond_b

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzfv(I)B

    move-result p1

    return p1

    .line 41
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeip;->zzfv(I)B

    move-result p1

    return p1
.end method

.method protected final zzg(III)I
    .registers 6

    add-int v0, p2, p3

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    if-gt v0, v1, :cond_d

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzg(III)I

    move-result p1

    return p1
.end method

.method protected final zzh(III)I
    .registers 6

    add-int v0, p2, p3

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    if-gt v0, v1, :cond_d

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzh(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzh(III)I

    move-result p1

    return p1

    :cond_17
    sub-int/2addr v1, p2

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzh(III)I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzh(III)I

    move-result p1

    return p1
.end method

.method public final zzz(II)Lcom/google/android/gms/internal/ads/zzeip;
    .registers 6

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzemc;->zzi(III)I

    move-result v0

    if-nez v0, :cond_b

    .line 48
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    return-object p1

    .line 49
    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimp:I

    if-ne v0, v1, :cond_10

    return-object p0

    .line 51
    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    if-gt p2, v0, :cond_1b

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeip;->zzz(II)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeip;->zzz(II)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    return-object p1

    .line 55
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimq:Lcom/google/android/gms/internal/ads/zzeip;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeip;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeip;->zzz(II)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzimr:Lcom/google/android/gms/internal/ads/zzeip;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzemc;->zzims:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeip;->zzz(II)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemc;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzeip;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object v0
.end method
