.class final Lcom/google/android/gms/internal/measurement/zzin;
.super Lcom/google/android/gms/internal/measurement/zzik;
.source "com.google.android.gms:play-services-measurement-base@@17.4.1"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzik;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I[BII)I
    .registers 11

    :goto_0
    if-ge p3, p4, :cond_9

    .line 3
    aget-byte p1, p2, p3

    if-ltz p1, :cond_9

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    if-lt p3, p4, :cond_d

    return p1

    :cond_d
    :goto_d
    if-lt p3, p4, :cond_10

    return p1

    :cond_10
    add-int/lit8 v0, p3, 0x1

    .line 8
    aget-byte p3, p2, p3

    if-gez p3, :cond_76

    const/16 v1, -0x20

    const/4 v2, -0x1

    const/16 v3, -0x41

    if-ge p3, v1, :cond_2b

    if-lt v0, p4, :cond_20

    return p3

    :cond_20
    const/16 v1, -0x3e

    if-lt p3, v1, :cond_2a

    add-int/lit8 p3, v0, 0x1

    .line 12
    aget-byte v0, p2, v0

    if-le v0, v3, :cond_d

    :cond_2a
    return v2

    :cond_2b
    const/16 v4, -0x10

    if-ge p3, v4, :cond_51

    add-int/lit8 v4, p4, -0x1

    if-lt v0, v4, :cond_38

    .line 16
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzij;->zzc([BII)I

    move-result p1

    return p1

    :cond_38
    add-int/lit8 v4, v0, 0x1

    .line 17
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_50

    const/16 v5, -0x60

    if-ne p3, v1, :cond_44

    if-lt v0, v5, :cond_50

    :cond_44
    const/16 v1, -0x13

    if-ne p3, v1, :cond_4a

    if-ge v0, v5, :cond_50

    :cond_4a
    add-int/lit8 p3, v4, 0x1

    aget-byte v0, p2, v4

    if-le v0, v3, :cond_d

    :cond_50
    return v2

    :cond_51
    add-int/lit8 v1, p4, -0x2

    if-lt v0, v1, :cond_5a

    .line 20
    invoke-static {p2, v0, p4}, Lcom/google/android/gms/internal/measurement/zzij;->zzc([BII)I

    move-result p1

    return p1

    :cond_5a
    add-int/lit8 v1, v0, 0x1

    .line 21
    aget-byte v0, p2, v0

    if-gt v0, v3, :cond_75

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr p3, v0

    shr-int/lit8 p3, p3, 0x1e

    if-nez p3, :cond_75

    add-int/lit8 p3, v1, 0x1

    aget-byte v0, p2, v1

    if-gt v0, v3, :cond_75

    add-int/lit8 v0, p3, 0x1

    aget-byte p3, p2, p3

    if-le p3, v3, :cond_76

    :cond_75
    return v2

    :cond_76
    move p3, v0

    goto :goto_d
.end method

.method final zza(Ljava/lang/CharSequence;[BII)I
    .registers 12

    .line 61
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p4, p3

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p3

    if-ge v3, p4, :cond_1a

    .line 65
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 66
    aput-byte v2, p2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p3, v0

    return p3

    :cond_1e
    add-int/2addr p3, v1

    :goto_1f
    if-ge v1, v0, :cond_ff

    .line 72
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p3, p4, :cond_31

    add-int/lit8 v4, p3, 0x1

    int-to-byte v3, v3

    .line 74
    aput-byte v3, p2, p3

    :goto_2e
    move p3, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p4, -0x2

    if-gt p3, v4, :cond_4b

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 76
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 77
    aput-byte v3, p2, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xdfff

    const v5, 0xd800

    if-lt v3, v5, :cond_55

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v6, p4, -0x3

    if-gt p3, v6, :cond_75

    add-int/lit8 v4, p3, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 79
    aput-byte v5, p2, p3

    add-int/lit8 p3, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 80
    aput-byte v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 81
    aput-byte v3, p2, p3

    goto :goto_2e

    :cond_75
    add-int/lit8 v6, p4, -0x4

    if-gt p3, v6, :cond_c2

    add-int/lit8 v4, v1, 0x1

    .line 83
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 85
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 86
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 87
    aput-byte v5, p2, v3

    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 88
    aput-byte v5, p2, p3

    add-int/lit8 p3, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 89
    aput-byte v1, p2, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 84
    :cond_ba
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzim;

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>(II)V

    throw p1

    :cond_c2
    if-gt v5, v3, :cond_de

    if-gt v3, v4, :cond_de

    add-int/lit8 p2, v1, 0x1

    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-eq p2, p4, :cond_d8

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_de

    .line 93
    :cond_d8
    new-instance p1, Lcom/google/android/gms/internal/measurement/zzim;

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/measurement/zzim;-><init>(II)V

    throw p1

    .line 94
    :cond_de
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p2, 0x25

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed writing "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " at index "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    return p3
.end method

.method final zzb([BII)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzft;
        }
    .end annotation

    or-int v0, p2, p3

    .line 24
    array-length v1, p1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_ab

    add-int v0, p2, p3

    .line 29
    new-array p3, p3, [C

    const/4 v3, 0x0

    :goto_f
    if-ge p2, v0, :cond_22

    .line 32
    aget-byte v4, p1, p2

    .line 33
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B)Z

    move-result v5

    if-eqz v5, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v5, v3, 0x1

    .line 35
    invoke-static {v4, p3, v3}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B[CI)V

    move v3, v5

    goto :goto_f

    :cond_22
    move v8, v3

    :goto_23
    if-ge p2, v0, :cond_a5

    add-int/lit8 v3, p2, 0x1

    .line 38
    aget-byte p2, p1, p2

    .line 39
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B)Z

    move-result v4

    if-eqz v4, :cond_4a

    add-int/lit8 v4, v8, 0x1

    .line 40
    invoke-static {p2, p3, v8}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B[CI)V

    :goto_34
    if-ge v3, v0, :cond_47

    .line 42
    aget-byte p2, p1, v3

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B)Z

    move-result v5

    if-eqz v5, :cond_47

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v4, 0x1

    .line 45
    invoke-static {p2, p3, v4}, Lcom/google/android/gms/internal/measurement/zzil;->zza(B[CI)V

    move v4, v5

    goto :goto_34

    :cond_47
    move p2, v3

    move v8, v4

    goto :goto_23

    .line 47
    :cond_4a
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzil;->zzb(B)Z

    move-result v4

    if-eqz v4, :cond_63

    if-ge v3, v0, :cond_5e

    add-int/lit8 v4, v3, 0x1

    .line 50
    aget-byte v3, p1, v3

    add-int/lit8 v5, v8, 0x1

    invoke-static {p2, v3, p3, v8}, Lcom/google/android/gms/internal/measurement/zzil;->zza(BB[CI)V

    move p2, v4

    move v8, v5

    goto :goto_23

    .line 49
    :cond_5e
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object p1

    throw p1

    .line 51
    :cond_63
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/zzil;->zzc(B)Z

    move-result v4

    if-eqz v4, :cond_82

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7d

    add-int/lit8 v4, v3, 0x1

    .line 54
    aget-byte v3, p1, v3

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    add-int/lit8 v6, v8, 0x1

    invoke-static {p2, v3, v4, p3, v8}, Lcom/google/android/gms/internal/measurement/zzil;->zza(BBB[CI)V

    move p2, v5

    move v8, v6

    goto :goto_23

    .line 53
    :cond_7d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object p1

    throw p1

    :cond_82
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_a0

    add-int/lit8 v4, v3, 0x1

    .line 57
    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    add-int/lit8 v10, v8, 0x1

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/measurement/zzil;->zza(BBBB[CI)V

    add-int/2addr v10, v2

    move p2, v9

    move v8, v10

    goto :goto_23

    .line 56
    :cond_a0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzft;->zzh()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object p1

    throw p1

    .line 60
    :cond_a5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v1, v8}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 25
    :cond_ab
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    array-length p1, p1

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v3, p2

    const-string p1, "buffer length=%d, index=%d, size=%d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method
