.class public Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;
.super Ljava/lang/Object;
.source "AndroidLegacyProfileDAO.java"

# interfaces
.implements Lcom/helpshift/migration/legacyUser/LegacyProfileDAO;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ALProfileDAO"

.field private static instance:Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;


# instance fields
.field private dbHelper:Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;

    new-instance v1, Lcom/helpshift/db/legacy_profile/LegacyProfileDatabaseContract;

    invoke-direct {v1}, Lcom/helpshift/db/legacy_profile/LegacyProfileDatabaseContract;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/db/base/DatabaseContract;)V

    iput-object v0, p0, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->dbHelper:Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;

    return-void
.end method

.method private cursorToProfile(Landroid/database/Cursor;)Lcom/helpshift/account/dao/ProfileDTO;
    .registers 13

    .line 85
    new-instance v10, Lcom/helpshift/account/dao/ProfileDTO;

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 86
    invoke-static {p1}, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->getColumnIndexForIdentifier(Landroid/database/Cursor;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "profile_id"

    .line 87
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "name"

    .line 88
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "email"

    .line 89
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "salt"

    .line 90
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "uid"

    .line 91
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "did"

    .line 92
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "push_token_sync"

    .line 93
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_63

    const/4 v9, 0x1

    goto :goto_65

    :cond_63
    const/4 p1, 0x0

    const/4 v9, 0x0

    :goto_65
    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/helpshift/account/dao/ProfileDTO;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v10
.end method

.method private static getColumnIndexForIdentifier(Landroid/database/Cursor;)I
    .registers 4

    const-string v0, "IDENTIFIER"

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :cond_11
    return v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;
    .registers 3

    const-class v0, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;

    monitor-enter v0

    .line 31
    :try_start_3
    sget-object v1, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->instance:Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;

    if-nez v1, :cond_e

    .line 32
    new-instance v1, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;

    invoke-direct {v1, p0}, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->instance:Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;

    .line 34
    :cond_e
    sget-object p0, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->instance:Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deleteProfiles()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->dbHelper:Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v1, "DROP TABLE IF EXISTS profiles"

    .line 78
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public fetchProfiles()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/helpshift/account/dao/ProfileDTO;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->dbHelper:Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;

    invoke-virtual {v1}, Lcom/helpshift/db/legacy_profile/LegacyProfileDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "profiles"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 55
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_45
    .catchall {:try_start_1 .. :try_end_13} :catchall_43

    .line 56
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_3d
    .catchall {:try_start_13 .. :try_end_1e} :catchall_38

    .line 59
    :cond_1e
    :try_start_1e
    invoke-direct {p0, v1}, Lcom/helpshift/account/dao/legacy/AndroidLegacyProfileDAO;->cursorToProfile(Landroid/database/Cursor;)Lcom/helpshift/account/dao/ProfileDTO;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_29} :catch_2d
    .catchall {:try_start_1e .. :try_end_29} :catchall_38

    if-nez v0, :cond_1e

    move-object v0, v2

    goto :goto_32

    :catch_2d
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_47

    :cond_32
    :goto_32
    if-eqz v1, :cond_54

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_54

    :catchall_38
    move-exception v0

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_55

    :catch_3d
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_47

    :catchall_43
    move-exception v1

    goto :goto_55

    :catch_45
    move-exception v1

    move-object v2, v0

    :goto_47
    :try_start_47
    const-string v3, "Helpshift_ALProfileDAO"

    const-string v4, "Error in fetchProfiles"

    .line 64
    invoke-static {v3, v4, v1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_43

    if-eqz v0, :cond_53

    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_53
    move-object v0, v2

    :cond_54
    :goto_54
    return-object v0

    :goto_55
    if-eqz v0, :cond_5a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_5a
    throw v1

    return-void
.end method
