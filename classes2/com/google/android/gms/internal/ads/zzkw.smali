.class final Lcom/google/android/gms/internal/ads/zzkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static final zzavt:I

.field private static final zzawt:I

.field private static final zzawu:I

.field private static final zzawv:I

.field private static final zzaww:I

.field private static final zzawx:I

.field private static final zzawy:I

.field private static final zzawz:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "vide"

    .line 671
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawt:I

    const-string v0, "soun"

    .line 672
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawu:I

    const-string v0, "text"

    .line 673
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawv:I

    const-string v0, "sbtl"

    .line 674
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzaww:I

    const-string v0, "subt"

    .line 675
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawx:I

    const-string v0, "clcp"

    .line 676
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawy:I

    const-string v0, "cenc"

    .line 677
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzawz:I

    const-string v0, "meta"

    .line 678
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpq;->zzbl(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzkw;->zzavt:I

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzpk;IILcom/google/android/gms/internal/ads/zzkx;I)I
    .registers 20

    move-object v0, p0

    .line 612
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v1

    :goto_5
    sub-int v2, v1, p1

    const/4 v3, 0x0

    move/from16 v4, p2

    if-ge v2, v4, :cond_cb

    .line 614
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 615
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-lez v2, :cond_18

    const/4 v6, 0x1

    goto :goto_19

    :cond_18
    const/4 v6, 0x0

    :goto_19
    const-string v7, "childAtomSize should be positive"

    .line 616
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 617
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v6

    .line 618
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzaun:I

    if-ne v6, v7, :cond_c6

    add-int/lit8 v6, v1, 0x8

    const/4 v7, 0x0

    move-object v9, v7

    move-object v10, v9

    const/4 v8, 0x0

    :goto_2c
    sub-int v11, v6, v1

    if-ge v11, v2, :cond_99

    .line 625
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v11

    .line 627
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v12

    .line 628
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzaut:I

    if-ne v12, v13, :cond_48

    .line 629
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_97

    .line 630
    :cond_48
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzauo:I

    if-ne v12, v13, :cond_5c

    const/4 v8, 0x4

    .line 631
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 632
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v8

    sget v12, Lcom/google/android/gms/internal/ads/zzkw;->zzawz:I

    if-ne v8, v12, :cond_5a

    const/4 v8, 0x1

    goto :goto_97

    :cond_5a
    const/4 v8, 0x0

    goto :goto_97

    .line 633
    :cond_5c
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzaup:I

    if-ne v12, v13, :cond_97

    add-int/lit8 v10, v6, 0x8

    :goto_62
    sub-int v12, v10, v6

    if-ge v12, v11, :cond_95

    .line 637
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 638
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v12

    .line 639
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v13

    .line 640
    sget v14, Lcom/google/android/gms/internal/ads/zzkr;->zzauq:I

    if-ne v13, v14, :cond_93

    const/4 v10, 0x6

    .line 641
    invoke-virtual {p0, v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v10

    if-ne v10, v5, :cond_81

    const/4 v10, 0x1

    goto :goto_82

    :cond_81
    const/4 v10, 0x0

    .line 643
    :goto_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v12

    const/16 v13, 0x10

    .line 644
    new-array v14, v13, [B

    .line 645
    invoke-virtual {p0, v14, v3, v13}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 646
    new-instance v13, Lcom/google/android/gms/internal/ads/zzlq;

    invoke-direct {v13, v10, v12, v14}, Lcom/google/android/gms/internal/ads/zzlq;-><init>(ZI[B)V

    goto :goto_96

    :cond_93
    add-int/2addr v10, v12

    goto :goto_62

    :cond_95
    move-object v13, v7

    :goto_96
    move-object v10, v13

    :cond_97
    :goto_97
    add-int/2addr v6, v11

    goto :goto_2c

    :cond_99
    if-eqz v8, :cond_b1

    if-eqz v9, :cond_9f

    const/4 v6, 0x1

    goto :goto_a0

    :cond_9f
    const/4 v6, 0x0

    :goto_a0
    const-string v7, "frma atom is mandatory"

    .line 654
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v10, :cond_a8

    const/4 v3, 0x1

    :cond_a8
    const-string v5, "schi->tenc atom is mandatory"

    .line 655
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 656
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    :cond_b1
    if-eqz v7, :cond_c6

    move-object/from16 v5, p3

    .line 660
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzkx;->zzaxa:[Lcom/google/android/gms/internal/ads/zzlq;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzlq;

    aput-object v1, v0, p4

    .line 661
    iget-object v0, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_c6
    move-object/from16 v5, p3

    add-int/2addr v1, v2

    goto/16 :goto_5

    :cond_cb
    return v3
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzkt;JLcom/google/android/gms/internal/ads/zzjn;Z)Lcom/google/android/gms/internal/ads/zzln;
    .registers 54
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p4

    .line 1
    sget v1, Lcom/google/android/gms/internal/ads/zzkr;->zzatw:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v1

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzauk:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v14, 0x10

    .line 3
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v2

    .line 5
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawu:I

    const/4 v4, 0x4

    const/4 v11, -0x1

    if-ne v2, v3, :cond_23

    const/4 v10, 0x1

    goto :goto_43

    .line 7
    :cond_23
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawt:I

    if-ne v2, v3, :cond_29

    const/4 v10, 0x2

    goto :goto_43

    .line 9
    :cond_29
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawv:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzaww:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawx:I

    if-eq v2, v3, :cond_42

    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzawy:I

    if-ne v2, v3, :cond_3a

    goto :goto_42

    .line 11
    :cond_3a
    sget v3, Lcom/google/android/gms/internal/ads/zzkw;->zzavt:I

    if-ne v2, v3, :cond_40

    const/4 v10, 0x4

    goto :goto_43

    :cond_40
    const/4 v10, -0x1

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v10, 0x3

    :goto_43
    const/4 v8, 0x0

    if-ne v10, v11, :cond_47

    return-object v8

    .line 17
    :cond_47
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaug:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v7, 0x8

    .line 18
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 20
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v3

    if-nez v3, :cond_61

    const/16 v5, 0x8

    goto :goto_63

    :cond_61
    const/16 v5, 0x10

    .line 21
    :goto_63
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v5

    .line 23
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v6

    if-nez v3, :cond_75

    const/4 v12, 0x4

    goto :goto_77

    :cond_75
    const/16 v12, 0x8

    :goto_77
    const/4 v9, 0x0

    :goto_78
    if-ge v9, v12, :cond_88

    .line 28
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int v20, v6, v9

    aget-byte v8, v8, v20

    if-eq v8, v11, :cond_84

    const/4 v6, 0x0

    goto :goto_89

    :cond_84
    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    goto :goto_78

    :cond_88
    const/4 v6, 0x1

    :goto_89
    const-wide/16 v20, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v6, :cond_97

    .line 33
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    :goto_95
    move-wide v11, v8

    goto :goto_a9

    :cond_97
    if-nez v3, :cond_9e

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v22

    goto :goto_a2

    :cond_9e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v22

    :goto_a2
    cmp-long v3, v22, v20

    if-nez v3, :cond_a7

    goto :goto_95

    :cond_a7
    move-wide/from16 v11, v22

    .line 38
    :goto_a9
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 40
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v6

    .line 41
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v2

    const/high16 v14, -0x10000

    if-nez v3, :cond_ce

    const/high16 v13, 0x10000

    if-ne v6, v13, :cond_ce

    if-ne v4, v14, :cond_ce

    if-nez v2, :cond_ce

    const/16 v2, 0x5a

    goto :goto_e7

    :cond_ce
    if-nez v3, :cond_db

    if-ne v6, v14, :cond_db

    const/high16 v13, 0x10000

    if-ne v4, v13, :cond_db

    if-nez v2, :cond_db

    const/16 v2, 0x10e

    goto :goto_e7

    :cond_db
    if-ne v3, v14, :cond_e6

    if-nez v6, :cond_e6

    if-nez v4, :cond_e6

    if-ne v2, v14, :cond_e6

    const/16 v2, 0xb4

    goto :goto_e7

    :cond_e6
    const/4 v2, 0x0

    .line 51
    :goto_e7
    new-instance v14, Lcom/google/android/gms/internal/ads/zzlc;

    invoke-direct {v14, v5, v11, v12, v2}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(IJI)V

    cmp-long v2, p2, v8

    if-nez v2, :cond_f9

    .line 54
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzlc;->zza(Lcom/google/android/gms/internal/ads/zzlc;)J

    move-result-wide v2

    move-wide/from16 v26, v2

    move-object/from16 v2, p1

    goto :goto_fd

    :cond_f9
    move-object/from16 v2, p1

    move-wide/from16 v26, p2

    .line 55
    :goto_fd
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 56
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v3

    if-nez v3, :cond_10f

    const/16 v3, 0x8

    goto :goto_111

    :cond_10f
    const/16 v3, 0x10

    .line 59
    :goto_111
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v32

    cmp-long v2, v26, v8

    if-nez v2, :cond_11f

    move-wide/from16 v26, v8

    goto :goto_12a

    :cond_11f
    const-wide/32 v28, 0xf4240

    move-wide/from16 v30, v32

    .line 64
    invoke-static/range {v26 .. v31}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v2

    move-wide/from16 v26, v2

    .line 65
    :goto_12a
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatx:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v2

    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzaty:I

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v2

    .line 67
    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzauj:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 68
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 69
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 70
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v3

    if-nez v3, :cond_14e

    const/16 v4, 0x8

    goto :goto_150

    :cond_14e
    const/16 v4, 0x10

    .line 71
    :goto_150
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v4

    if-nez v3, :cond_15b

    const/4 v3, 0x4

    goto :goto_15d

    :cond_15b
    const/16 v3, 0x8

    .line 73
    :goto_15d
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 74
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v1

    shr-int/lit8 v3, v1, 0xa

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    shr-int/lit8 v6, v1, 0x5

    and-int/lit8 v6, v6, 0x1f

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v13

    .line 78
    sget v1, Lcom/google/android/gms/internal/ads/zzkr;->zzaul:I

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v1

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzlc;->zzb(Lcom/google/android/gms/internal/ads/zzlc;)I

    move-result v22

    .line 79
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzlc;->zzc(Lcom/google/android/gms/internal/ads/zzlc;)I

    move-result v28

    iget-object v1, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const/16 v1, 0xc

    .line 81
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 82
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v9

    .line 83
    new-instance v8, Lcom/google/android/gms/internal/ads/zzkx;

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzkx;-><init>(I)V

    const/4 v6, 0x0

    :goto_1b6
    if-ge v6, v9, :cond_7b9

    .line 85
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v5

    .line 86
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    if-lez v4, :cond_1c4

    const/4 v1, 0x1

    goto :goto_1c5

    :cond_1c4
    const/4 v1, 0x0

    :goto_1c5
    const-string v3, "childAtomSize should be positive"

    .line 87
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 88
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v1

    .line 89
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzast:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzasu:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaur:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavd:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzasv:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzasw:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzasx:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzawc:I

    if-eq v1, v2, :cond_59b

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzawd:I

    if-ne v1, v2, :cond_1f4

    goto/16 :goto_59b

    .line 180
    :cond_1f4
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzata:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaus:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatf:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzath:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatj:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatm:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatk:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatl:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavq:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavr:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatd:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzate:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatb:I

    if-eq v1, v2, :cond_31a

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzawg:I

    if-ne v1, v2, :cond_22e

    goto/16 :goto_31a

    .line 278
    :cond_22e
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavb:I

    if-eq v1, v2, :cond_26c

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavm:I

    if-eq v1, v2, :cond_26c

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavn:I

    if-eq v1, v2, :cond_26c

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavo:I

    if-eq v1, v2, :cond_26c

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavp:I

    if-ne v1, v2, :cond_243

    goto :goto_26c

    .line 302
    :cond_243
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzawf:I

    if-ne v1, v2, :cond_256

    .line 303
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-camera-motion"

    const/4 v3, -0x1

    const/4 v7, 0x0

    invoke-static {v1, v2, v7, v3, v15}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_257

    :cond_256
    const/4 v7, 0x0

    :goto_257
    move/from16 v30, v4

    move/from16 v29, v5

    move/from16 v36, v6

    move-object v0, v8

    move/from16 v24, v9

    move/from16 v19, v10

    move-object/from16 v35, v11

    move-object/from16 v25, v12

    move-object/from16 v47, v13

    move-object/from16 v23, v14

    goto/16 :goto_378

    :cond_26c
    :goto_26c
    const/4 v3, -0x1

    const/4 v7, 0x0

    add-int/lit8 v2, v5, 0x8

    const/16 v19, 0x8

    add-int/lit8 v2, v2, 0x8

    .line 280
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    const-wide v29, 0x7fffffffffffffffL

    .line 283
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavb:I

    if-ne v1, v2, :cond_289

    const-string v1, "application/ttml+xml"

    move-object/from16 v17, v1

    move-object/from16 v18, v7

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_2c7

    .line 285
    :cond_289
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavm:I

    if-ne v1, v2, :cond_2a3

    add-int/lit8 v1, v4, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 288
    new-array v2, v1, [B

    const/4 v7, 0x0

    .line 289
    invoke-virtual {v12, v2, v7, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 290
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    const/4 v2, 0x1

    goto :goto_2c7

    :cond_2a3
    const/4 v7, 0x0

    .line 291
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavn:I

    if-ne v1, v2, :cond_2b0

    const-string v1, "application/x-mp4-vtt"

    move-object/from16 v17, v1

    :goto_2ac
    const/4 v2, 0x1

    :goto_2ad
    const/16 v18, 0x0

    goto :goto_2c7

    .line 293
    :cond_2b0
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavo:I

    if-ne v1, v2, :cond_2bb

    const-string v1, "application/ttml+xml"

    move-object/from16 v17, v1

    move-wide/from16 v29, v20

    goto :goto_2ac

    .line 296
    :cond_2bb
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzavp:I

    if-ne v1, v2, :cond_314

    const/4 v2, 0x1

    .line 298
    iput v2, v8, Lcom/google/android/gms/internal/ads/zzkx;->zzaxb:I

    const-string v1, "application/x-mp4-cea-608"

    move-object/from16 v17, v1

    goto :goto_2ad

    .line 300
    :goto_2c7
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v31, 0x0

    const/16 v34, -0x1

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, 0x1

    move-object/from16 v2, v17

    const/16 v17, -0x1

    move-object/from16 v3, v31

    move-object/from16 v31, v14

    move v14, v4

    move/from16 v4, v34

    move/from16 v38, v5

    move/from16 v5, v35

    move/from16 v39, v6

    move-object v6, v11

    const/16 v19, 0x0

    const/16 v24, 0x0

    move/from16 v7, v36

    move-object/from16 v40, v8

    move-object/from16 v8, p4

    move/from16 v24, v9

    move/from16 v19, v10

    move-wide/from16 v9, v29

    move-object v0, v11

    move-object/from16 p1, v13

    const/4 v13, -0x1

    move-object/from16 v11, v18

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/gms/internal/ads/zzjn;JLjava/util/List;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    move-object/from16 v11, v40

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    move-object/from16 v47, p1

    move-object/from16 v35, v0

    move-object v0, v11

    move-object/from16 v25, v12

    move/from16 v30, v14

    move-object/from16 v23, v31

    move/from16 v29, v38

    goto/16 :goto_376

    .line 299
    :cond_314
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_31a
    :goto_31a
    move/from16 v38, v5

    move/from16 v39, v6

    move/from16 v24, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 p1, v13

    move-object/from16 v31, v14

    const/4 v13, -0x1

    move v14, v4

    move-object v11, v8

    move/from16 v10, v38

    add-int/lit8 v5, v10, 0x8

    const/16 v9, 0x8

    add-int/2addr v5, v9

    .line 182
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    if-eqz p5, :cond_33f

    .line 185
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v2

    const/4 v4, 0x6

    .line 186
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    goto :goto_343

    .line 187
    :cond_33f
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    const/4 v2, 0x0

    :goto_343
    if-eqz v2, :cond_382

    const/4 v8, 0x1

    if-ne v2, v8, :cond_34a

    const/4 v7, 0x2

    goto :goto_384

    :cond_34a
    const/4 v7, 0x2

    if-ne v2, v7, :cond_369

    const/16 v2, 0x10

    .line 195
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 197
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 198
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    .line 199
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v4

    const/16 v5, 0x14

    .line 200
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    goto :goto_398

    :cond_369
    move-object/from16 v47, p1

    move-object/from16 v35, v0

    move/from16 v29, v10

    move-object v0, v11

    move-object/from16 v25, v12

    move/from16 v30, v14

    move-object/from16 v23, v31

    :goto_376
    move/from16 v36, v39

    :goto_378
    const/16 v16, 0x3

    const/16 v17, -0x1

    const/16 v18, 0x0

    :goto_37e
    const/16 v31, 0x10

    goto/16 :goto_79c

    :cond_382
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 189
    :goto_384
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x6

    .line 190
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 191
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzje()I

    move-result v5

    if-ne v2, v8, :cond_397

    const/16 v2, 0x10

    .line 193
    invoke-virtual {v12, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    :cond_397
    move v2, v5

    .line 202
    :goto_398
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v5

    .line 203
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaus:I

    if-ne v1, v6, :cond_3aa

    move/from16 v6, v39

    .line 204
    invoke-static {v12, v10, v14, v11, v6}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzpk;IILcom/google/android/gms/internal/ads/zzkx;I)I

    move-result v1

    .line 205
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    goto :goto_3ac

    :cond_3aa
    move/from16 v6, v39

    .line 207
    :goto_3ac
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatf:I

    if-ne v1, v7, :cond_3b3

    const-string v1, "audio/ac3"

    goto :goto_3fd

    .line 209
    :cond_3b3
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzath:I

    if-ne v1, v7, :cond_3ba

    const-string v1, "audio/eac3"

    goto :goto_3fd

    .line 211
    :cond_3ba
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatj:I

    if-ne v1, v7, :cond_3c1

    const-string v1, "audio/vnd.dts"

    goto :goto_3fd

    .line 213
    :cond_3c1
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatk:I

    if-eq v1, v7, :cond_3fb

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatl:I

    if-ne v1, v7, :cond_3ca

    goto :goto_3fb

    .line 215
    :cond_3ca
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatm:I

    if-ne v1, v7, :cond_3d1

    const-string v1, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_3fd

    .line 217
    :cond_3d1
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzavq:I

    if-ne v1, v7, :cond_3d8

    const-string v1, "audio/3gpp"

    goto :goto_3fd

    .line 219
    :cond_3d8
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzavr:I

    if-ne v1, v7, :cond_3df

    const-string v1, "audio/amr-wb"

    goto :goto_3fd

    .line 221
    :cond_3df
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatd:I

    if-eq v1, v7, :cond_3f8

    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzate:I

    if-ne v1, v7, :cond_3e8

    goto :goto_3f8

    .line 223
    :cond_3e8
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzatb:I

    if-ne v1, v7, :cond_3ef

    const-string v1, "audio/mpeg"

    goto :goto_3fd

    .line 225
    :cond_3ef
    sget v7, Lcom/google/android/gms/internal/ads/zzkr;->zzawg:I

    if-ne v1, v7, :cond_3f6

    const-string v1, "audio/alac"

    goto :goto_3fd

    :cond_3f6
    const/4 v1, 0x0

    goto :goto_3fd

    :cond_3f8
    :goto_3f8
    const-string v1, "audio/raw"

    goto :goto_3fd

    :cond_3fb
    :goto_3fb
    const-string v1, "audio/vnd.dts.hd"

    :goto_3fd
    move/from16 v18, v2

    move/from16 v17, v4

    move v7, v5

    const/16 v29, 0x0

    move-object v5, v1

    :goto_405
    sub-int v1, v7, v10

    if-ge v1, v14, :cond_540

    .line 229
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 230
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    if-lez v4, :cond_414

    const/4 v1, 0x1

    goto :goto_415

    :cond_414
    const/4 v1, 0x0

    .line 231
    :goto_415
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 232
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v1

    .line 233
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaub:I

    if-eq v1, v2, :cond_4c1

    if-eqz p5, :cond_428

    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatc:I

    if-ne v1, v2, :cond_428

    goto/16 :goto_4c1

    .line 258
    :cond_428
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatg:I

    if-ne v1, v2, :cond_44a

    add-int/lit8 v1, v7, 0x8

    .line 259
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 260
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/zzic;->zza(Lcom/google/android/gms/internal/ads/zzpk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    :goto_43b
    move-object v13, v3

    move v2, v4

    move-object/from16 v42, v5

    move/from16 v43, v6

    move v5, v7

    move/from16 v46, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    goto/16 :goto_4be

    .line 261
    :cond_44a
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzati:I

    if-ne v1, v2, :cond_45e

    add-int/lit8 v1, v7, 0x8

    .line 262
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 263
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1, v0, v15}, Lcom/google/android/gms/internal/ads/zzic;->zzb(Lcom/google/android/gms/internal/ads/zzpk;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_43b

    .line 264
    :cond_45e
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzatn:I

    if-ne v1, v2, :cond_497

    .line 265
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v30, 0x0

    const/16 v34, -0x1

    const/16 v35, -0x1

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object v2, v5

    move-object v13, v3

    move-object/from16 v3, v30

    move/from16 v41, v4

    move/from16 v4, v34

    move-object/from16 v42, v5

    move/from16 v5, v35

    move/from16 v43, v6

    move/from16 v6, v17

    move/from16 v44, v7

    const/16 v16, 0x2

    move/from16 v7, v18

    move-object/from16 v8, v36

    move-object/from16 v9, p4

    move/from16 v46, v10

    move/from16 v10, v37

    move-object v15, v11

    move-object v11, v0

    invoke-static/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjn;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_4b9

    :cond_497
    move-object v13, v3

    move/from16 v41, v4

    move-object/from16 v42, v5

    move/from16 v43, v6

    move/from16 v44, v7

    move/from16 v46, v10

    move-object v15, v11

    const/16 v16, 0x2

    .line 266
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzawg:I

    if-ne v1, v2, :cond_4b9

    move/from16 v2, v41

    .line 267
    new-array v1, v2, [B

    move/from16 v5, v44

    .line 268
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    const/4 v11, 0x0

    .line 269
    invoke-virtual {v12, v1, v11, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    move-object/from16 v29, v1

    goto :goto_4be

    :cond_4b9
    :goto_4b9
    move/from16 v2, v41

    move/from16 v5, v44

    const/4 v11, 0x0

    :goto_4be
    const/4 v10, -0x1

    goto/16 :goto_52e

    :cond_4c1
    :goto_4c1
    move-object v13, v3

    move v2, v4

    move-object/from16 v42, v5

    move/from16 v43, v6

    move v5, v7

    move/from16 v46, v10

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v16, 0x2

    .line 234
    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzaub:I

    if-ne v1, v3, :cond_4d5

    move v1, v5

    :goto_4d3
    const/4 v10, -0x1

    goto :goto_4f9

    .line 236
    :cond_4d5
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v1

    :goto_4d9
    sub-int v3, v1, v5

    if-ge v3, v2, :cond_4f7

    .line 238
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 239
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    if-lez v3, :cond_4e8

    const/4 v4, 0x1

    goto :goto_4e9

    :cond_4e8
    const/4 v4, 0x0

    .line 240
    :goto_4e9
    invoke-static {v4, v13}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 241
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 242
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzaub:I

    if-ne v4, v6, :cond_4f5

    goto :goto_4d3

    :cond_4f5
    add-int/2addr v1, v3

    goto :goto_4d9

    :cond_4f7
    const/4 v1, -0x1

    goto :goto_4d3

    :goto_4f9
    if-eq v1, v10, :cond_52a

    .line 250
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/ads/zzkw;->zzb(Lcom/google/android/gms/internal/ads/zzpk;I)Landroid/util/Pair;

    move-result-object v1

    .line 251
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 252
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v1

    check-cast v29, [B

    const-string v1, "audio/mp4a-latm"

    .line 253
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52c

    .line 255
    invoke-static/range {v29 .. v29}, Lcom/google/android/gms/internal/ads/zzpc;->zze([B)Landroid/util/Pair;

    move-result-object v1

    .line 256
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 257
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v17, v1

    move/from16 v18, v4

    goto :goto_52c

    :cond_52a
    move-object/from16 v3, v42

    :cond_52c
    :goto_52c
    move-object/from16 v42, v3

    :goto_52e
    add-int v7, v5, v2

    move-object v3, v13

    move-object v11, v15

    move-object/from16 v5, v42

    move/from16 v6, v43

    move/from16 v10, v46

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v13, -0x1

    move-object/from16 v15, p4

    goto/16 :goto_405

    :cond_540
    move-object/from16 v42, v5

    move/from16 v43, v6

    move/from16 v46, v10

    move-object v15, v11

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v16, 0x2

    .line 272
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    if-nez v1, :cond_583

    move-object/from16 v2, v42

    if-eqz v2, :cond_583

    const-string v1, "audio/raw"

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55d

    const/4 v8, 0x2

    goto :goto_55e

    :cond_55d
    const/4 v8, -0x1

    .line 274
    :goto_55e
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    if-nez v29, :cond_569

    const/4 v9, 0x0

    goto :goto_56e

    .line 275
    :cond_569
    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v9, v6

    :goto_56e
    const/4 v13, 0x0

    move/from16 v6, v17

    move/from16 v7, v18

    const/16 v17, -0x1

    move-object/from16 v10, p4

    const/16 v18, 0x0

    move v11, v13

    move-object v13, v12

    move-object v12, v0

    .line 276
    invoke-static/range {v1 .. v12}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/gms/internal/ads/zzjn;ILjava/lang/String;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v15, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_588

    :cond_583
    move-object v13, v12

    const/16 v17, -0x1

    const/16 v18, 0x0

    :goto_588
    move-object/from16 v47, p1

    move-object/from16 v35, v0

    move-object/from16 v25, v13

    move/from16 v30, v14

    move-object v0, v15

    move-object/from16 v23, v31

    move/from16 v36, v43

    move/from16 v29, v46

    :goto_597
    const/16 v16, 0x3

    goto/16 :goto_37e

    :cond_59b
    :goto_59b
    move/from16 v46, v5

    move/from16 v43, v6

    move-object v15, v8

    move/from16 v24, v9

    move/from16 v19, v10

    move-object v0, v11

    move-object/from16 p1, v13

    move-object/from16 v31, v14

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object v13, v3

    move v14, v4

    move/from16 v11, v46

    add-int/lit8 v5, v11, 0x8

    const/16 v10, 0x8

    add-int/2addr v5, v10

    .line 91
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    const/16 v9, 0x10

    .line 92
    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 93
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v6

    .line 94
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v7

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    .line 97
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 98
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v3

    .line 99
    sget v4, Lcom/google/android/gms/internal/ads/zzkr;->zzaur:I

    if-ne v1, v4, :cond_5df

    move/from16 v8, v43

    .line 100
    invoke-static {v12, v11, v14, v15, v8}, Lcom/google/android/gms/internal/ads/zzkw;->zza(Lcom/google/android/gms/internal/ads/zzpk;IILcom/google/android/gms/internal/ads/zzkx;I)I

    move-result v1

    .line 101
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    goto :goto_5e1

    :cond_5df
    move/from16 v8, v43

    :goto_5e1
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v23, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_5eb
    sub-int v5, v3, v11

    if-ge v5, v14, :cond_74b

    .line 107
    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 108
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v5

    .line 109
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v9

    if-nez v9, :cond_604

    .line 110
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v35

    sub-int v10, v35, v11

    if-eq v10, v14, :cond_74b

    :cond_604
    if-lez v9, :cond_608

    const/4 v10, 0x1

    goto :goto_609

    :cond_608
    const/4 v10, 0x0

    .line 111
    :goto_609
    invoke-static {v10, v13}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(ZLjava/lang/Object;)V

    .line 112
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v10

    move-object/from16 v35, v0

    .line 113
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzatz:I

    if-ne v10, v0, :cond_636

    if-nez v2, :cond_61a

    const/4 v0, 0x1

    goto :goto_61b

    :cond_61a
    const/4 v0, 0x0

    .line 114
    :goto_61b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 116
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 117
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzps;->zzg(Lcom/google/android/gms/internal/ads/zzpk;)Lcom/google/android/gms/internal/ads/zzps;

    move-result-object v0

    .line 118
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzps;->zzahe:Ljava/util/List;

    .line 119
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzps;->zzasr:I

    iput v5, v15, Lcom/google/android/gms/internal/ads/zzkx;->zzasr:I

    if-nez v4, :cond_633

    .line 121
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzps;->zzbkc:F

    move/from16 v16, v0

    :cond_633
    const-string v0, "video/avc"

    goto :goto_653

    .line 122
    :cond_636
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzaua:I

    if-ne v10, v0, :cond_65f

    if-nez v2, :cond_63e

    const/4 v0, 0x1

    goto :goto_63f

    :cond_63e
    const/4 v0, 0x0

    .line 123
    :goto_63f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    add-int/lit8 v5, v5, 0x8

    .line 125
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 126
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzpy;->zzi(Lcom/google/android/gms/internal/ads/zzpk;)Lcom/google/android/gms/internal/ads/zzpy;

    move-result-object v0

    .line 127
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpy;->zzahe:Ljava/util/List;

    .line 128
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzpy;->zzasr:I

    iput v0, v15, Lcom/google/android/gms/internal/ads/zzkx;->zzasr:I

    const-string v0, "video/hevc"

    :goto_653
    move/from16 v36, v1

    move-object/from16 v29, v2

    move/from16 v45, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    move-object v2, v0

    goto/16 :goto_73e

    .line 129
    :cond_65f
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzawe:I

    if-ne v10, v0, :cond_676

    if-nez v2, :cond_667

    const/4 v0, 0x1

    goto :goto_668

    :cond_667
    const/4 v0, 0x0

    .line 130
    :goto_668
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 131
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzawc:I

    if-ne v1, v0, :cond_672

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_674

    :cond_672
    const-string v0, "video/x-vnd.on2.vp9"

    :goto_674
    move-object v2, v0

    goto :goto_684

    .line 132
    :cond_676
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzasy:I

    if-ne v10, v0, :cond_68d

    if-nez v2, :cond_67e

    const/4 v0, 0x1

    goto :goto_67f

    :cond_67e
    const/4 v0, 0x0

    .line 133
    :goto_67f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    const-string v2, "video/3gpp"

    :goto_684
    move/from16 v36, v1

    move/from16 v45, v4

    :goto_688
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    goto/16 :goto_73e

    .line 135
    :cond_68d
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzaub:I

    if-ne v10, v0, :cond_6aa

    if-nez v2, :cond_695

    const/4 v0, 0x1

    goto :goto_696

    :cond_695
    const/4 v0, 0x0

    .line 136
    :goto_696
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    .line 138
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/ads/zzkw;->zzb(Lcom/google/android/gms/internal/ads/zzpk;I)Landroid/util/Pair;

    move-result-object v0

    .line 139
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 140
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    goto :goto_684

    .line 141
    :cond_6aa
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzava:I

    if-ne v10, v0, :cond_6c8

    add-int/lit8 v5, v5, 0x8

    .line 143
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 144
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v0

    .line 145
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float v16, v0, v4

    move/from16 v36, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    const/16 v45, 0x1

    goto/16 :goto_73e

    .line 149
    :cond_6c8
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzawa:I

    if-ne v10, v0, :cond_6fe

    add-int/lit8 v0, v5, 0x8

    :goto_6ce
    sub-int v10, v0, v5

    if-ge v10, v9, :cond_6f5

    .line 153
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 154
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v10

    move/from16 v36, v1

    .line 155
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v1

    move/from16 p2, v4

    .line 156
    sget v4, Lcom/google/android/gms/internal/ads/zzkr;->zzawb:I

    if-ne v1, v4, :cond_6ef

    .line 157
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzpk;->data:[B

    add-int/2addr v10, v0

    invoke-static {v1, v0, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_6fb

    :cond_6ef
    add-int/2addr v0, v10

    move/from16 v4, p2

    move/from16 v1, v36

    goto :goto_6ce

    :cond_6f5
    move/from16 v36, v1

    move/from16 p2, v4

    const/16 v30, 0x0

    :goto_6fb
    move/from16 v45, p2

    goto :goto_688

    :cond_6fe
    move/from16 v36, v1

    move/from16 p2, v4

    .line 162
    sget v0, Lcom/google/android/gms/internal/ads/zzkr;->zzavz:I

    if-ne v10, v0, :cond_739

    .line 163
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    const/4 v10, 0x3

    .line 164
    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    if-nez v0, :cond_736

    .line 166
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    if-eqz v0, :cond_72f

    const/4 v5, 0x1

    if-eq v0, v5, :cond_729

    const/4 v4, 0x2

    if-eq v0, v4, :cond_724

    if-eq v0, v10, :cond_71f

    goto :goto_73c

    :cond_71f
    move/from16 v45, p2

    const/16 v23, 0x3

    goto :goto_73e

    :cond_724
    move/from16 v45, p2

    const/16 v23, 0x2

    goto :goto_73e

    :cond_729
    const/4 v4, 0x2

    move/from16 v45, p2

    const/16 v23, 0x1

    goto :goto_73e

    :cond_72f
    const/4 v4, 0x2

    const/4 v5, 0x1

    move/from16 v45, p2

    const/16 v23, 0x0

    goto :goto_73e

    :cond_736
    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_73c

    :cond_739
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    :goto_73c
    move/from16 v45, p2

    :goto_73e
    add-int/2addr v3, v9

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v4, v45

    const/16 v9, 0x10

    const/16 v10, 0x8

    goto/16 :goto_5eb

    :cond_74b
    move-object/from16 v35, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x3

    if-eqz v2, :cond_78d

    .line 178
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v9, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v25, 0x0

    move v4, v0

    const/4 v0, 0x1

    move v5, v9

    move/from16 v36, v8

    move v8, v13

    const/16 v34, 0x10

    move-object/from16 v9, v29

    const/16 v0, 0x8

    const/4 v13, 0x3

    move/from16 v10, v28

    move/from16 v29, v11

    move/from16 v11, v16

    move-object v0, v12

    move-object/from16 v12, v30

    move-object/from16 v47, p1

    const/16 v16, 0x3

    move/from16 v13, v23

    move/from16 v30, v14

    move-object/from16 v23, v31

    const/16 v31, 0x10

    move-object/from16 v14, v25

    move-object/from16 v25, v0

    move-object v0, v15

    move-object/from16 v15, p4

    invoke-static/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/gms/internal/ads/zzpr;Lcom/google/android/gms/internal/ads/zzjn;)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    goto :goto_79c

    :cond_78d
    move-object/from16 v47, p1

    move/from16 v36, v8

    move/from16 v29, v11

    move-object/from16 v25, v12

    move/from16 v30, v14

    move-object v0, v15

    move-object/from16 v23, v31

    goto/16 :goto_597

    :goto_79c
    add-int v5, v29, v30

    move-object/from16 v1, v25

    .line 304
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    add-int/lit8 v6, v36, 0x1

    move-object/from16 v15, p4

    move-object v8, v0

    move-object v12, v1

    move/from16 v10, v19

    move-object/from16 v14, v23

    move/from16 v9, v24

    move-object/from16 v11, v35

    move-object/from16 v13, v47

    const/16 v7, 0x8

    move-object/from16 v0, p0

    goto/16 :goto_1b6

    :cond_7b9
    move-object v0, v8

    move/from16 v19, v10

    move-object/from16 v47, v13

    move-object/from16 v23, v14

    const/16 v18, 0x0

    .line 308
    sget v1, Lcom/google/android/gms/internal/ads/zzkr;->zzauh:I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzku;->zzav(I)Lcom/google/android/gms/internal/ads/zzku;

    move-result-object v1

    if-eqz v1, :cond_827

    .line 309
    sget v2, Lcom/google/android/gms/internal/ads/zzkr;->zzaui:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v1

    if-nez v1, :cond_7d5

    goto :goto_827

    .line 311
    :cond_7d5
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 v2, 0x8

    .line 312
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 313
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v2

    .line 314
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzkr;->zzaq(I)I

    move-result v2

    .line 315
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v3

    .line 316
    new-array v4, v3, [J

    .line 317
    new-array v5, v3, [J

    const/4 v6, 0x0

    :goto_7ed
    if-ge v6, v3, :cond_820

    const/4 v7, 0x1

    if-ne v2, v7, :cond_7f7

    .line 320
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjg()J

    move-result-wide v8

    goto :goto_7fb

    :cond_7f7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjc()J

    move-result-wide v8

    :goto_7fb
    aput-wide v8, v4, v6

    if-ne v2, v7, :cond_804

    .line 321
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readLong()J

    move-result-wide v8

    goto :goto_809

    :cond_804
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v8

    int-to-long v8, v8

    :goto_809
    aput-wide v8, v5, v6

    .line 322
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readShort()S

    move-result v8

    if-ne v8, v7, :cond_818

    const/4 v8, 0x2

    .line 325
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7ed

    .line 324
    :cond_818
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_820
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_82c

    :cond_827
    :goto_827
    const/4 v1, 0x0

    .line 310
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 329
    :goto_82c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    if-nez v3, :cond_831

    return-object v1

    .line 330
    :cond_831
    new-instance v1, Lcom/google/android/gms/internal/ads/zzln;

    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzlc;->zzb(Lcom/google/android/gms/internal/ads/zzlc;)I

    move-result v16

    move-object/from16 v3, v47

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzaxb:I

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzaxa:[Lcom/google/android/gms/internal/ads/zzlq;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzkx;->zzasr:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v28, v8

    check-cast v28, [J

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v29, v2

    check-cast v29, [J

    move-object v15, v1

    move/from16 v17, v19

    move-wide/from16 v18, v3

    move-wide/from16 v20, v32

    move-wide/from16 v22, v26

    move-object/from16 v24, v5

    move/from16 v25, v6

    move-object/from16 v26, v7

    move/from16 v27, v0

    invoke-direct/range {v15 .. v29}, Lcom/google/android/gms/internal/ads/zzln;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzho;I[Lcom/google/android/gms/internal/ads/zzlq;I[J[J)V

    return-object v1
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzku;Lcom/google/android/gms/internal/ads/zzjz;)Lcom/google/android/gms/internal/ads/zzls;
    .registers 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhv;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 332
    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzavi:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 334
    new-instance v4, Lcom/google/android/gms/internal/ads/zzla;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzla;-><init>(Lcom/google/android/gms/internal/ads/zzkt;)V

    goto :goto_21

    .line 335
    :cond_14
    sget v3, Lcom/google/android/gms/internal/ads/zzkr;->zzavj:I

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v3

    if-eqz v3, :cond_4ef

    .line 338
    new-instance v4, Lcom/google/android/gms/internal/ads/zzkz;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzkz;-><init>(Lcom/google/android/gms/internal/ads/zzkt;)V

    .line 339
    :goto_21
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzky;->zzgy()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_38

    .line 341
    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    new-array v7, v5, [J

    new-array v8, v5, [I

    const/4 v9, 0x0

    new-array v10, v5, [J

    new-array v11, v5, [I

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzls;-><init>([J[II[J[I)V

    return-object v0

    .line 343
    :cond_38
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavk:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v6, :cond_49

    .line 346
    sget v6, Lcom/google/android/gms/internal/ads/zzkr;->zzavl:I

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v6

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    .line 347
    :goto_4a
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 348
    sget v9, Lcom/google/android/gms/internal/ads/zzkr;->zzavh:I

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 349
    sget v10, Lcom/google/android/gms/internal/ads/zzkr;->zzave:I

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v10

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    .line 350
    sget v11, Lcom/google/android/gms/internal/ads/zzkr;->zzavf:I

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_68

    .line 351
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    goto :goto_69

    :cond_68
    move-object v11, v12

    .line 352
    :goto_69
    sget v13, Lcom/google/android/gms/internal/ads/zzkr;->zzavg:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzku;->zzau(I)Lcom/google/android/gms/internal/ads/zzkt;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 353
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    goto :goto_75

    :cond_74
    move-object v1, v12

    .line 354
    :goto_75
    new-instance v13, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {v13, v9, v6, v8}, Lcom/google/android/gms/internal/ads/zzkv;-><init>(Lcom/google/android/gms/internal/ads/zzpk;Lcom/google/android/gms/internal/ads/zzpk;Z)V

    const/16 v6, 0xc

    .line 355
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 356
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v8

    sub-int/2addr v8, v7

    .line 357
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v9

    .line 358
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v14

    if-eqz v1, :cond_96

    .line 363
    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 364
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v15

    goto :goto_97

    :cond_96
    const/4 v15, 0x0

    :goto_97
    const/16 v16, -0x1

    if-eqz v11, :cond_ad

    .line 368
    invoke-virtual {v11, v6}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 369
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v6

    if-lez v6, :cond_ab

    .line 371
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v12

    add-int/lit8 v16, v12, -0x1

    goto :goto_ae

    :cond_ab
    move-object v11, v12

    goto :goto_ae

    :cond_ad
    const/4 v6, 0x0

    .line 373
    :goto_ae
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzky;->zzha()Z

    move-result v12

    if-eqz v12, :cond_c8

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzho;->zzahc:Ljava/lang/String;

    const-string v5, "audio/raw"

    .line 374
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    if-nez v8, :cond_c8

    if-nez v15, :cond_c8

    if-nez v6, :cond_c8

    const/4 v5, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v5, 0x0

    :goto_c9
    const-wide/16 v18, 0x0

    if-nez v5, :cond_207

    .line 378
    new-array v5, v3, [J

    .line 379
    new-array v12, v3, [I

    .line 380
    new-array v7, v3, [J

    move/from16 p1, v6

    .line 381
    new-array v6, v3, [I

    move/from16 v0, p1

    move-object/from16 v27, v10

    move v10, v14

    move/from16 v25, v15

    move/from16 v2, v16

    move-wide/from16 v21, v18

    move-wide/from16 v23, v21

    const/16 p1, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v26, 0x0

    move v14, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_ee
    if-ge v8, v3, :cond_194

    move-wide/from16 v28, v21

    move/from16 v21, p1

    :goto_f4
    if-nez v21, :cond_10e

    .line 386
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzgx()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzoz;->checkState(Z)V

    move/from16 v22, v9

    move/from16 v30, v10

    .line 387
    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzkv;->zzawn:J

    move-wide/from16 v28, v9

    .line 388
    iget v9, v13, Lcom/google/android/gms/internal/ads/zzkv;->zzawm:I

    move/from16 v21, v9

    move/from16 v9, v22

    move/from16 v10, v30

    goto :goto_f4

    :cond_10e
    move/from16 v22, v9

    move/from16 v30, v10

    if-eqz v1, :cond_125

    :goto_114
    if-nez v26, :cond_123

    if-lez v25, :cond_123

    .line 391
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v26

    .line 392
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v16

    add-int/lit8 v25, v25, -0x1

    goto :goto_114

    :cond_123
    add-int/lit8 v26, v26, -0x1

    :cond_125
    move/from16 v9, v16

    .line 395
    aput-wide v28, v5, v8

    .line 396
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzky;->zzgz()I

    move-result v10

    aput v10, v12, v8

    .line 397
    aget v10, v12, v8

    if-le v10, v15, :cond_139

    .line 398
    aget v10, v12, v8

    move/from16 v16, v3

    move v15, v10

    goto :goto_13b

    :cond_139
    move/from16 v16, v3

    :goto_13b
    move-object v10, v4

    int-to-long v3, v9

    add-long v3, v23, v3

    .line 399
    aput-wide v3, v7, v8

    if-nez v11, :cond_145

    const/4 v3, 0x1

    goto :goto_146

    :cond_145
    const/4 v3, 0x0

    .line 400
    :goto_146
    aput v3, v6, v8

    if-ne v8, v2, :cond_156

    const/4 v3, 0x1

    .line 402
    aput v3, v6, v8

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_156

    .line 405
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v2

    sub-int/2addr v2, v3

    :cond_156
    move v4, v0

    move/from16 p1, v2

    move/from16 v0, v30

    int-to-long v2, v0

    add-long v23, v23, v2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_171

    if-lez v22, :cond_171

    .line 409
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v0

    .line 410
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v2

    add-int/lit8 v3, v22, -0x1

    move v14, v0

    move v0, v2

    goto :goto_173

    :cond_171
    move/from16 v3, v22

    .line 412
    :goto_173
    aget v2, v12, v8

    move/from16 v22, v3

    int-to-long v2, v2

    add-long v2, v28, v2

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v40, v2

    move/from16 v2, p1

    move/from16 v3, v16

    move/from16 p1, v21

    move/from16 v16, v9

    move/from16 v9, v22

    move-wide/from16 v21, v40

    move-object/from16 v42, v10

    move v10, v0

    move v0, v4

    move-object/from16 v4, v42

    goto/16 :goto_ee

    :cond_194
    move/from16 v16, v3

    move/from16 v22, v9

    if-nez v26, :cond_19c

    const/4 v2, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v2, 0x0

    .line 415
    :goto_19d
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    :goto_1a0
    if-lez v25, :cond_1b4

    .line 417
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzjf()I

    move-result v2

    if-nez v2, :cond_1aa

    const/4 v2, 0x1

    goto :goto_1ab

    :cond_1aa
    const/4 v2, 0x0

    :goto_1ab
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzoz;->checkArgument(Z)V

    .line 418
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    add-int/lit8 v25, v25, -0x1

    goto :goto_1a0

    :cond_1b4
    if-nez v0, :cond_1c0

    if-nez v14, :cond_1c0

    if-nez p1, :cond_1c0

    if-eqz v22, :cond_1bd

    goto :goto_1c0

    :cond_1bd
    move-object/from16 v0, p0

    goto :goto_201

    :cond_1c0
    :goto_1c0
    move v4, v0

    move-object/from16 v0, p0

    .line 421
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzln;->id:I

    const/16 v2, 0xd7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Inconsistent stbl box for track "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": remainingSynchronizationSamples "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingSamplesInChunk "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainingTimestampDeltaChanges "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AtomParsers"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_201
    move-wide/from16 v1, v23

    move/from16 v24, v15

    goto/16 :goto_2aa

    :cond_207
    move/from16 v16, v3

    move-object v10, v4

    .line 423
    iget v1, v13, Lcom/google/android/gms/internal/ads/zzkv;->length:I

    new-array v1, v1, [J

    .line 424
    iget v2, v13, Lcom/google/android/gms/internal/ads/zzkv;->length:I

    new-array v2, v2, [I

    .line 425
    :goto_212
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzkv;->zzgx()Z

    move-result v3

    if-eqz v3, :cond_225

    .line 426
    iget v3, v13, Lcom/google/android/gms/internal/ads/zzkv;->index:I

    iget-wide v4, v13, Lcom/google/android/gms/internal/ads/zzkv;->zzawn:J

    aput-wide v4, v1, v3

    .line 427
    iget v3, v13, Lcom/google/android/gms/internal/ads/zzkv;->index:I

    iget v4, v13, Lcom/google/android/gms/internal/ads/zzkv;->zzawm:I

    aput v4, v2, v3

    goto :goto_212

    .line 428
    :cond_225
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzky;->zzgz()I

    move-result v3

    int-to-long v4, v14

    const/16 v6, 0x2000

    .line 430
    div-int/2addr v6, v3

    .line 432
    array-length v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_230
    if-ge v8, v7, :cond_23c

    aget v10, v2, v8

    .line 433
    invoke-static {v10, v6}, Lcom/google/android/gms/internal/ads/zzpq;->zzf(II)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_230

    .line 435
    :cond_23c
    new-array v7, v9, [J

    .line 436
    new-array v8, v9, [I

    .line 438
    new-array v10, v9, [J

    .line 439
    new-array v9, v9, [I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v24, 0x0

    .line 442
    :goto_249
    array-length v14, v2

    if-ge v11, v14, :cond_28b

    .line 443
    aget v14, v2, v11

    .line 444
    aget-wide v21, v1, v11

    move v15, v12

    move/from16 v12, v24

    :goto_253
    if-lez v14, :cond_281

    .line 446
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 447
    aput-wide v21, v7, v13

    mul-int v24, v3, v23

    .line 448
    aput v24, v8, v13

    move-object/from16 v25, v1

    .line 449
    aget v1, v8, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    move-object/from16 v26, v2

    int-to-long v1, v15

    mul-long v1, v1, v4

    .line 450
    aput-wide v1, v10, v13

    const/4 v1, 0x1

    .line 451
    aput v1, v9, v13

    .line 452
    aget v1, v8, v13

    int-to-long v1, v1

    add-long v21, v21, v1

    add-int v15, v15, v23

    sub-int v14, v14, v23

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto :goto_253

    :cond_281
    move-object/from16 v25, v1

    move-object/from16 v26, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v24, v12

    move v12, v15

    goto :goto_249

    .line 458
    :cond_28b
    new-instance v1, Lcom/google/android/gms/internal/ads/zzld;

    const/16 v27, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v9

    invoke-direct/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzld;-><init>([J[II[J[ILcom/google/android/gms/internal/ads/zzle;)V

    .line 460
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzld;->zzaoo:[J

    .line 461
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzld;->zzaon:[I

    .line 462
    iget v2, v1, Lcom/google/android/gms/internal/ads/zzld;->zzaxi:I

    .line 463
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzld;->zzaxj:[J

    .line 464
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzld;->zzaxk:[I

    move/from16 v24, v2

    move-wide/from16 v1, v18

    .line 465
    :goto_2aa
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    if-eqz v3, :cond_4d2

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzjz;->zzgs()Z

    move-result v3

    if-eqz v3, :cond_2b6

    goto/16 :goto_4d2

    .line 468
    :cond_2b6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_34b

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzln;->type:I

    if-ne v3, v4, :cond_34b

    array-length v3, v7

    const/4 v4, 0x2

    if-lt v3, v4, :cond_34b

    .line 469
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbah:[J

    const/4 v4, 0x0

    aget-wide v10, v3, v4

    .line 470
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    aget-wide v25, v3, v4

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbad:J

    move-wide/from16 v27, v13

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    .line 472
    aget-wide v13, v7, v4

    cmp-long v3, v13, v10

    if-gtz v3, :cond_34b

    const/4 v3, 0x1

    aget-wide v13, v7, v3

    cmp-long v4, v10, v13

    if-gez v4, :cond_34b

    array-length v4, v7

    sub-int/2addr v4, v3

    aget-wide v3, v7, v4

    cmp-long v13, v3, v8

    if-gez v13, :cond_34b

    cmp-long v3, v8, v1

    if-gtz v3, :cond_34b

    sub-long v25, v1, v8

    const/4 v1, 0x0

    .line 474
    aget-wide v2, v7, v1

    sub-long v27, v10, v2

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzho;->zzahn:I

    int-to-long v1, v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-wide/from16 v29, v1

    move-wide/from16 v31, v3

    invoke-static/range {v27 .. v32}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v1

    .line 475
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzln;->zzahx:Lcom/google/android/gms/internal/ads/zzho;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzho;->zzahn:I

    int-to-long v3, v3

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-wide/from16 v27, v3

    move-wide/from16 v29, v8

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v3

    cmp-long v8, v1, v18

    if-nez v8, :cond_320

    cmp-long v8, v3, v18

    if-eqz v8, :cond_34b

    :cond_320
    const-wide/32 v8, 0x7fffffff

    cmp-long v10, v1, v8

    if-gtz v10, :cond_34b

    cmp-long v10, v3, v8

    if-gtz v10, :cond_34b

    long-to-int v2, v1

    move-object/from16 v1, p2

    .line 477
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzjz;->zzahp:I

    long-to-int v2, v3

    .line 478
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzjz;->zzahq:I

    .line 479
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zza([JJJ)V

    .line 480
    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzls;-><init>([J[II[J[I)V

    return-object v0

    .line 481
    :cond_34b
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_389

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    const/16 v17, 0x0

    aget-wide v2, v1, v17

    cmp-long v1, v2, v18

    if-nez v1, :cond_389

    const/4 v1, 0x0

    .line 482
    :goto_35c
    array-length v2, v7

    if-ge v1, v2, :cond_379

    .line 483
    aget-wide v2, v7, v1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbah:[J

    aget-wide v8, v4, v17

    sub-long v18, v2, v8

    const-wide/32 v20, 0xf4240

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-wide/from16 v22, v2

    invoke-static/range {v18 .. v23}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v2

    aput-wide v2, v7, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v17, 0x0

    goto :goto_35c

    .line 485
    :cond_379
    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v21, v0

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v25, v7

    move-object/from16 v26, v6

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzls;-><init>([J[II[J[I)V

    return-object v0

    .line 486
    :cond_389
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzln;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_390

    const/4 v1, 0x1

    goto :goto_391

    :cond_390
    const/4 v1, 0x0

    :goto_391
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 490
    :goto_395
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    array-length v9, v9

    const-wide/16 v10, -0x1

    if-ge v2, v9, :cond_3d3

    .line 491
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbah:[J

    aget-wide v13, v9, v2

    cmp-long v9, v13, v10

    if-eqz v9, :cond_3cc

    .line 493
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    aget-wide v25, v9, v2

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-object/from16 p1, v12

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbad:J

    move-wide/from16 v27, v9

    move-wide/from16 v29, v11

    invoke-static/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 494
    invoke-static {v7, v13, v14, v11, v11}, Lcom/google/android/gms/internal/ads/zzpq;->zzb([JJZZ)I

    move-result v12

    add-long/2addr v13, v9

    const/4 v9, 0x0

    .line 495
    invoke-static {v7, v13, v14, v1, v9}, Lcom/google/android/gms/internal/ads/zzpq;->zzb([JJZZ)I

    move-result v10

    sub-int v9, v10, v12

    add-int/2addr v4, v9

    if-eq v8, v12, :cond_3c8

    const/4 v8, 0x1

    goto :goto_3c9

    :cond_3c8
    const/4 v8, 0x0

    :goto_3c9
    or-int/2addr v3, v8

    move v8, v10

    goto :goto_3ce

    :cond_3cc
    move-object/from16 p1, v12

    :goto_3ce
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, p1

    goto :goto_395

    :cond_3d3
    move-object/from16 p1, v12

    move/from16 v2, v16

    if-eq v4, v2, :cond_3db

    const/4 v2, 0x1

    goto :goto_3dc

    :cond_3db
    const/4 v2, 0x0

    :goto_3dc
    or-int/2addr v2, v3

    if-eqz v2, :cond_3e2

    .line 501
    new-array v3, v4, [J

    goto :goto_3e3

    :cond_3e2
    move-object v3, v5

    :goto_3e3
    if-eqz v2, :cond_3e8

    .line 502
    new-array v12, v4, [I

    goto :goto_3ea

    :cond_3e8
    move-object/from16 v12, p1

    :goto_3ea
    if-eqz v2, :cond_3ee

    const/16 v24, 0x0

    :cond_3ee
    if-eqz v2, :cond_3f3

    .line 504
    new-array v8, v4, [I

    goto :goto_3f4

    :cond_3f3
    move-object v8, v6

    .line 505
    :goto_3f4
    new-array v4, v4, [J

    move/from16 v28, v24

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 508
    :goto_3fa
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    array-length v14, v14

    if-ge v9, v14, :cond_4a3

    .line 509
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbah:[J

    aget-wide v10, v14, v9

    .line 510
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbag:[J

    aget-wide v29, v14, v9

    const-wide/16 v14, -0x1

    cmp-long v16, v10, v14

    if-eqz v16, :cond_487

    .line 512
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-object/from16 v16, v8

    move/from16 v27, v9

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbad:J

    move-wide/from16 v21, v29

    move-wide/from16 v23, v14

    move-wide/from16 v25, v8

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v8

    add-long/2addr v8, v10

    const/4 v14, 0x1

    .line 513
    invoke-static {v7, v10, v11, v14, v14}, Lcom/google/android/gms/internal/ads/zzpq;->zzb([JJZZ)I

    move-result v15

    const/4 v14, 0x0

    .line 514
    invoke-static {v7, v8, v9, v1, v14}, Lcom/google/android/gms/internal/ads/zzpq;->zzb([JJZZ)I

    move-result v8

    if-eqz v2, :cond_43e

    sub-int v9, v8, v15

    .line 517
    invoke-static {v5, v15, v3, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, p1

    .line 518
    invoke-static {v14, v15, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, v1

    move-object/from16 v1, v16

    .line 519
    invoke-static {v6, v15, v1, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_444

    :cond_43e
    move-object/from16 v14, p1

    move/from16 p1, v1

    move-object/from16 v1, v16

    :goto_444
    move/from16 v9, v28

    :goto_446
    if-ge v15, v8, :cond_480

    const-wide/32 v23, 0xf4240

    move-object/from16 v16, v5

    move-object/from16 v33, v6

    .line 521
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzln;->zzbad:J

    move-wide/from16 v21, v18

    move-wide/from16 v25, v5

    invoke-static/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v5

    .line 522
    aget-wide v21, v7, v15

    sub-long v34, v21, v10

    const-wide/32 v36, 0xf4240

    move-wide/from16 v21, v10

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    move-wide/from16 v38, v10

    invoke-static/range {v34 .. v39}, Lcom/google/android/gms/internal/ads/zzpq;->zza(JJJ)J

    move-result-wide v10

    add-long/2addr v5, v10

    .line 523
    aput-wide v5, v4, v13

    if-eqz v2, :cond_475

    .line 524
    aget v5, v12, v13

    if-le v5, v9, :cond_475

    .line 525
    aget v9, v14, v15

    :cond_475
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v10, v21

    move-object/from16 v6, v33

    goto :goto_446

    :cond_480
    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move/from16 v28, v9

    goto :goto_492

    :cond_487
    move-object/from16 v14, p1

    move/from16 p1, v1

    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move-object v1, v8

    move/from16 v27, v9

    :goto_492
    add-long v18, v18, v29

    add-int/lit8 v9, v27, 0x1

    move-object v8, v1

    move-object/from16 v5, v16

    move-object/from16 v6, v33

    const-wide/16 v10, -0x1

    move/from16 v1, p1

    move-object/from16 p1, v14

    goto/16 :goto_3fa

    :cond_4a3
    move-object v1, v8

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 531
    :goto_4a6
    array-length v5, v1

    if-ge v0, v5, :cond_4b8

    if-nez v2, :cond_4b8

    .line 532
    aget v5, v1, v0

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4b3

    const/4 v5, 0x1

    goto :goto_4b4

    :cond_4b3
    const/4 v5, 0x0

    :goto_4b4
    or-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4a6

    :cond_4b8
    if-eqz v2, :cond_4ca

    .line 536
    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v27, v12

    move-object/from16 v29, v4

    move-object/from16 v30, v1

    invoke-direct/range {v25 .. v30}, Lcom/google/android/gms/internal/ads/zzls;-><init>([J[II[J[I)V

    return-object v0

    .line 535
    :cond_4ca
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d2
    :goto_4d2
    move-object/from16 v16, v5

    move-object/from16 v33, v6

    move-object v14, v12

    .line 466
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzln;->zzdg:J

    const-wide/32 v2, 0xf4240

    invoke-static {v7, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzpq;->zza([JJJ)V

    .line 467
    new-instance v0, Lcom/google/android/gms/internal/ads/zzls;

    move-object/from16 v21, v0

    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v25, v7

    move-object/from16 v26, v33

    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/zzls;-><init>([J[II[J[I)V

    return-object v0

    .line 337
    :cond_4ef
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhv;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhv;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzkt;Z)Lcom/google/android/gms/internal/ads/zzmc;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    return-object v0

    .line 539
    :cond_4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzkt;->zzawi:Lcom/google/android/gms/internal/ads/zzpk;

    const/16 p1, 0x8

    .line 540
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    .line 541
    :goto_b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->zzja()I

    move-result v1

    if-lt v1, p1, :cond_75

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v1

    .line 543
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v2

    .line 544
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 545
    sget v4, Lcom/google/android/gms/internal/ads/zzkr;->zzavt:I

    if-ne v3, v4, :cond_6f

    .line 546
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    add-int/2addr v1, v2

    const/16 v2, 0xc

    .line 548
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 549
    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v2

    if-ge v2, v1, :cond_6e

    .line 550
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v2

    .line 551
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v3

    .line 552
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readInt()I

    move-result v4

    .line 553
    sget v5, Lcom/google/android/gms/internal/ads/zzkr;->zzavu:I

    if-ne v4, v5, :cond_68

    .line 554
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    add-int/2addr v2, v3

    .line 556
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 557
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->getPosition()I

    move-result v1

    if-ge v1, v2, :cond_5c

    .line 559
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzlk;->zzd(Lcom/google/android/gms/internal/ads/zzpk;)Lcom/google/android/gms/internal/ads/zzmc$zza;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 561
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    .line 563
    :cond_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6e

    new-instance p0, Lcom/google/android/gms/internal/ads/zzmc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_68
    add-int/lit8 v3, v3, -0x8

    .line 565
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    goto :goto_2a

    :cond_6e
    return-object v0

    :cond_6f
    add-int/lit8 v2, v2, -0x8

    .line 569
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    goto :goto_b

    :cond_75
    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzpk;I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzpk;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 572
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbo(I)V

    const/4 p1, 0x1

    .line 573
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 574
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzc(Lcom/google/android/gms/internal/ads/zzpk;)I

    const/4 v0, 0x2

    .line 575
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 576
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1d

    .line 578
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    :cond_1d
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_28

    .line 580
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedShort()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    :cond_28
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-eqz v1, :cond_30

    .line 582
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 583
    :cond_30
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 584
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzc(Lcom/google/android/gms/internal/ads/zzpk;)I

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-eq v0, v2, :cond_80

    const/16 v2, 0x21

    if-eq v0, v2, :cond_7d

    const/16 v2, 0x23

    if-eq v0, v2, :cond_7a

    const/16 v2, 0x40

    if-eq v0, v2, :cond_77

    const/16 v2, 0x6b

    if-eq v0, v2, :cond_70

    const/16 v2, 0xa5

    if-eq v0, v2, :cond_6d

    const/16 v2, 0xa6

    if-eq v0, v2, :cond_6a

    packed-switch v0, :pswitch_data_9a

    packed-switch v0, :pswitch_data_a4

    goto :goto_82

    :pswitch_5c
    const-string p0, "audio/vnd.dts.hd"

    .line 604
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_63
    const-string p0, "audio/vnd.dts"

    .line 602
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_6a
    const-string v1, "audio/eac3"

    goto :goto_82

    :cond_6d
    const-string v1, "audio/ac3"

    goto :goto_82

    :cond_70
    const-string p0, "audio/mpeg"

    .line 588
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_77
    :pswitch_77
    const-string v1, "audio/mp4a-latm"

    goto :goto_82

    :cond_7a
    const-string v1, "video/hevc"

    goto :goto_82

    :cond_7d
    const-string v1, "video/avc"

    goto :goto_82

    :cond_80
    const-string v1, "video/mp4v-es"

    :goto_82
    const/16 v0, 0xc

    .line 606
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zzbp(I)V

    .line 608
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzkw;->zzc(Lcom/google/android/gms/internal/ads/zzpk;)I

    move-result p1

    .line 609
    new-array v0, p1, [B

    const/4 v2, 0x0

    .line 610
    invoke-virtual {p0, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzpk;->zze([BII)V

    .line 611
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_9a
    .packed-switch 0x66
        :pswitch_77
        :pswitch_77
        :pswitch_77
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0xa9
        :pswitch_63
        :pswitch_5c
        :pswitch_5c
        :pswitch_63
    .end packed-switch
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzpk;)I
    .registers 4

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    .line 668
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzpk;->readUnsignedByte()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method
