.class public Lcom/helpshift/account/dao/UserDB;
.super Ljava/lang/Object;
.source "UserDB.java"


# static fields
.field private static final INT_TRUE:Ljava/lang/Integer;

.field private static final TAG:Ljava/lang/String; = "Helpshift_UserDB"

.field private static final WHERE_LOCAL_ID_IS:Ljava/lang/String; = "_id = ?"

.field private static instance:Lcom/helpshift/account/dao/UserDB;


# instance fields
.field private final userDBHelper:Lcom/helpshift/db/user/UserDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/helpshift/db/user/UserDBHelper;

    new-instance v1, Lcom/helpshift/db/user/UserDatabaseContract;

    invoke-direct {v1}, Lcom/helpshift/db/user/UserDatabaseContract;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/helpshift/db/user/UserDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/db/base/DatabaseContract;)V

    iput-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    return-void
.end method

.method private clearedUserDMtoContentValues(Lcom/helpshift/account/domainmodel/ClearedUserDM;)Landroid/content/ContentValues;
    .registers 5

    .line 346
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 347
    iget-object v1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->localId:Ljava/lang/Long;

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    iget-object v1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->identifier:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->authToken:Ljava/lang/String;

    const-string v2, "auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->deviceId:Ljava/lang/String;

    const-string v2, "deviceid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object p1, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->syncState:Lcom/helpshift/account/dao/ClearedUserSyncState;

    invoke-virtual {p1}, Lcom/helpshift/account/dao/ClearedUserSyncState;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "sync_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private cursorToClearedUserDM(Landroid/database/Cursor;)Lcom/helpshift/account/domainmodel/ClearedUserDM;
    .registers 11

    const-string v0, "_id"

    .line 309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v0, "identifier"

    .line 311
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "email"

    .line 312
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "deviceid"

    .line 313
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "auth_token"

    .line 314
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "sync_state"

    .line 317
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 316
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->intToClearedUserSyncState(I)Lcom/helpshift/account/dao/ClearedUserSyncState;

    move-result-object v8

    .line 319
    new-instance p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/account/domainmodel/ClearedUserDM;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/account/dao/ClearedUserSyncState;)V

    return-object p1
.end method

.method private cursorToLegacyProfile(Landroid/database/Cursor;)Lcom/helpshift/migration/legacyUser/LegacyProfile;
    .registers 9

    const-string v0, "identifier"

    .line 330
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "email"

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    .line 332
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "serverid"

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "migration_state"

    .line 336
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 335
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->intToMigrationState(I)Lcom/helpshift/migration/MigrationState;

    move-result-object v6

    .line 338
    new-instance p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/migration/legacyUser/LegacyProfile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/migration/MigrationState;)V

    return-object p1
.end method

.method private cursorToRedactionDetail(Landroid/database/Cursor;)Lcom/helpshift/redaction/RedactionDetail;
    .registers 6

    const-string v0, "user_local_id"

    .line 751
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "redaction_state"

    .line 754
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 753
    invoke-direct {p0, v2}, Lcom/helpshift/account/dao/UserDB;->intToRedactionState(I)Lcom/helpshift/redaction/RedactionState;

    move-result-object v2

    const-string v3, "redaction_type"

    .line 757
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 756
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->intToRedactionType(I)Lcom/helpshift/redaction/RedactionType;

    move-result-object p1

    .line 758
    new-instance v3, Lcom/helpshift/redaction/RedactionDetail;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/helpshift/redaction/RedactionDetail;-><init>(JLcom/helpshift/redaction/RedactionState;Lcom/helpshift/redaction/RedactionType;)V

    return-object v3
.end method

.method private cursorToUserDM(Landroid/database/Cursor;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 16

    const-string v0, "_id"

    .line 276
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v0, "identifier"

    .line 277
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "name"

    .line 278
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "email"

    .line 279
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "deviceid"

    .line 280
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "auth_token"

    .line 281
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "active"

    .line 282
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 283
    sget-object v1, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_56

    const/4 v0, 0x1

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    const-string v1, "anonymous"

    .line 284
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 285
    sget-object v9, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v1, v9, :cond_6b

    const/4 v9, 0x1

    goto :goto_6c

    :cond_6b
    const/4 v9, 0x0

    :goto_6c
    const-string v1, "issue_exists"

    .line 286
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 287
    sget-object v10, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v1, v10, :cond_80

    const/4 v12, 0x1

    goto :goto_81

    :cond_80
    const/4 v12, 0x0

    :goto_81
    const-string v1, "push_token_synced"

    .line 289
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 290
    sget-object v10, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v1, v10, :cond_95

    const/4 v10, 0x1

    goto :goto_96

    :cond_95
    const/4 v10, 0x0

    :goto_96
    const-string v1, "initial_state_synced"

    .line 293
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 292
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->intToUserSyncStatus(I)Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v13

    .line 295
    new-instance p1, Lcom/helpshift/account/domainmodel/UserDM;

    move-object v2, p1

    move v8, v0

    invoke-direct/range {v2 .. v13}, Lcom/helpshift/account/domainmodel/UserDM;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLcom/helpshift/account/domainmodel/UserSyncStatus;)V

    return-object p1
.end method

.method private getClearUserDMWithLocalId(Lcom/helpshift/account/domainmodel/ClearedUserDM;J)Lcom/helpshift/account/domainmodel/ClearedUserDM;
    .registers 12

    .line 430
    new-instance v7, Lcom/helpshift/account/domainmodel/ClearedUserDM;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->identifier:Ljava/lang/String;

    iget-object v3, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->email:Ljava/lang/String;

    iget-object v4, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->authToken:Ljava/lang/String;

    iget-object v5, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->deviceId:Ljava/lang/String;

    iget-object v6, p1, Lcom/helpshift/account/domainmodel/ClearedUserDM;->syncState:Lcom/helpshift/account/dao/ClearedUserSyncState;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/helpshift/account/domainmodel/ClearedUserDM;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/account/dao/ClearedUserSyncState;)V

    return-object v7
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/UserDB;
    .registers 3

    const-class v0, Lcom/helpshift/account/dao/UserDB;

    monitor-enter v0

    .line 44
    :try_start_3
    sget-object v1, Lcom/helpshift/account/dao/UserDB;->instance:Lcom/helpshift/account/dao/UserDB;

    if-nez v1, :cond_e

    .line 45
    new-instance v1, Lcom/helpshift/account/dao/UserDB;

    invoke-direct {v1, p0}, Lcom/helpshift/account/dao/UserDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/account/dao/UserDB;->instance:Lcom/helpshift/account/dao/UserDB;

    .line 47
    :cond_e
    sget-object p0, Lcom/helpshift/account/dao/UserDB;->instance:Lcom/helpshift/account/dao/UserDB;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getUser(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 13

    monitor-enter p0

    const/4 v0, 0x0

    .line 100
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_table"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 101
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_29
    .catchall {:try_start_2 .. :try_end_14} :catchall_26

    .line 109
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 110
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->cursorToUserDM(Landroid/database/Cursor;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_24
    .catchall {:try_start_14 .. :try_end_1e} :catchall_37

    :cond_1e
    if-eqz p1, :cond_35

    .line 118
    :goto_20
    :try_start_20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_3e

    goto :goto_35

    :catch_24
    move-exception p2

    goto :goto_2b

    :catchall_26
    move-exception p2

    move-object p1, v0

    goto :goto_38

    :catch_29
    move-exception p2

    move-object p1, v0

    :goto_2b
    :try_start_2b
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in reading user"

    .line 114
    invoke-static {v1, v2, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_37

    if-eqz p1, :cond_35

    goto :goto_20

    .line 122
    :cond_35
    :goto_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p2

    :goto_38
    if-eqz p1, :cond_3d

    .line 118
    :try_start_3a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_3d
    throw p2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method private getUserDMWithLocalId(Lcom/helpshift/account/domainmodel/UserDM;J)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 17

    .line 423
    new-instance v12, Lcom/helpshift/account/domainmodel/UserDM;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getName()Ljava/lang/String;

    move-result-object v4

    .line 424
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isActiveUser()Z

    move-result v6

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isAnonymousUser()Z

    move-result v7

    .line 425
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isPushTokenSynced()Z

    move-result v8

    .line 426
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getAuthToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->issueExists()Z

    move-result v10

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v11

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/helpshift/account/domainmodel/UserDM;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLcom/helpshift/account/domainmodel/UserSyncStatus;)V

    return-object v12
.end method

.method private intToClearedUserSyncState(I)Lcom/helpshift/account/dao/ClearedUserSyncState;
    .registers 3

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    :cond_5
    const/4 p1, 0x0

    .line 708
    :cond_6
    invoke-static {}, Lcom/helpshift/account/dao/ClearedUserSyncState;->values()[Lcom/helpshift/account/dao/ClearedUserSyncState;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private intToMigrationState(I)Lcom/helpshift/migration/MigrationState;
    .registers 3

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    :cond_5
    const/4 p1, 0x0

    .line 701
    :cond_6
    invoke-static {}, Lcom/helpshift/migration/MigrationState;->values()[Lcom/helpshift/migration/MigrationState;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private intToRedactionState(I)Lcom/helpshift/redaction/RedactionState;
    .registers 4

    .line 715
    invoke-static {}, Lcom/helpshift/redaction/RedactionState;->values()[Lcom/helpshift/redaction/RedactionState;

    move-result-object v0

    if-ltz p1, :cond_9

    .line 716
    array-length v1, v0

    if-le p1, v1, :cond_a

    :cond_9
    const/4 p1, 0x0

    .line 720
    :cond_a
    aget-object p1, v0, p1

    return-object p1
.end method

.method private intToRedactionType(I)Lcom/helpshift/redaction/RedactionType;
    .registers 4

    .line 727
    invoke-static {}, Lcom/helpshift/redaction/RedactionType;->values()[Lcom/helpshift/redaction/RedactionType;

    move-result-object v0

    if-ltz p1, :cond_9

    .line 728
    array-length v1, v0

    if-le p1, v1, :cond_a

    :cond_9
    const/4 p1, 0x0

    .line 731
    :cond_a
    aget-object p1, v0, p1

    return-object p1
.end method

.method private intToUserSyncStatus(I)Lcom/helpshift/account/domainmodel/UserSyncStatus;
    .registers 3

    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    :cond_5
    const/4 p1, 0x0

    .line 694
    :cond_6
    invoke-static {}, Lcom/helpshift/account/domainmodel/UserSyncStatus;->values()[Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method private legacyAnalyticsIDPairToContentValues(Lcom/helpshift/common/platform/network/KeyValuePair;)Landroid/content/ContentValues;
    .registers 5

    .line 416
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 417
    iget-object v1, p1, Lcom/helpshift/common/platform/network/KeyValuePair;->key:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object p1, p1, Lcom/helpshift/common/platform/network/KeyValuePair;->value:Ljava/lang/String;

    const-string v1, "analytics_event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private legacyProfileToContentValues(Lcom/helpshift/migration/legacyUser/LegacyProfile;)Landroid/content/ContentValues;
    .registers 5

    .line 406
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 407
    iget-object v1, p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;->identifier:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v1, p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;->serverId:Ljava/lang/String;

    const-string v2, "serverid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object p1, p1, Lcom/helpshift/migration/legacyUser/LegacyProfile;->migrationState:Lcom/helpshift/migration/MigrationState;

    invoke-virtual {p1}, Lcom/helpshift/migration/MigrationState;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "migration_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private redactionDetailToContentValues(Lcom/helpshift/redaction/RedactionDetail;)Landroid/content/ContentValues;
    .registers 5

    .line 738
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 739
    iget-wide v1, p1, Lcom/helpshift/redaction/RedactionDetail;->userLocalId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "user_local_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 740
    iget-object v1, p1, Lcom/helpshift/redaction/RedactionDetail;->redactionState:Lcom/helpshift/redaction/RedactionState;

    .line 741
    invoke-virtual {v1}, Lcom/helpshift/redaction/RedactionState;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "redaction_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    iget-object p1, p1, Lcom/helpshift/redaction/RedactionDetail;->redactionType:Lcom/helpshift/redaction/RedactionType;

    invoke-virtual {p1}, Lcom/helpshift/redaction/RedactionType;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "redaction_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private userDMToContentValues(Lcom/helpshift/account/domainmodel/UserDM;)Landroid/content/ContentValues;
    .registers 6

    .line 357
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 358
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 359
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    :cond_14
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    const-string v3, ""

    if-eqz v1, :cond_26

    .line 363
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 366
    :cond_26
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_29
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    if-eqz v1, :cond_39

    .line 370
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 373
    :cond_39
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_3c
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getEmail()Ljava/lang/String;

    move-result-object v1

    const-string v2, "email"

    if-eqz v1, :cond_4c

    .line 377
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 380
    :cond_4c
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :goto_4f
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceid"

    if-eqz v1, :cond_5f

    .line 384
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 387
    :cond_5f
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_62
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_token"

    if-eqz v1, :cond_72

    .line 391
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 394
    :cond_72
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_75
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isActiveUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 398
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isAnonymousUser()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "anonymous"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 399
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->issueExists()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "issue_exists"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->isPushTokenSynced()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "push_token_synced"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 401
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getSyncState()Lcom/helpshift/account/domainmodel/UserSyncStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserSyncStatus;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "initial_state_synced"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized activateUser(Ljava/lang/Long;)Z
    .registers 11

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 206
    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 213
    :try_start_8
    iget-object v3, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v3}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 214
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "active"

    .line 215
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 216
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "active"

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 219
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "user_table"

    const-string v6, "_id = ?"

    .line 221
    new-array v7, v2, [Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 221
    invoke-virtual {v1, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_4e

    const-string v3, "user_table"

    const-string v5, "_id != ?"

    .line 229
    new-array v6, v2, [Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v0

    .line 229
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 234
    :cond_4e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_51} :catch_63
    .catchall {:try_start_8 .. :try_end_51} :catchall_61

    if-eqz v1, :cond_5f

    .line 243
    :try_start_53
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57
    .catchall {:try_start_53 .. :try_end_56} :catchall_81

    goto :goto_5f

    :catch_57
    move-exception p1

    :try_start_58
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in activating user in finally block"

    .line 247
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_81

    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    goto :goto_79

    :catchall_61
    move-exception p1

    goto :goto_7b

    :catch_63
    move-exception p1

    :try_start_64
    const-string v2, "Helpshift_UserDB"

    const-string v3, "Error in activating user"

    .line 238
    invoke-static {v2, v3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_61

    if-eqz v1, :cond_79

    .line 243
    :try_start_6d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_71
    .catchall {:try_start_6d .. :try_end_70} :catchall_81

    goto :goto_79

    :catch_71
    move-exception p1

    :try_start_72
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in activating user in finally block"

    .line 247
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_79
    .catchall {:try_start_72 .. :try_end_79} :catchall_81

    .line 251
    :cond_79
    :goto_79
    monitor-exit p0

    return v0

    :goto_7b
    if-eqz v1, :cond_8b

    .line 243
    :try_start_7d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_83
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_8b

    :catchall_81
    move-exception p1

    goto :goto_8c

    :catch_83
    move-exception v0

    :try_start_84
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in activating user in finally block"

    .line 247
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_8b
    :goto_8b
    throw p1
    :try_end_8c
    .catchall {:try_start_84 .. :try_end_8c} :catchall_81

    :goto_8c
    monitor-exit p0

    throw p1
.end method

.method createUser(Lcom/helpshift/account/domainmodel/UserDM;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 6

    const/4 v0, 0x0

    .line 55
    :try_start_1
    iget-object v1, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 56
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->userDMToContentValues(Lcom/helpshift/account/domainmodel/UserDM;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "user_table"

    .line 57
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    goto :goto_1f

    :catch_16
    move-exception v1

    const-string v2, "Helpshift_UserDB"

    const-string v3, "Error in creating user"

    .line 60
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    :goto_1f
    if-nez v1, :cond_22

    return-object v0

    .line 66
    :cond_22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/account/dao/UserDB;->getUserDMWithLocalId(Lcom/helpshift/account/domainmodel/UserDM;J)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized deleteClearedUser(Ljava/lang/Long;)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 518
    :try_start_5
    iget-object v4, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user_table"

    const-string v6, "_id = ?"

    .line 519
    new-array v7, v1, [Ljava/lang/String;

    .line 521
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v0

    .line 519
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1f
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1d

    int-to-long v4, p1

    goto :goto_28

    :catchall_1d
    move-exception p1

    goto :goto_2f

    :catch_1f
    move-exception p1

    :try_start_20
    const-string v4, "Helpshift_UserDB"

    const-string v5, "Error in deleting cleared user"

    .line 524
    invoke-static {v4, v5, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    move-wide v4, v2

    :goto_28
    cmp-long p1, v4, v2

    if-lez p1, :cond_2d

    const/4 v0, 0x1

    .line 526
    :cond_2d
    monitor-exit p0

    return v0

    :goto_2f
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteLegacyProfile(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 564
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "legacy_profile_table"

    const-string v2, "identifier = ?"

    const/4 v3, 0x1

    .line 565
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_17
    .catchall {:try_start_1 .. :try_end_14} :catchall_15

    goto :goto_1f

    :catchall_15
    move-exception p1

    goto :goto_21

    :catch_17
    move-exception p1

    :try_start_18
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in deleting legacy profile"

    .line 570
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    .line 572
    :goto_1f
    monitor-exit p0

    return-void

    :goto_21
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteRedactionDetail(J)V
    .registers 8

    monitor-enter p0

    .line 839
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "redaction_info_table"

    const-string v2, "user_local_id = ?"

    const/4 v3, 0x1

    .line 840
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 842
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 840
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1b
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception p1

    goto :goto_25

    :catch_1b
    move-exception p1

    :try_start_1c
    const-string p2, "Helpshift_UserDB"

    const-string v0, "Error in deleting redaction detail"

    .line 845
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 847
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deleteUser(Ljava/lang/Long;)Z
    .registers 10

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 257
    monitor-exit p0

    return v0

    :cond_6
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 264
    :try_start_9
    iget-object v4, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "user_table"

    const-string v6, "_id = ?"

    .line 265
    new-array v7, v1, [Ljava/lang/String;

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v0

    .line 265
    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_23
    .catchall {:try_start_9 .. :try_end_1f} :catchall_21

    int-to-long v4, p1

    goto :goto_2c

    :catchall_21
    move-exception p1

    goto :goto_33

    :catch_23
    move-exception p1

    :try_start_24
    const-string v4, "Helpshift_UserDB"

    const-string v5, "Error in deleting user"

    .line 270
    invoke-static {v4, v5, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_21

    move-wide v4, v2

    :goto_2c
    cmp-long p1, v4, v2

    if-lez p1, :cond_31

    const/4 v0, 0x1

    .line 272
    :cond_31
    monitor-exit p0

    return v0

    :goto_33
    monitor-exit p0

    throw p1
.end method

.method dropAndCreateDatabase()V
    .registers 3

    .line 850
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/db/user/UserDBHelper;->dropAndCreateAllTables(Landroid/database/sqlite/SQLiteDatabase;)Z

    return-void
.end method

.method declared-synchronized fetchClearedUsers()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/account/domainmodel/ClearedUserDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_47

    const/4 v1, 0x0

    .line 462
    :try_start_7
    iget-object v2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "cleared_user_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 463
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 471
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 473
    :cond_1f
    invoke-direct {p0, v1}, Lcom/helpshift/account/dao/UserDB;->cursorToClearedUserDM(Landroid/database/Cursor;)Lcom/helpshift/account/domainmodel/ClearedUserDM;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_34
    .catchall {:try_start_7 .. :try_end_2a} :catchall_32

    if-nez v2, :cond_1f

    :cond_2c
    if-eqz v1, :cond_3f

    .line 482
    :goto_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_47

    goto :goto_3f

    :catchall_32
    move-exception v0

    goto :goto_41

    :catch_34
    move-exception v2

    :try_start_35
    const-string v3, "Helpshift_UserDB"

    const-string v4, "Error in reading all cleared users"

    .line 478
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    if-eqz v1, :cond_3f

    goto :goto_2e

    .line 486
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-object v0

    :goto_41
    if-eqz v1, :cond_46

    .line 482
    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_46
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method declared-synchronized fetchLegacyAnalyticsEventId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    monitor-enter p0

    const/4 v0, 0x1

    .line 662
    :try_start_2
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_4c

    const/4 p1, 0x0

    .line 664
    :try_start_8
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "legacy_analytics_event_id_table"

    const/4 v3, 0x0

    const-string v4, "identifier = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 665
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_37
    .catchall {:try_start_8 .. :try_end_1a} :catchall_32

    .line 673
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "analytics_event_id"

    .line 675
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 674
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_30
    .catchall {:try_start_1a .. :try_end_2a} :catchall_45

    :cond_2a
    if-eqz v0, :cond_43

    .line 683
    :goto_2c
    :try_start_2c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4c

    goto :goto_43

    :catch_30
    move-exception v1

    goto :goto_39

    :catchall_32
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_46

    :catch_37
    move-exception v1

    move-object v0, p1

    :goto_39
    :try_start_39
    const-string v2, "Helpshift_UserDB"

    const-string v3, "Error in reading legacy analytics eventID with identifier"

    .line 679
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_45

    if-eqz v0, :cond_43

    goto :goto_2c

    .line 687
    :cond_43
    :goto_43
    monitor-exit p0

    return-object p1

    :catchall_45
    move-exception p1

    :goto_46
    if-eqz v0, :cond_4b

    .line 683
    :try_start_48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method declared-synchronized fetchLegacyProfile(Ljava/lang/String;)Lcom/helpshift/migration/legacyUser/LegacyProfile;
    .registers 12

    monitor-enter p0

    const/4 v0, 0x1

    .line 579
    :try_start_2
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_46

    const/4 p1, 0x0

    .line 581
    :try_start_8
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "legacy_profile_table"

    const/4 v3, 0x0

    const-string v4, "identifier = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 582
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_31
    .catchall {:try_start_8 .. :try_end_1a} :catchall_2c

    .line 590
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 591
    invoke-direct {p0, v0}, Lcom/helpshift/account/dao/UserDB;->cursorToLegacyProfile(Landroid/database/Cursor;)Lcom/helpshift/migration/legacyUser/LegacyProfile;

    move-result-object p1
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_24} :catch_2a
    .catchall {:try_start_1a .. :try_end_24} :catchall_3f

    :cond_24
    if-eqz v0, :cond_3d

    .line 599
    :goto_26
    :try_start_26
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_46

    goto :goto_3d

    :catch_2a
    move-exception v1

    goto :goto_33

    :catchall_2c
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_40

    :catch_31
    move-exception v1

    move-object v0, p1

    :goto_33
    :try_start_33
    const-string v2, "Helpshift_UserDB"

    const-string v3, "Error in reading legacy profile with identifier"

    .line 595
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_3f

    if-eqz v0, :cond_3d

    goto :goto_26

    .line 603
    :cond_3d
    :goto_3d
    monitor-exit p0

    return-object p1

    :catchall_3f
    move-exception p1

    :goto_40
    if-eqz v0, :cond_45

    .line 599
    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_45
    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method declared-synchronized fetchRedactionDetail(J)Lcom/helpshift/redaction/RedactionDetail;
    .registers 13

    monitor-enter p0

    const/4 v0, 0x1

    .line 794
    :try_start_2
    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_4a

    const/4 p1, 0x0

    .line 796
    :try_start_c
    iget-object p2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "redaction_info_table"

    const/4 v3, 0x0

    const-string v4, "user_local_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 797
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_35
    .catchall {:try_start_c .. :try_end_1e} :catchall_30

    .line 805
    :try_start_1e
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 806
    invoke-direct {p0, p2}, Lcom/helpshift/account/dao/UserDB;->cursorToRedactionDetail(Landroid/database/Cursor;)Lcom/helpshift/redaction/RedactionDetail;

    move-result-object p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_2e
    .catchall {:try_start_1e .. :try_end_28} :catchall_43

    :cond_28
    if-eqz p2, :cond_41

    .line 814
    :goto_2a
    :try_start_2a
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_4a

    goto :goto_41

    :catch_2e
    move-exception v0

    goto :goto_37

    :catchall_30
    move-exception p2

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    goto :goto_44

    :catch_35
    move-exception v0

    move-object p2, p1

    :goto_37
    :try_start_37
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in reading redaction detail of the user"

    .line 810
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_43

    if-eqz p2, :cond_41

    goto :goto_2a

    .line 817
    :cond_41
    :goto_41
    monitor-exit p0

    return-object p1

    :catchall_43
    move-exception p1

    :goto_44
    if-eqz p2, :cond_49

    .line 814
    :try_start_46
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 816
    :cond_49
    throw p1
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method declared-synchronized fetchUser(Ljava/lang/Long;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 4

    monitor-enter p0

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 128
    monitor-exit p0

    return-object p1

    :cond_6
    const/4 v0, 0x1

    .line 130
    :try_start_7
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "_id = ?"

    .line 131
    invoke-direct {p0, p1, v0}, Lcom/helpshift/account/dao/UserDB;->getUser(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object p1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object p1

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized fetchUser(Ljava/lang/String;Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;
    .registers 6

    monitor-enter p0

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    const/4 p1, 0x0

    .line 137
    monitor-exit p0

    return-object p1

    :cond_8
    if-nez p1, :cond_f

    :try_start_a
    const-string p1, ""

    goto :goto_f

    :catchall_d
    move-exception p1

    goto :goto_24

    :cond_f
    :goto_f
    if-nez p2, :cond_13

    const-string p2, ""

    :cond_13
    const-string v0, "identifier = ? AND email = ?"

    const/4 v1, 0x2

    .line 149
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/dao/UserDB;->getUser(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object p1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_d

    monitor-exit p0

    return-object p1

    :goto_24
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized fetchUsers()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/account/domainmodel/UserDM;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_47

    const/4 v1, 0x0

    .line 176
    :try_start_7
    iget-object v2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/user/UserDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "user_table"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 177
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 187
    :cond_1f
    invoke-direct {p0, v1}, Lcom/helpshift/account/dao/UserDB;->cursorToUserDM(Landroid/database/Cursor;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_34
    .catchall {:try_start_7 .. :try_end_2a} :catchall_32

    if-nez v2, :cond_1f

    :cond_2c
    if-eqz v1, :cond_3f

    .line 196
    :goto_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_47

    goto :goto_3f

    :catchall_32
    move-exception v0

    goto :goto_41

    :catch_34
    move-exception v2

    :try_start_35
    const-string v3, "Helpshift_UserDB"

    const-string v4, "Error in reading all users"

    .line 192
    invoke-static {v3, v4, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_32

    if-eqz v1, :cond_3f

    goto :goto_2e

    .line 200
    :cond_3f
    :goto_3f
    monitor-exit p0

    return-object v0

    :goto_41
    if-eqz v1, :cond_46

    .line 196
    :try_start_43
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_46
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method declared-synchronized getActiveUser()Lcom/helpshift/account/domainmodel/UserDM;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "active = ?"

    const/4 v1, 0x1

    .line 156
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/dao/UserDB;->getUser(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAnonymousUser()Lcom/helpshift/account/domainmodel/UserDM;
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "anonymous = ?"

    const/4 v1, 0x1

    .line 164
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/helpshift/account/dao/UserDB;->INT_TRUE:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/helpshift/account/dao/UserDB;->getUser(Ljava/lang/String;[Ljava/lang/String;)Lcom/helpshift/account/domainmodel/UserDM;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized insertClearedUser(Lcom/helpshift/account/domainmodel/ClearedUserDM;)Lcom/helpshift/account/domainmodel/ClearedUserDM;
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 441
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 442
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->clearedUserDMtoContentValues(Lcom/helpshift/account/domainmodel/ClearedUserDM;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "cleared_user_table"

    .line 443
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_19
    .catchall {:try_start_2 .. :try_end_16} :catchall_17

    goto :goto_22

    :catchall_17
    move-exception p1

    goto :goto_30

    :catch_19
    move-exception v1

    :try_start_1a
    const-string v2, "Helpshift_UserDB"

    const-string v3, "Error in creating cleared user"

    .line 446
    invoke-static {v2, v3, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_17

    move-object v1, v0

    :goto_22
    if-nez v1, :cond_26

    .line 450
    monitor-exit p0

    return-object v0

    .line 452
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/helpshift/account/dao/UserDB;->getClearUserDMWithLocalId(Lcom/helpshift/account/domainmodel/ClearedUserDM;J)Lcom/helpshift/account/domainmodel/ClearedUserDM;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_17

    monitor-exit p0

    return-object p1

    :goto_30
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized insertRedactionDetail(Lcom/helpshift/redaction/RedactionDetail;)V
    .registers 5

    monitor-enter p0

    .line 766
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 767
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->redactionDetailToContentValues(Lcom/helpshift/redaction/RedactionDetail;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v1, "redaction_info_table"

    const/4 v2, 0x0

    .line 768
    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_14
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_1c

    :catchall_12
    move-exception p1

    goto :goto_1e

    :catch_14
    move-exception p1

    :try_start_15
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in inserting redaction info of the user"

    .line 771
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_12

    .line 773
    :goto_1c
    monitor-exit p0

    return-void

    :goto_1e
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeLegacyAnalyticsEventIds(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/common/platform/network/KeyValuePair;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 633
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_3f
    .catchall {:try_start_2 .. :try_end_8} :catchall_3c

    .line 635
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 636
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/common/platform/network/KeyValuePair;

    .line 637
    invoke-direct {p0, v2}, Lcom/helpshift/account/dao/UserDB;->legacyAnalyticsIDPairToContentValues(Lcom/helpshift/common/platform/network/KeyValuePair;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "legacy_analytics_event_id_table"

    .line 638
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_f

    .line 640
    :cond_25
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_39
    .catchall {:try_start_8 .. :try_end_28} :catchall_37

    if-eqz v1, :cond_53

    .line 648
    :try_start_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5b

    goto :goto_53

    :catch_2e
    move-exception p1

    :try_start_2f
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in storing legacy analytics events in finally block"

    .line 652
    :goto_33
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_5b

    goto :goto_53

    :catchall_37
    move-exception p1

    goto :goto_55

    :catch_39
    move-exception p1

    move-object v0, v1

    goto :goto_40

    :catchall_3c
    move-exception p1

    move-object v1, v0

    goto :goto_55

    :catch_3f
    move-exception p1

    :goto_40
    :try_start_40
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in storing legacy analytics events"

    .line 643
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3c

    if-eqz v0, :cond_53

    .line 648
    :try_start_49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5b

    goto :goto_53

    :catch_4d
    move-exception p1

    :try_start_4e
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in storing legacy analytics events in finally block"
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_5b

    goto :goto_33

    .line 655
    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :goto_55
    if-eqz v1, :cond_65

    .line 648
    :try_start_57
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_65

    :catchall_5b
    move-exception p1

    goto :goto_66

    :catch_5d
    move-exception v0

    :try_start_5e
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in storing legacy analytics events in finally block"

    .line 652
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    :cond_65
    :goto_65
    throw p1
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5b

    :goto_66
    monitor-exit p0

    throw p1

    return-void
.end method

.method declared-synchronized storeLegacyProfiles(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/migration/legacyUser/LegacyProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 533
    :try_start_2
    iget-object v1, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_3f
    .catchall {:try_start_2 .. :try_end_8} :catchall_3c

    .line 535
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 537
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/migration/legacyUser/LegacyProfile;

    .line 538
    invoke-direct {p0, v2}, Lcom/helpshift/account/dao/UserDB;->legacyProfileToContentValues(Lcom/helpshift/migration/legacyUser/LegacyProfile;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "legacy_profile_table"

    .line 539
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_f

    .line 543
    :cond_25
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_39
    .catchall {:try_start_8 .. :try_end_28} :catchall_37

    if-eqz v1, :cond_53

    .line 551
    :try_start_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5b

    goto :goto_53

    :catch_2e
    move-exception p1

    :try_start_2f
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in storing legacy profiles in finally block"

    .line 555
    :goto_33
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_5b

    goto :goto_53

    :catchall_37
    move-exception p1

    goto :goto_55

    :catch_39
    move-exception p1

    move-object v0, v1

    goto :goto_40

    :catchall_3c
    move-exception p1

    move-object v1, v0

    goto :goto_55

    :catch_3f
    move-exception p1

    :goto_40
    :try_start_40
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in storing legacy profiles"

    .line 546
    invoke-static {v1, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_3c

    if-eqz v0, :cond_53

    .line 551
    :try_start_49
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_4d
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5b

    goto :goto_53

    :catch_4d
    move-exception p1

    :try_start_4e
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in storing legacy profiles in finally block"
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_5b

    goto :goto_33

    .line 558
    :cond_53
    :goto_53
    monitor-exit p0

    return-void

    :goto_55
    if-eqz v1, :cond_65

    .line 551
    :try_start_57
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_65

    :catchall_5b
    move-exception p1

    goto :goto_66

    :catch_5d
    move-exception v0

    :try_start_5e
    const-string v1, "Helpshift_UserDB"

    const-string v2, "Error in storing legacy profiles in finally block"

    .line 555
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    :cond_65
    :goto_65
    throw p1
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5b

    :goto_66
    monitor-exit p0

    throw p1

    return-void
.end method

.method declared-synchronized updateClearedUserSyncState(Ljava/lang/Long;Lcom/helpshift/account/dao/ClearedUserSyncState;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 495
    :try_start_3
    iget-object v2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 497
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "sync_state"

    .line 498
    invoke-virtual {p2}, Lcom/helpshift/account/dao/ClearedUserSyncState;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "cleared_user_table"

    const-string v4, "_id = ?"

    .line 499
    new-array v5, v0, [Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v1

    .line 499
    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2d
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2b

    goto :goto_36

    :catchall_2b
    move-exception p1

    goto :goto_38

    :catch_2d
    move-exception p1

    :try_start_2e
    const-string p2, "Helpshift_UserDB"

    const-string v0, "Error in updating cleared user sync status"

    .line 506
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    const/4 v0, 0x0

    .line 509
    :goto_36
    monitor-exit p0

    return v0

    :goto_38
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateRedactionDetail(Lcom/helpshift/redaction/RedactionDetail;)V
    .registers 10

    monitor-enter p0

    .line 778
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 779
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->redactionDetailToContentValues(Lcom/helpshift/redaction/RedactionDetail;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "redaction_info_table"

    const-string v3, "user_local_id = ?"

    const/4 v4, 0x1

    .line 780
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/helpshift/redaction/RedactionDetail;->userLocalId:J

    .line 783
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 780
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_21
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_29

    :catchall_1f
    move-exception p1

    goto :goto_2b

    :catch_21
    move-exception p1

    :try_start_22
    const-string v0, "Helpshift_UserDB"

    const-string v1, "Error in updating redaction detail"

    .line 786
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 788
    :goto_29
    monitor-exit p0

    return-void

    :goto_2b
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateRedactionState(JLcom/helpshift/redaction/RedactionState;)V
    .registers 9

    monitor-enter p0

    .line 823
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 824
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "redaction_state"

    .line 825
    invoke-virtual {p3}, Lcom/helpshift/redaction/RedactionState;->ordinal()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "redaction_info_table"

    const-string v2, "user_local_id = ?"

    const/4 v3, 0x1

    .line 826
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 829
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 826
    invoke-virtual {v0, p3, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2d
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_35

    :catchall_2b
    move-exception p1

    goto :goto_37

    :catch_2d
    move-exception p1

    :try_start_2e
    const-string p2, "Helpshift_UserDB"

    const-string p3, "Error in updating redaction status"

    .line 832
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_2b

    .line 834
    :goto_35
    monitor-exit p0

    return-void

    :goto_37
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateUser(Lcom/helpshift/account/domainmodel/UserDM;)Z
    .registers 9

    monitor-enter p0

    .line 71
    :try_start_1
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_34

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 72
    monitor-exit p0

    return v1

    :cond_a
    const/4 v0, 0x1

    .line 79
    :try_start_b
    iget-object v2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 81
    invoke-direct {p0, p1}, Lcom/helpshift/account/dao/UserDB;->userDMToContentValues(Lcom/helpshift/account/domainmodel/UserDM;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "user_table"

    const-string v5, "_id = ?"

    .line 82
    new-array v6, v0, [Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    .line 82
    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_28} :catch_29
    .catchall {:try_start_b .. :try_end_28} :catchall_34

    goto :goto_32

    :catch_29
    move-exception p1

    :try_start_2a
    const-string v0, "Helpshift_UserDB"

    const-string v2, "Error in updating user"

    .line 89
    invoke-static {v0, v2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_34

    const/4 v0, 0x0

    .line 92
    :goto_32
    monitor-exit p0

    return v0

    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized updateUserMigrationState(Ljava/lang/String;Lcom/helpshift/migration/MigrationState;)Z
    .registers 9

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 612
    :try_start_3
    iget-object v2, p0, Lcom/helpshift/account/dao/UserDB;->userDBHelper:Lcom/helpshift/db/user/UserDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/user/UserDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 614
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "migration_state"

    .line 615
    invoke-virtual {p2}, Lcom/helpshift/migration/MigrationState;->ordinal()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "legacy_profile_table"

    const-string v4, "identifier = ?"

    .line 616
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_29
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_32

    :catchall_27
    move-exception p1

    goto :goto_34

    :catch_29
    move-exception p1

    :try_start_2a
    const-string p2, "Helpshift_UserDB"

    const-string v0, "Error in updating user migration sync status"

    .line 623
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    const/4 v0, 0x0

    .line 626
    :goto_32
    monitor-exit p0

    return v0

    :goto_34
    monitor-exit p0

    throw p1
.end method
