.class public Lcom/helpshift/storage/KeyValueDbStorage;
.super Ljava/lang/Object;
.source "KeyValueDbStorage.java"

# interfaces
.implements Lcom/helpshift/storage/KeyValueStorage;


# static fields
.field private static final TAG:Ljava/lang/String; = "HS_KeyValueDB"


# instance fields
.field private helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 12

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 125
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v5, "key=?"

    const/4 v0, 0x1

    .line 127
    new-array v6, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const-string v3, "key_value_store"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 128
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_39

    .line 129
    :try_start_20
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_36

    if-eqz v2, :cond_30

    .line 131
    :try_start_26
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/helpshift/util/ByteArrayUtil;->toObject([B)Ljava/lang/Object;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_36

    goto :goto_30

    :catch_2f
    nop

    :cond_30
    :goto_30
    if-eqz p1, :cond_35

    .line 140
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_35
    return-object v1

    :catchall_36
    move-exception v0

    move-object v1, p1

    goto :goto_3a

    :catchall_39
    move-exception v0

    :goto_3a
    if-eqz v1, :cond_3f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_3f
    throw v0
.end method

.method public removeAllKeys()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "key_value_store"

    .line 161
    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .registers 5

    .line 148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    .line 154
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "key=?"

    const-string v2, "key_value_store"

    .line 155
    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 10

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_52

    if-nez p2, :cond_a

    goto :goto_52

    .line 34
    :cond_a
    iget-object v0, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "key=?"

    const/4 v3, 0x1

    .line 37
    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 38
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "key"

    .line 39
    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    const-string p1, "value"

    .line 41
    invoke-static {p2}, Lcom/helpshift/util/ByteArrayUtil;->toByteArray(Ljava/lang/Object;)[B

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_4a

    const-string p1, "key_value_store"

    .line 48
    invoke-static {v0, p1, v2, v4}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 49
    invoke-virtual {v0, p1, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_41

    :cond_36
    const/4 p2, 0x0

    .line 52
    invoke-virtual {v0, p1, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_42

    :goto_41
    return v3

    .line 54
    :cond_42
    new-instance p1, Landroid/database/sqlite/SQLiteException;

    const-string p2, "DB insert failed and return -1"

    invoke-direct {p1, p2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4a
    move-exception p1

    const-string p2, "HS_KeyValueDB"

    const-string v0, "Error in serializing value"

    .line 44
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    return v1
.end method

.method public setKeyValues(Ljava/util/Map;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9a

    .line 63
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_9a

    .line 67
    :cond_b
    iget-object v1, p0, Lcom/helpshift/storage/KeyValueDbStorage;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "key=?"

    const-string v3, "INSERT INTO key_value_store VALUES (?,?)"

    .line 69
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const-string v4, "UPDATE key_value_store SET value = ? WHERE key = ?"

    .line 73
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 78
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 79
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_93

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2a

    .line 82
    :try_start_49
    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v7, v0

    .line 83
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/helpshift/util/ByteArrayUtil;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v9, "key_value_store"

    .line 85
    invoke-static {v1, v9, v2, v7}, Lcom/helpshift/util/DatabaseUtils;->exists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x2

    if-eqz v7, :cond_77

    .line 86
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v9, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 87
    invoke-virtual {v4, v6, v8}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 88
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 89
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    goto :goto_2a

    .line 92
    :cond_77
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 93
    invoke-virtual {v3, v9, v8}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 94
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 95
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_89} :catch_8a

    goto :goto_2a

    :catch_8a
    move-exception v5

    const-string v6, "HS_KeyValueDB"

    const-string v7, "Error in serializing value"

    .line 99
    invoke-static {v6, v7, v5}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2a

    .line 105
    :cond_93
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v6

    :cond_9a
    :goto_9a
    return v0
.end method
