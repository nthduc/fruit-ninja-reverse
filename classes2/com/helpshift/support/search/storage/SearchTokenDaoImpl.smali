.class public Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;
.super Ljava/lang/Object;
.source "SearchTokenDaoImpl.java"

# interfaces
.implements Lcom/helpshift/support/search/SearchTokenDao;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/helpshift/support/search/storage/SearchTokenDaoImpl$LazyHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_SearchToknDao"


# instance fields
.field private final dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final scoreMapKeyValueStringSeparator:C

.field private final scoreMapStringSeparator:C


# direct methods
.method constructor <init>()V
    .registers 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x24

    .line 25
    iput-char v0, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->scoreMapStringSeparator:C

    const/16 v0, 0x3a

    .line 26
    iput-char v0, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->scoreMapKeyValueStringSeparator:C

    .line 29
    new-instance v0, Lcom/helpshift/support/db/search/SearchDBHelper;

    invoke-static {}, Lcom/helpshift/util/HelpshiftContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/helpshift/support/db/search/SearchDatabaseContract;

    invoke-direct {v2}, Lcom/helpshift/support/db/search/SearchDatabaseContract;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/helpshift/support/db/search/SearchDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/db/base/DatabaseContract;)V

    iput-object v0, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private convertScoreMapToScoreString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    goto :goto_23

    :cond_1e
    const/16 v3, 0x24

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :goto_23
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 140
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private convertScoreStringToScoreMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    :cond_8
    const-string v1, "[$]"

    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    :goto_10
    array-length v3, p1

    if-ge v2, v3, :cond_4c

    .line 150
    aget-object v3, p1, v2

    if-eqz v3, :cond_49

    .line 151
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_49

    const-string v4, "[:]"

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 153
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_49

    .line 154
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    .line 155
    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_4c
    return-object v0
.end method

.method public static getInstance()Lcom/helpshift/support/search/SearchTokenDao;
    .registers 1

    .line 33
    sget-object v0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl$LazyHolder;->INSTANCE:Lcom/helpshift/support/search/SearchTokenDao;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 5

    .line 115
    iget-object v0, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "search_token_table"

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_12
    .catchall {:try_start_3 .. :try_end_f} :catchall_10

    goto :goto_1a

    :catchall_10
    move-exception v1

    goto :goto_1c

    :catch_12
    move-exception v1

    :try_start_13
    const-string v2, "Helpshift_SearchToknDao"

    const-string v3, "Error occurred when calling clear method"

    .line 121
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    :goto_1a
    monitor-exit v0

    return-void

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_10

    throw v1
.end method

.method public get(Ljava/lang/String;)Lcom/helpshift/support/search/SearchTokenDto;
    .registers 14
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    monitor-enter v0

    const/4 v1, 0x0

    .line 83
    :try_start_4
    iget-object v2, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v2, "token"

    const-string v4, "type"

    const-string v5, "score"

    .line 84
    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "search_token_table"

    const-string v6, "token=?"

    const/4 v2, 0x1

    .line 89
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 90
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_63
    .catchall {:try_start_4 .. :try_end_25} :catchall_5e

    .line 92
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_56

    .line 93
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "token"

    .line 94
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    .line 95
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "score"

    .line 96
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    invoke-direct {p0, v4}, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->convertScoreStringToScoreMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 98
    new-instance v5, Lcom/helpshift/support/search/SearchTokenDto;

    invoke-direct {v5, v2, v3, v4}, Lcom/helpshift/support/search/SearchTokenDto;-><init>(Ljava/lang/String;ILjava/util/Map;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_55} :catch_5c
    .catchall {:try_start_25 .. :try_end_55} :catchall_71

    move-object v1, v5

    :cond_56
    if-eqz p1, :cond_6f

    .line 106
    :goto_58
    :try_start_58
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_78

    goto :goto_6f

    :catch_5c
    move-exception v2

    goto :goto_65

    :catchall_5e
    move-exception p1

    move-object v11, v1

    move-object v1, p1

    move-object p1, v11

    goto :goto_72

    :catch_63
    move-exception v2

    move-object p1, v1

    :goto_65
    :try_start_65
    const-string v3, "Helpshift_SearchToknDao"

    const-string v4, "Error occurred when calling get method"

    .line 102
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_71

    if-eqz p1, :cond_6f

    goto :goto_58

    .line 109
    :cond_6f
    :goto_6f
    :try_start_6f
    monitor-exit v0

    return-object v1

    :catchall_71
    move-exception v1

    :goto_72
    if-eqz p1, :cond_77

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 108
    :cond_77
    throw v1

    :catchall_78
    move-exception p1

    .line 109
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_6f .. :try_end_7a} :catchall_78

    throw p1

    return-void
.end method

.method public save(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/support/search/SearchTokenDto;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 41
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/support/search/SearchTokenDto;

    .line 43
    iget-object v2, v1, Lcom/helpshift/support/search/SearchTokenDto;->scoreMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->convertScoreMapToScoreString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 44
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 45
    iget-object v4, v1, Lcom/helpshift/support/search/SearchTokenDto;->wordValue:Ljava/lang/String;

    const-string v5, "token"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget v1, v1, Lcom/helpshift/support/search/SearchTokenDto;->wordType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "type"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "score"

    .line 47
    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 51
    :cond_3e
    iget-object p1, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    monitor-enter p1

    const/4 v1, 0x0

    .line 53
    :try_start_42
    iget-object v2, p0, Lcom/helpshift/support/search/storage/SearchTokenDaoImpl;->dbHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_81
    .catchall {:try_start_42 .. :try_end_48} :catchall_7e

    .line 54
    :try_start_48
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "search_token_table"

    .line 56
    invoke-virtual {v2, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_4f

    .line 58
    :cond_61
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_64} :catch_7b
    .catchall {:try_start_48 .. :try_end_64} :catchall_79

    if-eqz v2, :cond_9b

    .line 65
    :try_start_66
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 66
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6f} :catch_70
    .catchall {:try_start_66 .. :try_end_6f} :catchall_a9

    goto :goto_9b

    :catch_70
    move-exception v0

    :try_start_71
    const-string v1, "Helpshift_SearchToknDao"

    const-string v2, "Error occurred when calling save method inside finally block"

    .line 70
    :goto_75
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_a9

    goto :goto_9b

    :catchall_79
    move-exception v0

    goto :goto_9d

    :catch_7b
    move-exception v0

    move-object v1, v2

    goto :goto_82

    :catchall_7e
    move-exception v0

    move-object v2, v1

    goto :goto_9d

    :catch_81
    move-exception v0

    :goto_82
    :try_start_82
    const-string v2, "Helpshift_SearchToknDao"

    const-string v3, "Error occurred when calling save method"

    .line 61
    invoke-static {v2, v3, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_7e

    if-eqz v1, :cond_9b

    .line 65
    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 66
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_95
    .catchall {:try_start_8b .. :try_end_94} :catchall_a9

    goto :goto_9b

    :catch_95
    move-exception v0

    :try_start_96
    const-string v1, "Helpshift_SearchToknDao"

    const-string v2, "Error occurred when calling save method inside finally block"

    goto :goto_75

    .line 73
    :cond_9b
    :goto_9b
    monitor-exit p1
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_a9

    return-void

    :goto_9d
    if-eqz v2, :cond_b3

    .line 65
    :try_start_9f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 66
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a8} :catch_ab
    .catchall {:try_start_9f .. :try_end_a8} :catchall_a9

    goto :goto_b3

    :catchall_a9
    move-exception v0

    goto :goto_b4

    :catch_ab
    move-exception v1

    :try_start_ac
    const-string v2, "Helpshift_SearchToknDao"

    const-string v3, "Error occurred when calling save method inside finally block"

    .line 70
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :cond_b3
    :goto_b3
    throw v0

    .line 73
    :goto_b4
    monitor-exit p1
    :try_end_b5
    .catchall {:try_start_ac .. :try_end_b5} :catchall_a9

    throw v0

    return-void
.end method
