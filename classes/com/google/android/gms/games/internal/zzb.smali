.class public final Lcom/google/android/gms/games/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@20.0.1"


# direct methods
.method public static zza(Landroid/os/Bundle;)I
    .registers 13
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 89
    :cond_4
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 92
    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 95
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_1e
    if-ge v4, v2, :cond_d0

    aget-object v6, v1, v4

    mul-int/lit8 v5, v5, 0x1f

    .line 97
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_cc

    .line 99
    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_37

    .line 100
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v6

    :goto_34
    add-int/2addr v5, v6

    goto/16 :goto_cc

    .line 101
    :cond_37
    instance-of v7, v6, [B

    if-eqz v7, :cond_42

    .line 102
    check-cast v6, [B

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([B)I

    move-result v6

    goto :goto_34

    .line 103
    :cond_42
    instance-of v7, v6, [C

    if-eqz v7, :cond_4d

    .line 104
    check-cast v6, [C

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([C)I

    move-result v6

    goto :goto_34

    .line 105
    :cond_4d
    instance-of v7, v6, [S

    if-eqz v7, :cond_58

    .line 106
    check-cast v6, [S

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([S)I

    move-result v6

    goto :goto_34

    .line 107
    :cond_58
    instance-of v7, v6, [F

    if-eqz v7, :cond_63

    .line 108
    check-cast v6, [F

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([F)I

    move-result v6

    goto :goto_34

    .line 109
    :cond_63
    instance-of v7, v6, [Ljava/lang/CharSequence;

    if-eqz v7, :cond_6e

    .line 110
    check-cast v6, [Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v6

    goto :goto_34

    .line 111
    :cond_6e
    instance-of v7, v6, [Ljava/lang/Object;

    if-eqz v7, :cond_95

    .line 112
    check-cast v6, [Ljava/lang/Object;

    .line 114
    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_77
    if-ge v8, v7, :cond_93

    aget-object v10, v6, v8

    mul-int/lit8 v9, v9, 0x1f

    .line 116
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_89

    .line 117
    check-cast v10, Landroid/os/Bundle;

    invoke-static {v10}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v10

    :goto_87
    add-int/2addr v9, v10

    goto :goto_90

    :cond_89
    if-eqz v10, :cond_90

    .line 119
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_87

    :cond_90
    :goto_90
    add-int/lit8 v8, v8, 0x1

    goto :goto_77

    :cond_93
    add-int/2addr v5, v9

    goto :goto_cc

    .line 123
    :cond_95
    instance-of v7, v6, Landroid/util/SparseArray;

    if-eqz v7, :cond_c6

    .line 124
    check-cast v6, Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    :goto_a1
    if-ge v8, v7, :cond_93

    mul-int/lit8 v9, v9, 0x1f

    .line 128
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x1f

    .line 129
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    .line 130
    instance-of v11, v10, Landroid/os/Bundle;

    if-eqz v11, :cond_bc

    .line 131
    check-cast v10, Landroid/os/Bundle;

    invoke-static {v10}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;)I

    move-result v10

    :goto_ba
    add-int/2addr v9, v10

    goto :goto_c3

    :cond_bc
    if-eqz v10, :cond_c3

    .line 133
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_ba

    :cond_c3
    :goto_c3
    add-int/lit8 v8, v8, 0x1

    goto :goto_a1

    .line 137
    :cond_c6
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto/16 :goto_34

    :cond_cc
    :goto_cc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1e

    :cond_d0
    return v5
.end method

.method public static zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .registers 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_153

    if-nez p1, :cond_b

    goto/16 :goto_153

    .line 5
    :cond_b
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_16

    return v1

    .line 7
    :cond_16
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    return v1

    .line 10
    :cond_25
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 12
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v4, :cond_42

    if-eqz v3, :cond_29

    return v1

    .line 16
    :cond_42
    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_55

    .line 17
    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_54

    check-cast v4, Landroid/os/Bundle;

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v4, v3}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_54
    return v1

    .line 19
    :cond_55
    instance-of v5, v4, [B

    if-eqz v5, :cond_68

    .line 20
    instance-of v5, v3, [B

    if-eqz v5, :cond_67

    check-cast v4, [B

    check-cast v3, [B

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_67
    return v1

    .line 22
    :cond_68
    instance-of v5, v4, [C

    if-eqz v5, :cond_7b

    .line 23
    instance-of v5, v3, [C

    if-eqz v5, :cond_7a

    check-cast v4, [C

    check-cast v3, [C

    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_7a
    return v1

    .line 25
    :cond_7b
    instance-of v5, v4, [S

    if-eqz v5, :cond_8e

    .line 26
    instance-of v5, v3, [S

    if-eqz v5, :cond_8d

    check-cast v4, [S

    check-cast v3, [S

    .line 27
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_8d
    return v1

    .line 29
    :cond_8e
    instance-of v5, v4, [F

    if-eqz v5, :cond_a1

    .line 30
    instance-of v5, v3, [F

    if-eqz v5, :cond_a0

    check-cast v4, [F

    check-cast v3, [F

    .line 31
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_a0
    return v1

    .line 33
    :cond_a1
    instance-of v5, v4, [Ljava/lang/CharSequence;

    if-eqz v5, :cond_b4

    .line 34
    instance-of v5, v3, [Ljava/lang/CharSequence;

    if-eqz v5, :cond_b3

    check-cast v4, [Ljava/lang/CharSequence;

    check-cast v3, [Ljava/lang/CharSequence;

    .line 35
    invoke-static {v4, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    :cond_b3
    return v1

    .line 37
    :cond_b4
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_f5

    .line 38
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_f4

    check-cast v4, [Landroid/os/Parcelable;

    check-cast v3, [Landroid/os/Parcelable;

    if-eq v4, v3, :cond_f1

    .line 41
    array-length v5, v4

    .line 42
    array-length v6, v3

    if-eq v6, v5, :cond_c8

    :cond_c6
    :goto_c6
    const/4 v3, 0x0

    goto :goto_f2

    :cond_c8
    const/4 v6, 0x0

    :goto_c9
    if-ge v6, v5, :cond_f1

    .line 45
    aget-object v7, v4, v6

    .line 46
    aget-object v8, v3, v6

    if-nez v7, :cond_d4

    if-eqz v8, :cond_ee

    goto :goto_c6

    .line 50
    :cond_d4
    instance-of v9, v7, Landroid/os/Bundle;

    if-eqz v9, :cond_e7

    .line 51
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_c6

    check-cast v7, Landroid/os/Bundle;

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v7, v8}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_ee

    goto :goto_c6

    .line 53
    :cond_e7
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ee

    goto :goto_c6

    :cond_ee
    add-int/lit8 v6, v6, 0x1

    goto :goto_c9

    :cond_f1
    const/4 v3, 0x1

    :goto_f2
    if-nez v3, :cond_29

    :cond_f4
    return v1

    .line 59
    :cond_f5
    instance-of v5, v4, Landroid/util/SparseArray;

    if-eqz v5, :cond_14b

    .line 60
    instance-of v5, v3, Landroid/util/SparseArray;

    if-eqz v5, :cond_14a

    check-cast v4, Landroid/util/SparseArray;

    check-cast v3, Landroid/util/SparseArray;

    if-eq v4, v3, :cond_147

    .line 63
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 64
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-eq v6, v5, :cond_10f

    :cond_10d
    :goto_10d
    const/4 v3, 0x0

    goto :goto_148

    :cond_10f
    const/4 v6, 0x0

    :goto_110
    if-ge v6, v5, :cond_147

    .line 67
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-eq v7, v8, :cond_11d

    goto :goto_10d

    .line 69
    :cond_11d
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    .line 70
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_12a

    if-eqz v8, :cond_144

    goto :goto_10d

    .line 74
    :cond_12a
    instance-of v9, v7, Landroid/os/Bundle;

    if-eqz v9, :cond_13d

    .line 75
    instance-of v9, v8, Landroid/os/Bundle;

    if-eqz v9, :cond_10d

    check-cast v7, Landroid/os/Bundle;

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v7, v8}, Lcom/google/android/gms/games/internal/zzb;->zza(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_144

    goto :goto_10d

    .line 77
    :cond_13d
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_144

    goto :goto_10d

    :cond_144
    add-int/lit8 v6, v6, 0x1

    goto :goto_110

    :cond_147
    const/4 v3, 0x1

    :goto_148
    if-nez v3, :cond_29

    :cond_14a
    return v1

    .line 83
    :cond_14b
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    :cond_152
    return v0

    :cond_153
    :goto_153
    return v1
.end method
