.class public final Lcom/google/android/gms/internal/ads/zzbac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzece:[Ljava/lang/String;

.field private final zzecf:[D

.field private final zzecg:[D

.field private final zzech:[I

.field private zzeci:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbah;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzb(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzece:[Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zza(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbac;->zzg(Ljava/util/List;)[D

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecf:[D

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzc(Lcom/google/android/gms/internal/ads/zzbah;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbac;->zzg(Ljava/util/List;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecg:[D

    .line 6
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzech:[I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeci:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbah;Lcom/google/android/gms/internal/ads/zzbaf;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbac;-><init>(Lcom/google/android/gms/internal/ads/zzbah;)V

    return-void
.end method

.method private static zzg(Ljava/util/List;)[D
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 10
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 11
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method


# virtual methods
.method public final zza(D)V
    .registers 7

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeci:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeci:I

    const/4 v0, 0x0

    .line 15
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecg:[D

    array-length v2, v1

    if-ge v0, v2, :cond_2d

    .line 16
    aget-wide v2, v1, v0

    cmpg-double v1, v2, p1

    if-gtz v1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecf:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_22

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzech:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 18
    :cond_22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecg:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2d
    return-void
.end method

.method public final zzyh()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbae;",
            ">;"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzece:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 22
    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzece:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_35

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbae;

    aget-object v5, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecg:[D

    aget-wide v6, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzecf:[D

    aget-wide v8, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzech:[I

    aget v4, v2, v1

    int-to-double v10, v4

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbac;->zzeci:I

    int-to-double v12, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v12

    aget v12, v2, v1

    move-object v4, v3

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzbae;-><init>(Ljava/lang/String;DDDI)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_35
    return-object v0
.end method
