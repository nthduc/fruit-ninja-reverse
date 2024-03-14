.class public abstract Lcom/google/android/gms/internal/ads/zzoa;
.super Lcom/google/android/gms/internal/ads/zzog;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private zzaif:I

.field private final zzbhr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zznp;",
            "Lcom/google/android/gms/internal/ads/zzoc;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zzbhs:Landroid/util/SparseBooleanArray;

.field private zzbht:Lcom/google/android/gms/internal/ads/zznz;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzog;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhr:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhs:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzaif:I

    return-void
.end method


# virtual methods
.method public final zza([Lcom/google/android/gms/internal/ads/zzhw;Lcom/google/android/gms/internal/ads/zznp;)Lcom/google/android/gms/internal/ads/zzoi;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 11
    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 12
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [[Lcom/google/android/gms/internal/ads/zznq;

    .line 13
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v10, v5, [[[I

    const/4 v6, 0x0

    .line 14
    :goto_16
    array-length v7, v4

    if-ge v6, v7, :cond_28

    .line 15
    iget v7, v2, Lcom/google/android/gms/internal/ads/zznp;->length:I

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zznq;

    aput-object v7, v4, v6

    .line 16
    iget v7, v2, Lcom/google/android/gms/internal/ads/zznp;->length:I

    new-array v7, v7, [[I

    aput-object v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 19
    :cond_28
    array-length v6, v1

    new-array v9, v6, [I

    const/4 v6, 0x0

    .line 20
    :goto_2c
    array-length v7, v9

    if-ge v6, v7, :cond_3a

    .line 21
    aget-object v7, v1, v6

    invoke-interface {v7}, Lcom/google/android/gms/internal/ads/zzhw;->zzeg()I

    move-result v7

    aput v7, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_3a
    const/4 v6, 0x0

    .line 25
    :goto_3b
    iget v7, v2, Lcom/google/android/gms/internal/ads/zznp;->length:I

    if-ge v6, v7, :cond_a0

    .line 26
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zznp;->zzbd(I)Lcom/google/android/gms/internal/ads/zznq;

    move-result-object v7

    .line 28
    array-length v8, v1

    move v12, v8

    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 30
    :goto_47
    array-length v13, v1

    if-ge v8, v13, :cond_6b

    .line 31
    aget-object v13, v1, v8

    move v14, v12

    move v12, v11

    const/4 v11, 0x0

    .line 32
    :goto_4f
    iget v15, v7, Lcom/google/android/gms/internal/ads/zznq;->length:I

    if-ge v11, v15, :cond_66

    .line 33
    invoke-virtual {v7, v11}, Lcom/google/android/gms/internal/ads/zznq;->zzbe(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v15

    invoke-interface {v13, v15}, Lcom/google/android/gms/internal/ads/zzhw;->zza(Lcom/google/android/gms/internal/ads/zzho;)I

    move-result v15

    const/4 v5, 0x3

    and-int/2addr v15, v5

    if-le v15, v12, :cond_63

    if-eq v15, v5, :cond_6c

    move v14, v8

    move v12, v15

    :cond_63
    add-int/lit8 v11, v11, 0x1

    goto :goto_4f

    :cond_66
    add-int/lit8 v8, v8, 0x1

    move v11, v12

    move v12, v14

    goto :goto_47

    :cond_6b
    move v8, v12

    .line 42
    :cond_6c
    array-length v5, v1

    if-ne v8, v5, :cond_74

    .line 43
    iget v5, v7, Lcom/google/android/gms/internal/ads/zznq;->length:I

    new-array v5, v5, [I

    goto :goto_8d

    :cond_74
    aget-object v5, v1, v8

    .line 44
    iget v11, v7, Lcom/google/android/gms/internal/ads/zznq;->length:I

    new-array v11, v11, [I

    const/4 v12, 0x0

    .line 45
    :goto_7b
    iget v13, v7, Lcom/google/android/gms/internal/ads/zznq;->length:I

    if-ge v12, v13, :cond_8c

    .line 46
    invoke-virtual {v7, v12}, Lcom/google/android/gms/internal/ads/zznq;->zzbe(I)Lcom/google/android/gms/internal/ads/zzho;

    move-result-object v13

    invoke-interface {v5, v13}, Lcom/google/android/gms/internal/ads/zzhw;->zza(Lcom/google/android/gms/internal/ads/zzho;)I

    move-result v13

    aput v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_7b

    :cond_8c
    move-object v5, v11

    .line 50
    :goto_8d
    aget v11, v3, v8

    .line 51
    aget-object v12, v4, v8

    aput-object v7, v12, v11

    .line 52
    aget-object v7, v10, v8

    aput-object v5, v7, v11

    .line 53
    aget v5, v3, v8

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 55
    :cond_a0
    array-length v5, v1

    new-array v8, v5, [Lcom/google/android/gms/internal/ads/zznp;

    .line 56
    array-length v5, v1

    new-array v7, v5, [I

    const/4 v5, 0x0

    .line 57
    :goto_a7
    array-length v6, v1

    if-ge v5, v6, :cond_d0

    .line 58
    aget v6, v3, v5

    .line 59
    new-instance v11, Lcom/google/android/gms/internal/ads/zznp;

    aget-object v12, v4, v5

    .line 60
    invoke-static {v12, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/android/gms/internal/ads/zznq;

    invoke-direct {v11, v12}, Lcom/google/android/gms/internal/ads/zznp;-><init>([Lcom/google/android/gms/internal/ads/zznq;)V

    aput-object v11, v8, v5

    .line 61
    aget-object v11, v10, v5

    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    aput-object v6, v10, v5

    .line 62
    aget-object v6, v1, v5

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzhw;->getTrackType()I

    move-result v6

    aput v6, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a7

    .line 64
    :cond_d0
    array-length v5, v1

    aget v3, v3, v5

    .line 65
    new-instance v11, Lcom/google/android/gms/internal/ads/zznp;

    array-length v5, v1

    aget-object v4, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/internal/ads/zznq;

    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zznp;-><init>([Lcom/google/android/gms/internal/ads/zznq;)V

    .line 66
    invoke-virtual {v0, v1, v8, v10}, Lcom/google/android/gms/internal/ads/zzoa;->zza([Lcom/google/android/gms/internal/ads/zzhw;[Lcom/google/android/gms/internal/ads/zznp;[[[I)[Lcom/google/android/gms/internal/ads/zzob;

    move-result-object v3

    const/4 v4, 0x0

    .line 67
    :goto_e6
    array-length v5, v1

    const/4 v12, 0x0

    if-ge v4, v5, :cond_114

    .line 68
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 69
    aput-object v12, v3, v4

    goto :goto_10b

    .line 70
    :cond_f5
    aget-object v5, v8, v4

    .line 71
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhr:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_102

    goto :goto_109

    .line 72
    :cond_102
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/google/android/gms/internal/ads/zzoc;

    :goto_109
    if-nez v12, :cond_10e

    :goto_10b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e6

    .line 74
    :cond_10e
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-direct {v1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v1

    .line 76
    :cond_114
    new-instance v4, Lcom/google/android/gms/internal/ads/zznz;

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zznz;-><init>([I[Lcom/google/android/gms/internal/ads/zznp;[I[[[ILcom/google/android/gms/internal/ads/zznp;)V

    .line 77
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzhz;

    const/4 v6, 0x0

    .line 78
    :goto_11e
    array-length v7, v1

    if-ge v6, v7, :cond_12e

    .line 79
    aget-object v7, v3, v6

    if-eqz v7, :cond_128

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhz;->zzaie:Lcom/google/android/gms/internal/ads/zzhz;

    goto :goto_129

    :cond_128
    move-object v7, v12

    :goto_129
    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11e

    .line 81
    :cond_12e
    new-instance v1, Lcom/google/android/gms/internal/ads/zzoi;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzod;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzod;-><init>([Lcom/google/android/gms/internal/ads/zzob;)V

    invoke-direct {v1, v2, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzoi;-><init>(Lcom/google/android/gms/internal/ads/zznp;Lcom/google/android/gms/internal/ads/zzod;Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzhz;)V

    return-object v1
.end method

.method protected abstract zza([Lcom/google/android/gms/internal/ads/zzhw;[Lcom/google/android/gms/internal/ads/zznp;[[[I)[Lcom/google/android/gms/internal/ads/zzob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhd;
        }
    .end annotation
.end method

.method public final zzd(Ljava/lang/Object;)V
    .registers 2

    .line 82
    check-cast p1, Lcom/google/android/gms/internal/ads/zznz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzbht:Lcom/google/android/gms/internal/ads/zznz;

    return-void
.end method

.method public final zzf(IZ)V
    .registers 4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_9

    return-void

    .line 8
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzoa;->zzbhs:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzog;->invalidate()V

    return-void
.end method
