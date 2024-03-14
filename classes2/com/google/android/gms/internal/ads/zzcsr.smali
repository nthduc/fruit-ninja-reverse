.class final synthetic Lcom/google/android/gms/internal/ads/zzcsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzgnj:Landroid/database/sqlite/SQLiteDatabase;

.field private final zzgnk:Lcom/google/android/gms/internal/ads/zzbbu;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbu;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgnj:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgnk:Lcom/google/android/gms/internal/ads/zzbbu;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    const-string v0, "url"

    .line 1
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgnj:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzdgm:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzcsr;->zzgnk:Lcom/google/android/gms/internal/ads/zzbbu;

    .line 3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v12, 0x1

    .line 4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "event_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    new-array v3, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v1, v3, v13

    const-string v14, "offline_buffered_pings"

    const-string v1, "gws_query_id = ?"

    .line 7
    invoke-virtual {v10, v14, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 11
    :try_start_26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x19

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "event_state = 1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "timestamp ASC"

    const-string v2, "offline_buffered_pings"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    .line 15
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 17
    :goto_4e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 18
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_61

    .line 20
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 21
    aput-object v4, v2, v3

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 23
    :cond_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "event_state = ?"

    .line 28
    new-array v1, v12, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    .line 29
    invoke-virtual {v10, v14, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_77
    .catchall {:try_start_26 .. :try_end_77} :catchall_86

    .line 31
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 35
    array-length v0, v2

    :goto_7b
    if-ge v13, v0, :cond_85

    aget-object v1, v2, v13

    .line 36
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzbbu;->zzes(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7b

    :cond_85
    return-void

    :catchall_86
    move-exception v0

    .line 33
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 34
    throw v0

    return-void
.end method
