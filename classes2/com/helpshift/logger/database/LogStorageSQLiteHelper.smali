.class public Lcom/helpshift/logger/database/LogStorageSQLiteHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogStorageSQLiteHelper.java"


# static fields
.field private static final DB_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LogSQLiteHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 18
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "CREATE TABLE IF NOT EXISTS LOG_MESSAGES( TIMESTAMP TEXT, MESSAGE TEXT, LEVEL TEXT, STACKTRACE TEXT, EXTRAS TEXT, SDK_VERSION TEXT  );"

    .line 29
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 47
    :goto_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1a

    :catchall_f
    move-exception v0

    goto :goto_1b

    :catch_11
    move-exception v0

    :try_start_12
    const-string v1, "LogSQLiteHelper"

    const-string v2, "Error creating log storage: "

    .line 43
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    goto :goto_b

    :goto_1a
    return-void

    .line 47
    :goto_1b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 48
    throw v0

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS LOG_MESSAGES;"

    .line 62
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p3, 0x2

    if-ge p2, p3, :cond_8

    const-string p2, "ALTER TABLE LOG_MESSAGES ADD COLUMN SDK_VERSION TEXT ;"

    .line 56
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    return-void
.end method
