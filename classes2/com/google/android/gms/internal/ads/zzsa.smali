.class public final Lcom/google/android/gms/internal/ads/zzsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzbua:I

.field private final zzbuc:Lcom/google/android/gms/internal/ads/zzrq;

.field private zzbuk:Ljava/lang/String;

.field private zzbul:Ljava/lang/String;

.field private final zzbum:Z

.field private final zzbun:I

.field private final zzbuo:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbua:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbum:Z

    const/16 p1, 0x40

    if-gt p2, p1, :cond_12

    if-gez p2, :cond_f

    goto :goto_12

    .line 6
    :cond_f
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbun:I

    goto :goto_14

    .line 5
    :cond_12
    :goto_12
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbun:I

    :goto_14
    if-gtz p3, :cond_1a

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbuo:I

    goto :goto_1c

    .line 9
    :cond_1a
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbuo:I

    .line 10
    :goto_1c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrx;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbun:I

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzrx;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsa;->zzbuc:Lcom/google/android/gms/internal/ads/zzrq;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzrn;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzrz;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzrz;-><init>(Lcom/google/android/gms/internal/ads/zzsa;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    .line 14
    :goto_12
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, ""

    if-ge v4, v5, :cond_117

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrn;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzrn;->zzmr()I

    move-result v5

    move-object/from16 v7, p1

    .line 16
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v8, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {v5, v8}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v5

    .line 17
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "\n"

    .line 19
    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 20
    array-length v8, v5

    if-eqz v8, :cond_110

    const/4 v8, 0x0

    .line 21
    :goto_42
    array-length v10, v5

    if-ge v8, v10, :cond_110

    .line 22
    aget-object v10, v5, v8

    const-string v11, "\'"

    .line 23
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_aa

    .line 26
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v13, 0x0

    :goto_57
    add-int/lit8 v14, v12, 0x2

    .line 27
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-gt v14, v15, :cond_9d

    .line 28
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v3, 0x27

    if-ne v15, v3, :cond_9a

    add-int/lit8 v3, v12, -0x1

    .line 29
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v13, 0x20

    if-eq v3, v13, :cond_94

    add-int/lit8 v3, v12, 0x1

    .line 30
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v9, 0x73

    if-eq v15, v9, :cond_83

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v9, 0x53

    if-ne v3, v9, :cond_94

    .line 31
    :cond_83
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v14, v3, :cond_8f

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v13, :cond_94

    .line 32
    :cond_8f
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move v12, v14

    goto :goto_97

    .line 34
    :cond_94
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_97
    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x1

    :goto_9b
    add-int/2addr v12, v3

    goto :goto_57

    :cond_9d
    if-eqz v13, :cond_a4

    .line 38
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    :cond_a4
    const/4 v3, 0x0

    :goto_a5
    if-eqz v3, :cond_aa

    .line 43
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbul:Ljava/lang/String;

    goto :goto_ab

    :cond_aa
    move-object v3, v10

    :goto_ab
    const/4 v9, 0x1

    .line 44
    invoke-static {v3, v9}, Lcom/google/android/gms/internal/ads/zzru;->zze(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 45
    array-length v10, v3

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbuo:I

    if-lt v10, v11, :cond_10c

    const/4 v10, 0x0

    .line 46
    :goto_b6
    array-length v11, v3

    if-ge v10, v11, :cond_102

    move-object v12, v6

    const/4 v11, 0x0

    .line 49
    :goto_bb
    iget v13, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbuo:I

    if-ge v11, v13, :cond_f0

    add-int v13, v10, v11

    .line 50
    array-length v14, v3

    if-lt v13, v14, :cond_c6

    const/4 v11, 0x0

    goto :goto_f1

    :cond_c6
    if-lez v11, :cond_d2

    .line 54
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v14, " "

    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 55
    :cond_d2
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aget-object v13, v3, v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_e7

    invoke-virtual {v12, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ed

    :cond_e7
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :goto_ed
    add-int/lit8 v11, v11, 0x1

    goto :goto_bb

    :cond_f0
    const/4 v11, 0x1

    :goto_f1
    if-eqz v11, :cond_102

    .line 58
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v11

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbua:I

    if-lt v11, v12, :cond_ff

    goto :goto_10a

    :cond_ff
    add-int/lit8 v10, v10, 0x1

    goto :goto_b6

    .line 62
    :cond_102
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbua:I

    if-lt v3, v10, :cond_10c

    :goto_10a
    const/4 v9, 0x0

    goto :goto_111

    :cond_10c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_42

    :cond_110
    const/4 v9, 0x1

    :goto_111
    if-eqz v9, :cond_117

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    .line 68
    :cond_117
    new-instance v3, Lcom/google/android/gms/internal/ads/zzrr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzrr;-><init>()V

    .line 69
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbuk:Ljava/lang/String;

    .line 70
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 71
    :try_start_12e
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsa;->zzbuc:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzrq;->zzbu(Ljava/lang/String;)[B

    move-result-object v2

    .line 72
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzrr;->write([B)V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_137} :catch_138

    goto :goto_122

    :catch_138
    move-exception v0

    const-string v2, "Error while writing hash to byteStream"

    .line 75
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    :cond_13e
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzrr;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
