.class public final Lcom/google/android/gms/measurement/internal/zzep;
.super Lcom/google/android/gms/measurement/internal/zze;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.1"


# instance fields
.field private final zza:Lcom/google/android/gms/measurement/internal/zzes;

.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzfx;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zze;-><init>(Lcom/google/android/gms/measurement/internal/zzfx;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 4
    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzep;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzes;

    return-void
.end method

.method private static zza(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "messages"

    const-string v1, "rowid"

    .line 299
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "type=?"

    const-string v1, "3"

    .line 300
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "rowid desc"

    const-string v9, "1"

    move-object v1, p0

    .line 301
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x0

    .line 303
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_35

    if-eqz v0, :cond_2c

    .line 305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2c
    return-wide v1

    :cond_2d
    if-eqz v0, :cond_32

    .line 309
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_35
    move-exception p0

    if-eqz v0, :cond_3b

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_3b
    throw p0
.end method

.method private final zza(I[B)Z
    .registers 19
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 19
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    return v2

    .line 21
    :cond_e
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 22
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "type"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "entry"

    move-object/from16 v4, p2

    .line 23
    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    :goto_26
    if-ge v5, v4, :cond_12d

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 28
    :try_start_2a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9
    :try_end_2e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_2e} :catch_fe
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2a .. :try_end_2e} :catch_ec
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_2e} :catch_c1
    .catchall {:try_start_2a .. :try_end_2e} :catchall_bd

    if-nez v9, :cond_38

    .line 30
    :try_start_30
    iput-boolean v8, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_30 .. :try_end_32} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_30 .. :try_end_32} :catch_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_32} :catch_b7
    .catchall {:try_start_30 .. :try_end_32} :catchall_120

    if-eqz v9, :cond_37

    .line 32
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_37
    return v2

    .line 34
    :cond_38
    :try_start_38
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v10, 0x0

    const-string v0, "select count(1) from messages"

    .line 36
    invoke-virtual {v9, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_38 .. :try_end_43} :catch_bb
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_38 .. :try_end_43} :catch_ed
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_43} :catch_b7
    .catchall {:try_start_38 .. :try_end_43} :catchall_120

    if-eqz v12, :cond_59

    .line 37
    :try_start_45
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 38
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_4f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_45 .. :try_end_4f} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_45 .. :try_end_4f} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_4f} :catch_53
    .catchall {:try_start_45 .. :try_end_4f} :catchall_50

    goto :goto_59

    :catchall_50
    move-exception v0

    goto/16 :goto_122

    :catch_53
    move-exception v0

    goto :goto_b9

    :catch_55
    move-exception v0

    move-object v7, v12

    goto/16 :goto_100

    :cond_59
    :goto_59
    const-string v0, "messages"

    const-wide/32 v13, 0x186a0

    cmp-long v15, v10, v13

    if-ltz v15, :cond_a0

    .line 40
    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v15

    const-string v4, "Data loss, local db full"

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    sub-long/2addr v13, v10

    const-wide/16 v10, 0x1

    add-long/2addr v13, v10

    const-string v4, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 42
    new-array v10, v8, [Ljava/lang/String;

    .line 43
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    .line 44
    invoke-virtual {v9, v0, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v10, v4

    cmp-long v4, v10, v13

    if-eqz v4, :cond_a0

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v4

    const-string v15, "Different delete count than expected in local db. expected, received, difference"

    .line 48
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 49
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sub-long/2addr v13, v10

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 51
    invoke-virtual {v4, v15, v2, v8, v10}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    :cond_a0
    invoke-virtual {v9, v0, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 53
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 54
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_62 .. :try_end_a9} :catch_55
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_62 .. :try_end_a9} :catch_b5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_a9} :catch_53
    .catchall {:try_start_62 .. :try_end_a9} :catchall_50

    if-eqz v12, :cond_ae

    .line 56
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_ae
    if-eqz v9, :cond_b3

    .line 58
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b3
    const/4 v2, 0x1

    return v2

    :catch_b5
    move-object v7, v12

    goto :goto_ed

    :catch_b7
    move-exception v0

    move-object v12, v7

    :goto_b9
    move-object v7, v9

    goto :goto_c3

    :catch_bb
    move-exception v0

    goto :goto_100

    :catchall_bd
    move-exception v0

    move-object v9, v7

    move-object v12, v9

    goto :goto_122

    :catch_c1
    move-exception v0

    move-object v12, v7

    :goto_c3
    if-eqz v7, :cond_ce

    .line 75
    :try_start_c5
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 76
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 77
    :cond_ce
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v4, "Error writing entry to local database"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 78
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_de
    .catchall {:try_start_c5 .. :try_end_de} :catchall_e9

    if-eqz v12, :cond_e3

    .line 80
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e3
    if-eqz v7, :cond_11a

    .line 82
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_11a

    :catchall_e9
    move-exception v0

    move-object v9, v7

    goto :goto_122

    :catch_ec
    move-object v9, v7

    :catch_ed
    :goto_ed
    int-to-long v10, v6

    .line 68
    :try_start_ee
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_120

    add-int/lit8 v6, v6, 0x14

    if-eqz v7, :cond_f8

    .line 71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_f8
    if-eqz v9, :cond_11a

    .line 73
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_11a

    :catch_fe
    move-exception v0

    move-object v9, v7

    .line 61
    :goto_100
    :try_start_100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v2

    const-string v4, "Error writing entry; local database full"

    invoke-virtual {v2, v4, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 62
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_110
    .catchall {:try_start_100 .. :try_end_110} :catchall_120

    if-eqz v7, :cond_115

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_115
    if-eqz v9, :cond_11a

    .line 66
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_11a
    :goto_11a
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x5

    goto/16 :goto_26

    :catchall_120
    move-exception v0

    move-object v12, v7

    :goto_122
    if-eqz v12, :cond_127

    .line 84
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_127
    if-eqz v9, :cond_12c

    .line 86
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_12c
    throw v0

    .line 89
    :cond_12d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v2, "Failed to write entry to local database"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private final zzae()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 314
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzep;->zza:Lcom/google/android/gms/measurement/internal/zzes;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzes;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 318
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z

    return-object v1

    :cond_12
    return-object v0
.end method

.method private final zzaf()Z
    .registers 3
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzn()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement_local.db"

    .line 323
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final zza(I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "Error reading entries from local database"

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 120
    iget-boolean v0, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_10

    return-object v3

    .line 122
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzaf()Z

    move-result v0

    if-nez v0, :cond_1c

    return-object v4

    :cond_1c
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    :goto_20
    if-ge v7, v5, :cond_207

    const/4 v9, 0x1

    .line 129
    :try_start_23
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_23 .. :try_end_27} :catch_1dc
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_23 .. :try_end_27} :catch_1c9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_27} :catch_1a3
    .catchall {:try_start_23 .. :try_end_27} :catchall_19f

    if-nez v15, :cond_40

    .line 131
    :try_start_29
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_29 .. :try_end_2b} :catch_3b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_29 .. :try_end_2b} :catch_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2b} :catch_36
    .catchall {:try_start_29 .. :try_end_2b} :catchall_31

    if-eqz v15, :cond_30

    .line 133
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_30
    return-object v3

    :catchall_31
    move-exception v0

    move-object v10, v3

    move-object v5, v15

    goto/16 :goto_1fc

    :catch_36
    move-exception v0

    move-object v10, v3

    move-object v5, v15

    goto/16 :goto_1a6

    :catch_3b
    move-exception v0

    move-object v10, v3

    move-object v5, v15

    goto/16 :goto_1df

    .line 135
    :cond_40
    :try_start_40
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    invoke-static {v15}, Lcom/google/android/gms/measurement/internal/zzep;->zza(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v10
    :try_end_47
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_40 .. :try_end_47} :catch_19b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_40 .. :try_end_47} :catch_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_47} :catch_194
    .catchall {:try_start_40 .. :try_end_47} :catchall_18f

    const-wide/16 v19, -0x1

    cmp-long v0, v10, v19

    if-eqz v0, :cond_5a

    :try_start_4d
    const-string v0, "rowid<?"

    .line 141
    new-array v12, v9, [Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v12, v6
    :try_end_57
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4d .. :try_end_57} :catch_3b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4d .. :try_end_57} :catch_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_57} :catch_36
    .catchall {:try_start_4d .. :try_end_57} :catchall_31

    move-object v13, v0

    move-object v14, v12

    goto :goto_5c

    :cond_5a
    move-object v13, v3

    move-object v14, v13

    :goto_5c
    :try_start_5c
    const-string v11, "messages"

    const-string v0, "rowid"

    const-string v10, "type"

    const-string v12, "entry"

    .line 142
    filled-new-array {v0, v10, v12}, [Ljava/lang/String;

    move-result-object v12

    const/4 v0, 0x0

    const/16 v16, 0x0

    const-string v17, "rowid asc"

    const/16 v10, 0x64

    .line 143
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18
    :try_end_73
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5c .. :try_end_73} :catch_19b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5c .. :try_end_73} :catch_198
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5c .. :try_end_73} :catch_194
    .catchall {:try_start_5c .. :try_end_73} :catchall_18f

    move-object v10, v15

    move-object v5, v15

    move-object v15, v0

    .line 144
    :try_start_76
    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_76 .. :try_end_7a} :catch_18d
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_76 .. :try_end_7a} :catch_199
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_7a} :catch_18b
    .catchall {:try_start_76 .. :try_end_7a} :catchall_189

    .line 146
    :cond_7a
    :goto_7a
    :try_start_7a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_150

    .line 147
    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 148
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v11, 0x2

    .line 149
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    if-nez v0, :cond_c2

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_93
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7a .. :try_end_93} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7a .. :try_end_93} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_93} :catch_184
    .catchall {:try_start_7a .. :try_end_93} :catchall_1fb

    .line 152
    :try_start_93
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 153
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzaq;
    :try_end_a2
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_93 .. :try_end_a2} :catch_ad
    .catchall {:try_start_93 .. :try_end_a2} :catchall_ab

    .line 155
    :try_start_a2
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    if-eqz v0, :cond_7a

    .line 164
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_aa
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a2 .. :try_end_aa} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a2 .. :try_end_aa} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a2 .. :try_end_aa} :catch_184
    .catchall {:try_start_a2 .. :try_end_aa} :catchall_1fb

    goto :goto_7a

    :catchall_ab
    move-exception v0

    goto :goto_be

    .line 158
    :catch_ad
    :try_start_ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v12, "Failed to load event from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_ad .. :try_end_ba} :catchall_ab

    .line 159
    :try_start_ba
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_7a

    .line 161
    :goto_be
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 162
    throw v0

    :cond_c2
    if-ne v0, v9, :cond_f8

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ba .. :try_end_c8} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ba .. :try_end_c8} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ba .. :try_end_c8} :catch_184
    .catchall {:try_start_ba .. :try_end_c8} :catchall_1fb

    .line 168
    :try_start_c8
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 169
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 170
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzkn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzkn;
    :try_end_d7
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_c8 .. :try_end_d7} :catch_dd
    .catchall {:try_start_c8 .. :try_end_d7} :catchall_db

    .line 171
    :try_start_d7
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_da
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_d7 .. :try_end_da} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_d7 .. :try_end_da} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d7 .. :try_end_da} :catch_184
    .catchall {:try_start_d7 .. :try_end_da} :catchall_1fb

    goto :goto_ee

    :catchall_db
    move-exception v0

    goto :goto_f4

    .line 174
    :catch_dd
    :try_start_dd
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v12, "Failed to load user property from local database"

    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_ea
    .catchall {:try_start_dd .. :try_end_ea} :catchall_db

    .line 175
    :try_start_ea
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_ee
    if-eqz v0, :cond_7a

    .line 180
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 177
    :goto_f4
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 178
    throw v0

    :cond_f8
    if-ne v0, v11, :cond_12f

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_fe
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_ea .. :try_end_fe} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_ea .. :try_end_fe} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ea .. :try_end_fe} :catch_184
    .catchall {:try_start_ea .. :try_end_fe} :catchall_1fb

    .line 184
    :try_start_fe
    array-length v0, v12

    invoke-virtual {v11, v12, v6, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 185
    invoke-virtual {v11, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 186
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzy;
    :try_end_10d
    .catch Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader$ParseException; {:try_start_fe .. :try_end_10d} :catch_113
    .catchall {:try_start_fe .. :try_end_10d} :catchall_111

    .line 188
    :try_start_10d
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10d .. :try_end_110} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10d .. :try_end_110} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10d .. :try_end_110} :catch_184
    .catchall {:try_start_10d .. :try_end_110} :catchall_1fb

    goto :goto_124

    :catchall_111
    move-exception v0

    goto :goto_12b

    .line 191
    :catch_113
    :try_start_113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v12, "Failed to load conditional user property from local database"

    .line 193
    invoke-virtual {v0, v12}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_113 .. :try_end_120} :catchall_111

    .line 194
    :try_start_120
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    move-object v0, v3

    :goto_124
    if-eqz v0, :cond_7a

    .line 199
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7a

    .line 196
    :goto_12b
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 197
    throw v0

    :cond_12f
    const/4 v11, 0x3

    if-ne v0, v11, :cond_141

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v11, "Skipping app launch break"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    goto/16 :goto_7a

    .line 202
    :cond_141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v11, "Unknown record type in local database"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    goto/16 :goto_7a

    :cond_150
    const-string v0, "messages"

    const-string v11, "rowid <= ?"

    .line 204
    new-array v12, v9, [Ljava/lang/String;

    .line 205
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6

    .line 206
    invoke-virtual {v5, v0, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 207
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    if-ge v0, v11, :cond_173

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v11, "Fewer entries removed from local database than expected"

    invoke-virtual {v0, v11}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    .line 209
    :cond_173
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 210
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_179
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_120 .. :try_end_179} :catch_186
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_120 .. :try_end_179} :catch_1cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_120 .. :try_end_179} :catch_184
    .catchall {:try_start_120 .. :try_end_179} :catchall_1fb

    if-eqz v10, :cond_17e

    .line 213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_17e
    if-eqz v5, :cond_183

    .line 215
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_183
    return-object v4

    :catch_184
    move-exception v0

    goto :goto_1a6

    :catch_186
    move-exception v0

    goto/16 :goto_1df

    :catchall_189
    move-exception v0

    goto :goto_191

    :catch_18b
    move-exception v0

    goto :goto_196

    :catch_18d
    move-exception v0

    goto :goto_19d

    :catchall_18f
    move-exception v0

    move-object v5, v15

    :goto_191
    move-object v10, v3

    goto/16 :goto_1fc

    :catch_194
    move-exception v0

    move-object v5, v15

    :goto_196
    move-object v10, v3

    goto :goto_1a6

    :catch_198
    move-object v5, v15

    :catch_199
    move-object v10, v3

    goto :goto_1cb

    :catch_19b
    move-exception v0

    move-object v5, v15

    :goto_19d
    move-object v10, v3

    goto :goto_1df

    :catchall_19f
    move-exception v0

    move-object v5, v3

    move-object v10, v5

    goto :goto_1fc

    :catch_1a3
    move-exception v0

    move-object v5, v3

    move-object v10, v5

    :goto_1a6
    if-eqz v5, :cond_1b1

    .line 232
    :try_start_1a8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v11

    if-eqz v11, :cond_1b1

    .line 233
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 234
    :cond_1b1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v11

    invoke-virtual {v11, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_1be
    .catchall {:try_start_1a8 .. :try_end_1be} :catchall_1fb

    if-eqz v10, :cond_1c3

    .line 237
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1c3
    if-eqz v5, :cond_1f6

    .line 239
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1f6

    :catch_1c9
    move-object v5, v3

    move-object v10, v5

    :catch_1cb
    :goto_1cb
    int-to-long v11, v8

    .line 225
    :try_start_1cc
    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1cf
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_1fb

    add-int/lit8 v8, v8, 0x14

    if-eqz v10, :cond_1d6

    .line 228
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1d6
    if-eqz v5, :cond_1f6

    .line 230
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1f6

    :catch_1dc
    move-exception v0

    move-object v5, v3

    move-object v10, v5

    .line 218
    :goto_1df
    :try_start_1df
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v11

    invoke-virtual {v11, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    iput-boolean v9, v1, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_1ec
    .catchall {:try_start_1df .. :try_end_1ec} :catchall_1fb

    if-eqz v10, :cond_1f1

    .line 221
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1f1
    if-eqz v5, :cond_1f6

    .line 223
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_1f6
    :goto_1f6
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x5

    goto/16 :goto_20

    :catchall_1fb
    move-exception v0

    :goto_1fc
    if-eqz v10, :cond_201

    .line 241
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_201
    if-eqz v5, :cond_206

    .line 243
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 244
    :cond_206
    throw v0

    .line 246
    :cond_207
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v2, "Failed to read events from database in reasonable time"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return-object v3
.end method

.method public final bridge synthetic zza()V
    .registers 1

    .line 324
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zza()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzaq;)Z
    .registers 5

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzaq;->writeToParcel(Landroid/os/Parcel;I)V

    .line 93
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzg()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Event is too long for local database. Sending event directly to service"

    .line 98
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v1

    .line 100
    :cond_22
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzkn;)Z
    .registers 5

    .line 101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzkn;->writeToParcel(Landroid/os/Parcel;I)V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    array-length v0, p1

    const/high16 v2, 0x20000

    if-le v0, v2, :cond_22

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzg()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "User property too long for local database. Sending directly to service"

    .line 108
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v1

    :cond_22
    const/4 v0, 0x1

    .line 110
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/measurement/internal/zzy;)Z
    .registers 4

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzko;->zza(Landroid/os/Parcelable;)[B

    move-result-object p1

    .line 112
    array-length v0, p1

    const/high16 v1, 0x20000

    if-le v0, v1, :cond_1b

    .line 113
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzet;->zzg()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object p1

    const-string v0, "Conditional user property too long for local database. Sending directly to service"

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_1b
    const/4 v0, 0x2

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/zzep;->zza(I[B)Z

    move-result p1

    return p1
.end method

.method public final zzab()V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 9
    :try_start_6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-lez v0, :cond_26

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzx()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Reset local analytics data. records"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_26} :catch_27

    :cond_26
    return-void

    :catch_27
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v1

    const-string v2, "Error resetting local analytics data. error"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final zzac()Z
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x0

    .line 248
    new-array v0, v0, [B

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/zzep;->zza(I[B)Z

    move-result v0

    return v0
.end method

.method public final zzad()Z
    .registers 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "Error deleting app launch break from local database"

    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzd()V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzb()V

    .line 251
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    return v2

    .line 253
    :cond_e
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzaf()Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x5

    :goto_18
    if-ge v3, v1, :cond_92

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 258
    :try_start_1c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzep;->zzae()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    if-nez v5, :cond_2a

    .line 260
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1c .. :try_end_24} :catch_76
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1c .. :try_end_24} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_24} :catch_4b
    .catchall {:try_start_1c .. :try_end_24} :catchall_49

    if-eqz v5, :cond_29

    .line 262
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_29
    return v2

    .line 264
    :cond_2a
    :try_start_2a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v7, "messages"

    const-string v8, "type == ?"

    .line 265
    new-array v9, v6, [Ljava/lang/String;

    const/4 v10, 0x3

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    .line 267
    invoke-virtual {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 269
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2a .. :try_end_43} :catch_76
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2a .. :try_end_43} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_43} :catch_4b
    .catchall {:try_start_2a .. :try_end_43} :catchall_49

    if-eqz v5, :cond_48

    .line 271
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_48
    return v6

    :catchall_49
    move-exception v0

    goto :goto_8c

    :catch_4b
    move-exception v7

    if-eqz v5, :cond_57

    .line 284
    :try_start_4e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v8

    if-eqz v8, :cond_57

    .line 285
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    :cond_57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_64
    .catchall {:try_start_4e .. :try_end_64} :catchall_49

    if-eqz v5, :cond_89

    .line 289
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_89

    :catch_6a
    int-to-long v6, v4

    .line 279
    :try_start_6b
    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_49

    add-int/lit8 v4, v4, 0x14

    if-eqz v5, :cond_89

    .line 282
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_89

    :catch_76
    move-exception v7

    .line 274
    :try_start_77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzet;->zzf()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v8

    invoke-virtual {v8, v0, v7}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    iput-boolean v6, p0, Lcom/google/android/gms/measurement/internal/zzep;->zzb:Z
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_49

    if-eqz v5, :cond_89

    .line 277
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_89
    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :goto_8c
    if-eqz v5, :cond_91

    .line 291
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 292
    :cond_91
    throw v0

    .line 294
    :cond_92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzgs;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzet;->zzi()Lcom/google/android/gms/measurement/internal/zzev;

    move-result-object v0

    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 296
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzev;->zza(Ljava/lang/String;)V

    return v2
.end method

.method public final bridge synthetic zzb()V
    .registers 1

    .line 325
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzb()V

    return-void
.end method

.method public final bridge synthetic zzc()V
    .registers 1

    .line 326
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzc()V

    return-void
.end method

.method public final bridge synthetic zzd()V
    .registers 1

    .line 327
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzd()V

    return-void
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/measurement/internal/zzb;
    .registers 2

    .line 328
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zze()Lcom/google/android/gms/measurement/internal/zzb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzf()Lcom/google/android/gms/measurement/internal/zzhc;
    .registers 2

    .line 329
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzf()Lcom/google/android/gms/measurement/internal/zzhc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzg()Lcom/google/android/gms/measurement/internal/zzeq;
    .registers 2

    .line 330
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzg()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzh()Lcom/google/android/gms/measurement/internal/zzin;
    .registers 2

    .line 331
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzh()Lcom/google/android/gms/measurement/internal/zzin;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzi()Lcom/google/android/gms/measurement/internal/zzih;
    .registers 2

    .line 332
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzi()Lcom/google/android/gms/measurement/internal/zzih;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzj()Lcom/google/android/gms/measurement/internal/zzep;
    .registers 2

    .line 333
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzj()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzk()Lcom/google/android/gms/measurement/internal/zzjs;
    .registers 2

    .line 334
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzk()Lcom/google/android/gms/measurement/internal/zzjs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzl()Lcom/google/android/gms/measurement/internal/zzak;
    .registers 2

    .line 335
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzl()Lcom/google/android/gms/measurement/internal/zzak;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzm()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 336
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzm()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzn()Landroid/content/Context;
    .registers 2

    .line 337
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzn()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzo()Lcom/google/android/gms/measurement/internal/zzer;
    .registers 2

    .line 338
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzo()Lcom/google/android/gms/measurement/internal/zzer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzp()Lcom/google/android/gms/measurement/internal/zzko;
    .registers 2

    .line 339
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzp()Lcom/google/android/gms/measurement/internal/zzko;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzq()Lcom/google/android/gms/measurement/internal/zzfu;
    .registers 2

    .line 340
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzq()Lcom/google/android/gms/measurement/internal/zzfu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzr()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 2

    .line 341
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzr()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzs()Lcom/google/android/gms/measurement/internal/zzff;
    .registers 2

    .line 342
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzs()Lcom/google/android/gms/measurement/internal/zzff;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzt()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    .line 343
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzt()Lcom/google/android/gms/measurement/internal/zzaa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzu()Lcom/google/android/gms/measurement/internal/zzv;
    .registers 2

    .line 344
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zze;->zzu()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method protected final zzz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
