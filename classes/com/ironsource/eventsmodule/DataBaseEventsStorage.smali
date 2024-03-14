.class public Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseEventsStorage.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsStorageHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/eventsmodule/DataBaseEventsStorage$EventEntry;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final TYPE_INTEGER:Ljava/lang/String; = " INTEGER"

.field private static final TYPE_TEXT:Ljava/lang/String; = " TEXT"

.field private static mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;


# instance fields
.field private final DB_OPEN_BACKOFF_TIME:I

.field private final DB_RETRY_NUM:I

.field private final SQL_CREATE_ENTRIES:Ljava/lang/String;

.field private final SQL_DELETE_TABLE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x4

    .line 30
    iput p1, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->DB_RETRY_NUM:I

    const/16 p1, 0x190

    .line 31
    iput p1, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->DB_OPEN_BACKOFF_TIME:I

    const-string p1, "DROP TABLE IF EXISTS events"

    .line 33
    iput-object p1, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->SQL_DELETE_TABLE:Ljava/lang/String;

    const-string p1, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    .line 35
    iput-object p1, p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->SQL_CREATE_ENTRIES:Ljava/lang/String;

    return-void
.end method

.method private getContentValuesForEvent(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6

    if-eqz p1, :cond_31

    .line 156
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 159
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eventid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "type"

    .line 161
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    return-object v0
.end method

.method private declared-synchronized getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    if-eqz p1, :cond_a

    .line 192
    :try_start_4
    invoke-virtual {p0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_12
    .catchall {:try_start_4 .. :try_end_8} :catchall_10

    monitor-exit p0

    return-object p1

    .line 195
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_12
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    goto :goto_20

    :catch_12
    move-exception v1

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1f

    mul-int/lit16 v1, v0, 0x190

    int-to-long v1, v1

    .line 201
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    .line 200
    :cond_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_10

    :goto_20
    monitor-exit p0

    throw p1

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    .registers 5

    const-class v0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    monitor-enter v0

    .line 47
    :try_start_3
    sget-object v1, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    if-nez v1, :cond_e

    .line 48
    new-instance v1, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 50
    :cond_e
    sget-object p0, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->mInstance:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
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
.method public declared-synchronized clearEvents(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    const-string v1, "type = ?"

    const/4 v2, 0x1

    .line 138
    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_40

    .line 141
    :try_start_a
    invoke-direct {p0, v2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p1, "events"

    .line 143
    invoke-virtual {v0, p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_21
    .catchall {:try_start_a .. :try_end_13} :catchall_1f

    if-eqz v0, :cond_32

    .line 147
    :try_start_15
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 148
    :goto_1b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_40

    goto :goto_32

    :catchall_1f
    move-exception p1

    goto :goto_34

    :catch_21
    move-exception p1

    :try_start_22
    const-string v1, "IronSource"

    const-string v2, "Exception while clearing events: "

    .line 145
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    if-eqz v0, :cond_32

    .line 147
    :try_start_2b
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_40

    if-eqz p1, :cond_32

    goto :goto_1b

    .line 150
    :cond_32
    :goto_32
    monitor-exit p0

    return-void

    :goto_34
    if-eqz v0, :cond_3f

    .line 147
    :try_start_36
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 148
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    :cond_3f
    throw p1
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 88
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_b4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    :try_start_8
    invoke-direct {p0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_c} :catch_7e
    .catchall {:try_start_8 .. :try_end_c} :catchall_7b

    :try_start_c
    const-string v6, "type = ?"

    const/4 v3, 0x1

    .line 94
    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v1

    const-string v10, "timestamp ASC"

    const-string v4, "events"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v11

    .line 98
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 101
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_60

    .line 103
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    :goto_28
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_5d

    const-string p1, "eventid"

    .line 107
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v1, "timestamp"

    .line 108
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v1, "data"

    .line 109
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, p1, v3, v4, v6}, Lcom/ironsource/eventsmodule/EventData;-><init>(IJLorg/json/JSONObject;)V

    .line 112
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_28

    .line 117
    :cond_5d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_60} :catch_79
    .catchall {:try_start_c .. :try_end_60} :catchall_77

    :cond_60
    if-eqz v2, :cond_6b

    .line 123
    :try_start_62
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6b

    .line 124
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6b
    if-eqz v11, :cond_9b

    .line 125
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_9b

    .line 126
    :goto_73
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_b4

    goto :goto_9b

    :catchall_77
    move-exception p1

    goto :goto_9d

    :catch_79
    move-exception p1

    goto :goto_80

    :catchall_7b
    move-exception p1

    move-object v11, v2

    goto :goto_9d

    :catch_7e
    move-exception p1

    move-object v11, v2

    :goto_80
    :try_start_80
    const-string v1, "IronSource"

    const-string v3, "Exception while loading events: "

    .line 120
    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_77

    if-eqz v2, :cond_92

    .line 123
    :try_start_89
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_92

    .line 124
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_92
    if-eqz v11, :cond_9b

    .line 125
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_b4

    if-eqz p1, :cond_9b

    goto :goto_73

    .line 129
    :cond_9b
    :goto_9b
    monitor-exit p0

    return-object v0

    :goto_9d
    if-eqz v2, :cond_a8

    .line 123
    :try_start_9f
    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 124
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a8
    if-eqz v11, :cond_b3

    .line 125
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 126
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 127
    :cond_b3
    throw p1
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )"

    .line 173
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "DROP TABLE IF EXISTS events"

    .line 178
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public declared-synchronized saveEvents(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_66

    .line 58
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_63

    if-eqz v0, :cond_a

    goto :goto_66

    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    :try_start_c
    invoke-direct {p0, v0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getDataBaseWithRetries(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_10} :catch_42
    .catchall {:try_start_c .. :try_end_10} :catchall_3f

    .line 65
    :try_start_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/eventsmodule/EventData;

    .line 67
    invoke-direct {p0, v2, p2}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getContentValuesForEvent(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    const-string v3, "events"

    .line 71
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2d} :catch_3c
    .catchall {:try_start_10 .. :try_end_2d} :catchall_3a

    goto :goto_14

    :cond_2e
    if-eqz v0, :cond_55

    .line 79
    :try_start_30
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_63

    goto :goto_55

    :catchall_3a
    move-exception p1

    goto :goto_57

    :catch_3c
    move-exception p1

    move-object v1, v0

    goto :goto_43

    :catchall_3f
    move-exception p1

    move-object v0, v1

    goto :goto_57

    :catch_42
    move-exception p1

    :goto_43
    :try_start_43
    const-string p2, "IronSource"

    const-string v0, "Exception while saving events: "

    .line 76
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_3f

    if-eqz v1, :cond_55

    .line 79
    :try_start_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_63

    .line 82
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :goto_57
    if-eqz v0, :cond_62

    .line 79
    :try_start_59
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_62

    .line 80
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 81
    :cond_62
    throw p1
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1

    .line 59
    :cond_66
    :goto_66
    monitor-exit p0

    return-void
.end method
