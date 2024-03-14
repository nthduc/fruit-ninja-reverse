.class public final Lcom/google/android/gms/internal/ads/zzcsj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# direct methods
.method public static zza(Landroid/database/sqlite/SQLiteDatabase;I)I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    return v0

    .line 19
    :cond_5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsj;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object p0

    .line 21
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1d

    .line 22
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const-string p1, "value"

    .line 23
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 24
    :cond_1d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0
.end method

.method public static zza(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/ads/zzua$zzo$zza;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "serialized_proto_data"

    .line 2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "offline_signal_contents"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    .line 4
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 5
    :goto_17
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 7
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 8
    :try_start_25
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzua$zzo$zza;->zzg([B)Lcom/google/android/gms/internal/ads/zzua$zzo$zza;

    move-result-object v2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Lcom/google/android/gms/internal/ads/zzekj; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_17

    :catch_2d
    move-exception v2

    const-string v3, "Unable to deserialize proto from offline signals database:"

    .line 12
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzekj;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    goto :goto_17

    .line 15
    :cond_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public static zzb(Landroid/database/sqlite/SQLiteDatabase;I)J
    .registers 6

    const/4 p1, 0x2

    .line 26
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzcsj;->zzc(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object p0

    .line 28
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const-wide/16 v0, 0x0

    if-lez p1, :cond_1b

    .line 29
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const-string p1, "value"

    .line 30
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 31
    :cond_1b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0
.end method

.method private static zzc(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .registers 11

    const-string v0, "value"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    .line 35
    new-array v5, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    goto :goto_20

    :cond_12
    const-string p1, "last_successful_request_time"

    aput-object p1, v5, v1

    goto :goto_20

    :cond_17
    const-string p1, "total_requests"

    aput-object p1, v5, v1

    goto :goto_20

    :cond_1c
    const-string p1, "failed_requests"

    aput-object p1, v5, v1

    :goto_20
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "statistic_name = ?"

    const-string v2, "offline_signal_statistics"

    move-object v1, p0

    .line 42
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
