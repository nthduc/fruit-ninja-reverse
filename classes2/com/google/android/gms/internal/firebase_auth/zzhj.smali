.class final Lcom/google/android/gms/internal/firebase_auth/zzhj;
.super Lcom/google/android/gms/internal/firebase_auth/zzhh;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final zze:[B

.field private final zzf:Z

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I


# direct methods
.method private constructor <init>([BIIZ)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;-><init>(Lcom/google/android/gms/internal/firebase_auth/zzhg;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzl:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 6
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzj:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzf:Z

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase_auth/zzhg;)V
    .registers 6

    .line 206
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase_auth/zzhj;-><init>([BIIZ)V

    return-void
.end method

.method private final zzaa()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    if-eq v0, v1, :cond_f

    .line 199
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    aget-byte v0, v1, v0

    return v0

    .line 198
    :cond_f
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method private final zzf(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_d

    .line 200
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_d

    add-int/2addr v1, p1

    .line 201
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return-void

    :cond_d
    if-gez p1, :cond_14

    .line 204
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    .line 205
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method

.method private final zzv()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 109
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    if-eq v1, v0, :cond_6b

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 111
    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    .line 112
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6b

    add-int/lit8 v1, v3, 0x1

    .line 115
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_22

    xor-int/lit8 v0, v0, -0x80

    goto :goto_68

    :cond_22
    add-int/lit8 v3, v1, 0x1

    .line 117
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2f

    xor-int/lit16 v0, v0, 0x3f80

    :cond_2d
    move v1, v3

    goto :goto_68

    :cond_2f
    add-int/lit8 v1, v3, 0x1

    .line 119
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3d

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_68

    :cond_3d
    add-int/lit8 v3, v1, 0x1

    .line 121
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    .line 124
    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_68

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_2d

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6b

    .line 125
    :cond_68
    :goto_68
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return v0

    .line 127
    :cond_6b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zzs()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method private final zzw()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 129
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    if-eq v1, v0, :cond_b5

    .line 130
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/lit8 v3, v0, 0x1

    .line 131
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    .line 132
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_b5

    add-int/lit8 v1, v3, 0x1

    .line 135
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_26

    xor-int/lit8 v0, v0, -0x80

    :goto_22
    int-to-long v2, v0

    move-wide v3, v2

    goto/16 :goto_b2

    :cond_26
    add-int/lit8 v3, v1, 0x1

    .line 137
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_37

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v3, v9

    goto/16 :goto_b2

    :cond_37
    add-int/lit8 v1, v3, 0x1

    .line 139
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_45

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_22

    :cond_45
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 141
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_5c

    const-wide/32 v1, 0xfe03f80

    :goto_58
    xor-long/2addr v1, v3

    move-wide v3, v1

    :cond_5a
    move v1, v0

    goto :goto_b2

    :cond_5c
    add-int/lit8 v1, v0, 0x1

    .line 143
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_70

    const-wide v5, -0x7f01fc080L

    :goto_6e
    xor-long/2addr v3, v5

    goto :goto_b2

    :cond_70
    add-int/lit8 v0, v1, 0x1

    .line 145
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_83

    const-wide v1, 0x3f80fe03f80L

    goto :goto_58

    :cond_83
    add-int/lit8 v1, v0, 0x1

    .line 147
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_96

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_6e

    :cond_96
    add-int/lit8 v0, v1, 0x1

    .line 149
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_5a

    add-int/lit8 v1, v0, 0x1

    .line 152
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b5

    .line 153
    :goto_b2
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return-wide v3

    .line 155
    :cond_b5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzx()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 165
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2e

    .line 167
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/lit8 v2, v0, 0x4

    .line 168
    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 169
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 166
    :cond_2e
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method private final zzy()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 171
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_5a

    .line 173
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    add-int/lit8 v3, v0, 0x8

    .line 174
    iput v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 175
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x10

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x18

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x20

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x5

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x28

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v2, v0, 0x6

    aget-byte v2, v1, v2

    int-to-long v7, v2

    and-long/2addr v7, v5

    const/16 v2, 0x30

    shl-long/2addr v7, v2

    or-long/2addr v3, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    or-long/2addr v0, v3

    return-wide v0

    .line 172
    :cond_5a
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method private final zzz()V
    .registers 4

    .line 185
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    .line 186
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzj:I

    sub-int v1, v0, v1

    .line 187
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzl:I

    if-le v1, v2, :cond_1a

    sub-int/2addr v1, v2

    .line 188
    iput v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzh:I

    .line 189
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzh:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    return-void

    :cond_1a
    const/4 v0, 0x0

    .line 190
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzh:I

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zzt()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzk:I

    return v0

    .line 12
    :cond_a
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzk:I

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzk:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_17

    return v0

    .line 16
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzd()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method public final zza(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    .line 18
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzk:I

    if-ne v0, p1, :cond_5

    return-void

    .line 19
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zze()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method

.method public final zzb()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    .line 53
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzf(I)V

    return v2

    .line 55
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzf()Lcom/google/android/gms/internal/firebase_auth/zziq;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    .line 43
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zza()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zzb(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zza(I)V

    return v2

    .line 40
    :cond_31
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzf(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzf(I)V

    return v2

    .line 25
    :cond_3f
    iget p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_5e

    :goto_48
    if-ge v1, v0, :cond_59

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    aget-byte p1, p1, v3

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 30
    :cond_59
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    :cond_5e
    :goto_5e
    if-ge v1, v0, :cond_6a

    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzaa()B

    move-result p1

    if-gez p1, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_69
    return v2

    .line 36
    :cond_6a
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    return-void
.end method

.method public final zzc()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzx()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzc(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase_auth/zzin;
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhh;->zzu()I

    move-result v0

    add-int/2addr p1, v0

    .line 179
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzl:I

    if-gt p1, v0, :cond_11

    .line 182
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzl:I

    .line 183
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzz()V

    return v0

    .line 181
    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1

    .line 177
    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object p1

    throw p1
.end method

.method public final zzd()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzl:I

    .line 193
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzz()V

    return-void
.end method

.method public final zze()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzw()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzf()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzg()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzi()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzw()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzj()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    if-lez v0, :cond_1c

    .line 65
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_1c

    .line 66
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    sget-object v4, Lcom/google/android/gms/internal/firebase_auth/zzii;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 67
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return-object v1

    :cond_1c
    if-nez v0, :cond_21

    const-string v0, ""

    return-object v0

    :cond_21
    if-gez v0, :cond_28

    .line 72
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0

    .line 73
    :cond_28
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method public final zzk()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    if-lez v0, :cond_19

    .line 75
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzlh;->zzb([BII)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    const-string v0, ""

    return-object v0

    :cond_1e
    if-gtz v0, :cond_25

    .line 82
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0

    .line 83
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/firebase_auth/zzgv;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    if-lez v0, :cond_19

    .line 85
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zza([BII)Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v1

    .line 87
    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    return-object v1

    :cond_19
    if-nez v0, :cond_1e

    .line 90
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zza:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    return-object v0

    :cond_1e
    if-lez v0, :cond_33

    .line 92
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_33

    add-int/2addr v0, v2

    .line 94
    iput v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_39

    :cond_33
    if-gtz v0, :cond_43

    if-nez v0, :cond_3e

    .line 98
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzii;->zzb:[B

    .line 101
    :goto_39
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->zzb([B)Lcom/google/android/gms/internal/firebase_auth/zzgv;

    move-result-object v0

    return-object v0

    .line 99
    :cond_3e
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzb()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0

    .line 100
    :cond_43
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zza()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0
.end method

.method public final zzm()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzn()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    return v0
.end method

.method public final zzo()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzp()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzv()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zze(I)I

    move-result v0

    return v0
.end method

.method public final zzr()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzw()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzs()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzaa()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 163
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzin;->zzc()Lcom/google/android/gms/internal/firebase_auth/zzin;

    move-result-object v0

    throw v0

    return-void
.end method

.method public final zzt()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzg:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu()I
    .registers 3

    .line 196
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzhj;->zzj:I

    sub-int/2addr v0, v1

    return v0
.end method
