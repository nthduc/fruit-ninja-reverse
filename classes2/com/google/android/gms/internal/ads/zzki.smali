.class final Lcom/google/android/gms/internal/ads/zzki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkj;


# instance fields
.field private final zzapb:[B

.field private final zzapc:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/android/gms/internal/ads/zzkk;",
            ">;"
        }
    .end annotation
.end field

.field private final zzapd:Lcom/google/android/gms/internal/ads/zzks;

.field private zzape:Lcom/google/android/gms/internal/ads/zzkm;

.field private zzapf:I

.field private zzapg:I

.field private zzaph:J


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    .line 3
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzks;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzks;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzjy;I)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    const-wide/16 v2, 0x0

    :goto_8
    if-ge v1, p2, :cond_18

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-wide v2
.end method


# virtual methods
.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzks;->reset()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzkm;)V
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzjy;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 12
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzkk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkk;->zza(Lcom/google/android/gms/internal/ads/zzkk;)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3a

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzkk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzkk;->zzb(Lcom/google/android/gms/internal/ads/zzkk;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzkm;->zzap(I)V

    return v1

    .line 16
    :cond_3a
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    const/4 v3, 0x4

    if-nez v0, :cond_84

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzjy;ZZI)J

    move-result-wide v4

    const-wide/16 v6, -0x2

    cmp-long v0, v4, v6

    if-nez v0, :cond_78

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->zzgq()V

    .line 21
    :goto_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    invoke-interface {p1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzjy;->zza([BII)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzks;->zzat(I)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_74

    if-gt v0, v3, :cond_74

    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapb:[B

    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzks;->zza([BIZ)J

    move-result-wide v4

    long-to-int v5, v4

    .line 25
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzkm;->zzao(I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 26
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    int-to-long v4, v5

    goto :goto_78

    .line 28
    :cond_74
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    goto :goto_4e

    :cond_78
    :goto_78
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_7f

    return v2

    :cond_7f
    long-to-int v0, v4

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    .line 34
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    .line 35
    :cond_84
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    const/4 v4, 0x2

    if-ne v0, v1, :cond_95

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapd:Lcom/google/android/gms/internal/ads/zzks;

    const/16 v5, 0x8

    invoke-virtual {v0, p1, v2, v1, v5}, Lcom/google/android/gms/internal/ads/zzks;->zza(Lcom/google/android/gms/internal/ads/zzjy;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    .line 37
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    .line 38
    :cond_95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzkm;->zzan(I)I

    move-result v0

    if-eqz v0, :cond_1a1

    if-eq v0, v1, :cond_181

    const-wide/16 v5, 0x8

    if-eq v0, v4, :cond_153

    const/4 v4, 0x3

    if-eq v0, v4, :cond_117

    if-eq v0, v3, :cond_10a

    const/4 v4, 0x5

    if-ne v0, v4, :cond_f1

    .line 51
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    const-wide/16 v9, 0x4

    cmp-long v0, v7, v9

    if-eqz v0, :cond_d3

    cmp-long v0, v7, v5

    if-nez v0, :cond_ba

    goto :goto_d3

    .line 52
    :cond_ba
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid float size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_d3
    :goto_d3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    long-to-int v6, v5

    .line 54
    invoke-direct {p0, p1, v6}, Lcom/google/android/gms/internal/ads/zzki;->zza(Lcom/google/android/gms/internal/ads/zzjy;I)J

    move-result-wide v7

    if-ne v6, v3, :cond_e7

    long-to-int p1, v7

    .line 56
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_eb

    .line 57
    :cond_e7
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 59
    :goto_eb
    invoke-interface {v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzkm;->zza(ID)V

    .line 60
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    return v1

    .line 79
    :cond_f1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid element type "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_10a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    long-to-int v5, v4

    invoke-interface {v0, v3, v5, p1}, Lcom/google/android/gms/internal/ads/zzkm;->zza(IILcom/google/android/gms/internal/ads/zzjy;)V

    .line 74
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    return v1

    .line 62
    :cond_117
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_13a

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    long-to-int v4, v3

    if-nez v4, :cond_12a

    const-string p1, ""

    goto :goto_134

    .line 67
    :cond_12a
    new-array v3, v4, [B

    .line 68
    invoke-interface {p1, v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzjy;->readFully([BII)V

    .line 69
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>([B)V

    .line 70
    :goto_134
    invoke-interface {v0, v5, p1}, Lcom/google/android/gms/internal/ads/zzkm;->zza(ILjava/lang/String;)V

    .line 71
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    return v1

    .line 63
    :cond_13a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "String element size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_153
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_168

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    long-to-int v4, v3

    invoke-direct {p0, p1, v4}, Lcom/google/android/gms/internal/ads/zzki;->zza(Lcom/google/android/gms/internal/ads/zzjy;I)J

    move-result-wide v3

    invoke-interface {v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzkm;->zzc(IJ)V

    .line 49
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    return v1

    .line 47
    :cond_168
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhv;

    const/16 v0, 0x2a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid integer size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_181
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzjy;->getPosition()J

    move-result-wide v5

    .line 41
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    add-long/2addr v3, v5

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapc:Ljava/util/Stack;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzkk;

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    const/4 v8, 0x0

    invoke-direct {v0, v7, v3, v4, v8}, Lcom/google/android/gms/internal/ads/zzkk;-><init>(IJLcom/google/android/gms/internal/ads/zzkh;)V

    invoke-virtual {p1, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzape:Lcom/google/android/gms/internal/ads/zzkm;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapg:I

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzkm;->zzd(IJJ)V

    .line 44
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    return v1

    .line 76
    :cond_1a1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzki;->zzaph:J

    long-to-int v0, v3

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzjy;->zzai(I)V

    .line 77
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzki;->zzapf:I

    goto/16 :goto_c
.end method
