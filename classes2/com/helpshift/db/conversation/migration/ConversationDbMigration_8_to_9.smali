.class public Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;
.super Ljava/lang/Object;
.source "ConversationDbMigration_8_to_9.java"

# interfaces
.implements Lcom/helpshift/db/base/IMigrator;


# instance fields
.field private ADD_ACID_COLUMN_TO_CONVERSATION_TABLE:Ljava/lang/String;

.field private GET_ALL_CONVERSATION_QUERY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Helpshift_dbMigrate8_9"

    .line 18
    iput-object v0, p0, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->TAG:Ljava/lang/String;

    const-string v0, "ALTER TABLE issues ADD COLUMN acid TEXT ;"

    .line 20
    iput-object v0, p0, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->ADD_ACID_COLUMN_TO_CONVERSATION_TABLE:Ljava/lang/String;

    const-string v0, "SELECT _id , server_id , pre_conv_server_id FROM issues ;"

    .line 24
    iput-object v0, p0, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->GET_ALL_CONVERSATION_QUERY:Ljava/lang/String;

    return-void
.end method

.method private migrateData(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->GET_ALL_CONVERSATION_QUERY:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 43
    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_49

    :cond_12
    const-string v2, "_id"

    .line 45
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "server_id"

    .line 46
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pre_conv_server_id"

    .line 48
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-static {v3}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-static {v4}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_43
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_51
    .catchall {:try_start_c .. :try_end_47} :catchall_4f

    if-nez v2, :cond_12

    :cond_49
    if-eqz v1, :cond_5c

    .line 60
    :goto_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    :catchall_4f
    move-exception p1

    goto :goto_71

    :catch_51
    move-exception v2

    :try_start_52
    const-string v3, "Helpshift_dbMigrate8_9"

    const-string v4, "Failed to read db conversations"

    .line 56
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_4f

    if-eqz v1, :cond_5c

    goto :goto_4b

    .line 65
    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 66
    invoke-direct {p0, v1, p1}, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->updateAcidValueForConversation(Ljava/lang/Long;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_60

    :cond_70
    return-void

    :goto_71
    if-eqz v1, :cond_76

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_76
    throw p1

    return-void
.end method

.method private migrateTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 36
    iget-object v0, p0, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->ADD_ACID_COLUMN_TO_CONVERSATION_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private updateAcidValueForConversation(Ljava/lang/Long;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 71
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "acid"

    .line 73
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const-string p1, "_id = ?"

    const-string v2, "issues"

    .line 77
    invoke-virtual {p2, v2, v1, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public migrate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->migrateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/helpshift/db/conversation/migration/ConversationDbMigration_8_to_9;->migrateData(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
