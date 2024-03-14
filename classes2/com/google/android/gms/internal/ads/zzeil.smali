.class final Lcom/google/android/gms/internal/ads/zzeil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# direct methods
.method static zza(I[BIILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_4a

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    if-eq v0, v1, :cond_42

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 p0, 0x5

    if-ne v0, p0, :cond_17

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 186
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbha()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    :cond_1c
    and-int/lit8 p0, p0, -0x8

    or-int/lit8 p0, p0, 0x4

    const/4 v0, 0x0

    :goto_21
    if-ge p2, p3, :cond_30

    .line 179
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p2

    .line 180
    iget v0, p4, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-eq v0, p0, :cond_30

    .line 182
    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeil;->zza(I[BIILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p2

    goto :goto_21

    :cond_30
    if-gt p2, p3, :cond_35

    if-ne v0, p0, :cond_35

    return p2

    .line 184
    :cond_35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbhe()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 174
    :cond_3a
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p0

    .line 175
    iget p1, p4, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    add-int/2addr p0, p1

    return p0

    :cond_42
    add-int/lit8 p2, p2, 0x8

    return p2

    .line 170
    :cond_45
    invoke-static {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzeil;->zzb([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p0

    return p0

    .line 166
    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbha()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    return-void
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzekk;Lcom/google/android/gms/internal/ads/zzeik;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[BII",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzeik;",
            ")I"
        }
    .end annotation

    .line 97
    check-cast p4, Lcom/google/android/gms/internal/ads/zzekc;

    .line 98
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p2

    .line 99
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzekc;->zzhc(I)V

    :goto_b
    if-ge p2, p3, :cond_1f

    .line 101
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result v0

    .line 102
    iget v1, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ne p0, v1, :cond_1f

    .line 103
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p2

    .line 104
    iget v0, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzekc;->zzhc(I)V

    goto :goto_b

    :cond_1f
    return p2
.end method

.method static zza(I[BIILcom/google/android/gms/internal/ads/zzena;Lcom/google/android/gms/internal/ads/zzeik;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_99

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_8b

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_56

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 p3, 0x5

    if-ne v0, p3, :cond_22

    .line 136
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zzh([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    .line 162
    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbha()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 150
    :cond_27
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzena;->zzbiw()Lcom/google/android/gms/internal/ads/zzena;

    move-result-object v6

    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v7, v0, 0x4

    const/4 v0, 0x0

    :goto_30
    if-ge p2, p3, :cond_49

    .line 154
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result v2

    .line 155
    iget p2, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-eq p2, v7, :cond_47

    move v0, p2

    move-object v1, p1

    move v3, p3

    move-object v4, v6

    move-object v5, p5

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeil;->zza(I[BIILcom/google/android/gms/internal/ads/zzena;Lcom/google/android/gms/internal/ads/zzeik;)I

    move-result v0

    move v8, v0

    move v0, p2

    move p2, v8

    goto :goto_30

    :cond_47
    move v0, p2

    move p2, v2

    :cond_49
    if-gt p2, p3, :cond_51

    if-ne v0, v7, :cond_51

    .line 160
    invoke-virtual {p4, p0, v6}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    return p2

    .line 159
    :cond_51
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbhe()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 140
    :cond_56
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p2

    .line 141
    iget p3, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ltz p3, :cond_78

    .line 144
    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_73

    if-nez p3, :cond_6a

    .line 147
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    goto :goto_71

    .line 148
    :cond_6a
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeip;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    :goto_71
    add-int/2addr p2, p3

    return p2

    .line 145
    :cond_73
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 143
    :cond_78
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgy()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 138
    :cond_7d
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zzi([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    .line 133
    :cond_8b
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzeil;->zzb([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 134
    iget-wide p2, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziel:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/ads/zzena;->zzd(ILjava/lang/Object;)V

    return p1

    .line 129
    :cond_99
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbha()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    return-void
.end method

.method static zza(I[BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    .line 7
    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    .line 9
    iput p0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 12
    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    .line 14
    iput p0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    .line 17
    aget-byte p2, p1, p2

    if-ltz p2, :cond_30

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    .line 19
    iput p0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return v0

    :cond_30
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    .line 22
    aget-byte v0, p1, v0

    if-ltz v0, :cond_41

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    .line 24
    iput p0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return p2

    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_46
    add-int/lit8 v0, p2, 0x1

    .line 27
    aget-byte p2, p1, p2

    if-ltz p2, :cond_4f

    .line 28
    iput p0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return v0

    :cond_4f
    move p2, v0

    goto :goto_46
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzemf;I[BIILcom/google/android/gms/internal/ads/zzekk;Lcom/google/android/gms/internal/ads/zzeik;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzemf<",
            "*>;I[BII",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzeik;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/ads/zzeil;->zza(Lcom/google/android/gms/internal/ads/zzemf;[BIILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p3

    .line 118
    iget-object v0, p6, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge p3, p4, :cond_1d

    .line 120
    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result v0

    .line 121
    iget v1, p6, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ne p1, v1, :cond_1d

    .line 122
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/ads/zzeil;->zza(Lcom/google/android/gms/internal/ads/zzemf;[BIILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p3

    .line 123
    iget-object v0, p6, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/zzekk;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return p3
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzemf;[BIIILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    check-cast p0, Lcom/google/android/gms/internal/ads/zzeln;

    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeln;->newInstance()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 93
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzeln;->zza(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 94
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzeln;->zzaj(Ljava/lang/Object;)V

    .line 95
    iput-object v7, p5, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    return p1
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzemf;[BIILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 79
    aget-byte p2, p1, p2

    if-gez p2, :cond_c

    .line 81
    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/ads/zzeil;->zza(I[BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result v0

    .line 82
    iget p2, p4, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    :cond_c
    move v3, v0

    if-ltz p2, :cond_25

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_25

    .line 85
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzemf;->newInstance()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 86
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzemf;->zza(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzeik;)V

    .line 87
    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/ads/zzemf;->zzaj(Ljava/lang/Object;)V

    .line 88
    iput-object p3, p4, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    return p2

    .line 84
    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    .line 1
    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    .line 3
    iput p1, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    return v0

    .line 5
    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zza(I[BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p0

    return p0
.end method

.method static zza([BILcom/google/android/gms/internal/ads/zzekk;Lcom/google/android/gms/internal/ads/zzeik;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/google/android/gms/internal/ads/zzekk<",
            "*>;",
            "Lcom/google/android/gms/internal/ads/zzeik;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    check-cast p2, Lcom/google/android/gms/internal/ads/zzekc;

    .line 108
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 109
    iget v0, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    .line 111
    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 112
    iget v1, p3, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzekc;->zzhc(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    .line 114
    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    return-void
.end method

.method static zzb([BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    .line 30
    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    .line 32
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziel:J

    return v0

    :cond_e
    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    add-int/lit8 p1, v0, 0x1

    .line 36
    aget-byte v0, p0, v0

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_1c
    if-gez v0, :cond_2c

    add-int/lit8 v0, p1, 0x1

    .line 40
    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_1c

    .line 43
    :cond_2c
    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziel:J

    return p1
.end method

.method static zzc([BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 51
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ltz v0, :cond_1a

    if-nez v0, :cond_f

    const-string p0, ""

    .line 55
    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    return p1

    .line 57
    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzekb;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 53
    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgy()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method static zzd([BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 59
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 60
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ltz v0, :cond_17

    if-nez v0, :cond_f

    const-string p0, ""

    .line 64
    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    return p1

    .line 66
    :cond_f
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeng;->zzo([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 62
    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgy()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method static zze([BILcom/google/android/gms/internal/ads/zzeik;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzekj;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeil;->zza([BILcom/google/android/gms/internal/ads/zzeik;)I

    move-result p1

    .line 69
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziek:I

    if-ltz v0, :cond_20

    .line 72
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    .line 75
    sget-object p0, Lcom/google/android/gms/internal/ads/zzeip;->zzier:Lcom/google/android/gms/internal/ads/zzeip;

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    return p1

    .line 77
    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzeip;->zzi([BII)Lcom/google/android/gms/internal/ads/zzeip;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/ads/zzeik;->zziem:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    .line 73
    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgx()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0

    .line 71
    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzekj;->zzbgy()Lcom/google/android/gms/internal/ads/zzekj;

    move-result-object p0

    throw p0
.end method

.method static zzh([BI)I
    .registers 4

    .line 46
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zzi([BI)J
    .registers 9

    .line 47
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method static zzj([BI)D
    .registers 2

    .line 48
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeil;->zzi([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method static zzk([BI)F
    .registers 2

    .line 49
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzeil;->zzh([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method
