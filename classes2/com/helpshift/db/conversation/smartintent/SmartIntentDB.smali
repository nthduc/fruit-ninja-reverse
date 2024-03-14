.class public Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;
.super Ljava/lang/Object;
.source "SmartIntentDB.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_SiDB"

.field private static mInstance:Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;


# instance fields
.field private final siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    new-instance v1, Lcom/helpshift/db/smartintents/SmartIntentDatabaseContract;

    invoke-direct {v1}, Lcom/helpshift/db/smartintents/SmartIntentDatabaseContract;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;-><init>(Landroid/content/Context;Lcom/helpshift/db/base/DatabaseContract;)V

    iput-object v0, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    return-void
.end method

.method private buildIntentIdToChildIntentMap(Ljava/util/List;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;>;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 618
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 619
    iget-object v2, v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->parentServerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 620
    iget-object v2, v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->parentServerId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 621
    invoke-static {v2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 622
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 624
    :cond_30
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v1, v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->parentServerId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_39
    return-object v0
.end method

.method private buildIntentTree(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->filterRootIntents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 582
    invoke-direct {p0, p1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->buildIntentIdToChildIntentMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 584
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 585
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 586
    iget-object v4, v3, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->serverId:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 587
    invoke-static {v4}, Lcom/helpshift/util/ListUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 588
    iput-object v4, v3, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->children:Ljava/util/List;

    .line 589
    invoke-interface {v1, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    .line 592
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_51

    .line 593
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 594
    iget-object v3, v2, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->serverId:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 595
    invoke-static {v3}, Lcom/helpshift/util/ListUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 596
    iput-object v3, v2, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->children:Ljava/util/List;

    .line 597
    invoke-interface {v1, v3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_31

    :cond_51
    return-object v0
.end method

.method private cursorToModelWithoutWordProbabilities(Landroid/database/Cursor;)Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;
    .registers 20

    move-object/from16 v0, p1

    const-string v1, "local_id"

    .line 699
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "version"

    .line 700
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "confidence_threshold"

    .line 701
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string v6, "max_combined_confidence"

    .line 702
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    const-string v8, "last_refreshed_at"

    .line 704
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "leaf_intent_server_ids"

    .line 706
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 705
    invoke-static {v10}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    const-string v10, "leaf_intent_base_probabilities"

    .line 708
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonToDoubleArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 709
    new-instance v0, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;

    .line 710
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    const/16 v17, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v17}, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;-><init>(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 712
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->localId:Ljava/lang/Long;

    .line 713
    iput-wide v8, v0, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->lastRefreshedAt:J

    return-object v0
.end method

.method private cursorToSmartIntent(Landroid/database/Cursor;)Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;
    .registers 8

    const-string v0, "local_id"

    .line 564
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "label"

    .line 566
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "server_id"

    .line 568
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parent_server_id"

    .line 570
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 571
    new-instance v4, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, p1, v5}, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 572
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v4, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->localId:Ljava/lang/Long;

    return-object v4
.end method

.method private cursorToSmartIntentTree(Landroid/database/Cursor;Ljava/util/List;)Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "local_id"

    .line 633
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "server_id"

    .line 635
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "enforce_intent_selection"

    const/4 v4, 0x0

    .line 637
    invoke-static {v0, v3, v4}, Lcom/helpshift/util/DatabaseUtils;->parseBooleanColumnSafe(Landroid/database/Cursor;Ljava/lang/String;Z)Z

    move-result v12

    const-string v3, "last_refreshed_at"

    .line 639
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const-string v3, "tree_version"

    .line 640
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v3, "prompt_title"

    .line 642
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "text_input_hint"

    .line 644
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v3, "search_title"

    .line 646
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v3, "empty_search_title"

    .line 648
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v3, "empty_search_description"

    .line 650
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v3, "token_delimiter"

    .line 652
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 653
    new-instance v0, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;

    move-object v4, v0

    move-wide/from16 v16, v1

    move-wide v1, v14

    move-object/from16 v14, p2

    invoke-direct/range {v4 .. v14}, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    .line 657
    iput-wide v1, v0, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->lastRefreshedAt:J

    .line 658
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->localId:Ljava/lang/Long;

    return-object v0
.end method

.method private cursorToWordProbabilities(Landroid/database/Cursor;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "probabilities"

    .line 783
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->jsonToDoubleArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized deleteModelAndWordProbabilities(J)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "model_local_id = ?"

    const-string v1, "local_id = ?"

    const/4 v2, 0x1

    .line 455
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_cd

    const/4 p1, 0x0

    .line 460
    :try_start_10
    iget-object v4, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "si_word_probabilities_table"

    .line 462
    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "si_models_table"

    .line 464
    invoke-virtual {p1, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 465
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_51
    .catchall {:try_start_10 .. :try_end_26} :catchall_4f

    if-eqz p1, :cond_4d

    .line 476
    :try_start_28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32
    .catchall {:try_start_28 .. :try_end_31} :catchall_cd

    goto :goto_4d

    :catch_32
    move-exception p1

    :try_start_33
    const-string p2, "Helpshift_SiDB"

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in ending transaction : word probabilites table or models table with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_cd

    :cond_4d
    :goto_4d
    const/4 p2, 0x1

    goto :goto_a3

    :catchall_4f
    move-exception p2

    goto :goto_a5

    :catch_51
    move-exception v2

    :try_start_52
    const-string v4, "Helpshift_SiDB"

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in delete word probabilities table or models table for selection :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "and selectionArgs"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v4, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_4f

    if-eqz p1, :cond_a3

    .line 476
    :try_start_7e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_87} :catch_88
    .catchall {:try_start_7e .. :try_end_87} :catchall_cd

    goto :goto_a3

    :catch_88
    move-exception p1

    :try_start_89
    const-string v0, "Helpshift_SiDB"

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in ending transaction : word probabilites table or models table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_cd

    .line 487
    :cond_a3
    :goto_a3
    monitor-exit p0

    return p2

    :goto_a5
    if-eqz p1, :cond_cc

    .line 476
    :try_start_a7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 477
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_b1
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_cd

    goto :goto_cc

    :catch_b1
    move-exception p1

    :try_start_b2
    const-string v0, "Helpshift_SiDB"

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in ending transaction : word probabilites table or models table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    :cond_cc
    :goto_cc
    throw p2
    :try_end_cd
    .catchall {:try_start_b2 .. :try_end_cd} :catchall_cd

    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized deleteTreeAndSmartIntents(J)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string v0, "tree_local_id = ? "

    const-string v1, "local_id = ?"

    const/4 v2, 0x1

    .line 374
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_cd

    const/4 p1, 0x0

    .line 380
    :try_start_10
    iget-object v4, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v4}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 381
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "si_intents_table"

    .line 382
    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "si_tree_table"

    .line 383
    invoke-virtual {p1, v4, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_26} :catch_51
    .catchall {:try_start_10 .. :try_end_26} :catchall_4f

    if-eqz p1, :cond_4d

    .line 394
    :try_start_28
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p2

    if-eqz p2, :cond_4d

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_32
    .catchall {:try_start_28 .. :try_end_31} :catchall_cd

    goto :goto_4d

    :catch_32
    move-exception p1

    :try_start_33
    const-string p2, "Helpshift_SiDB"

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception in ending transaction : smartintents table or tree table with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {p2, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4d
    .catchall {:try_start_33 .. :try_end_4d} :catchall_cd

    :cond_4d
    :goto_4d
    const/4 p2, 0x1

    goto :goto_a3

    :catchall_4f
    move-exception p2

    goto :goto_a5

    :catch_51
    move-exception v2

    :try_start_52
    const-string v4, "Helpshift_SiDB"

    .line 388
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in delete smart intents table or tree table for selection :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "and selectionArgs"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v4, v0, v2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_4f

    if-eqz p1, :cond_a3

    .line 394
    :try_start_7e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_87} :catch_88
    .catchall {:try_start_7e .. :try_end_87} :catchall_cd

    goto :goto_a3

    :catch_88
    move-exception p1

    :try_start_89
    const-string v0, "Helpshift_SiDB"

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in ending transaction : smartintents table or tree table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a3
    .catchall {:try_start_89 .. :try_end_a3} :catchall_cd

    .line 404
    :cond_a3
    :goto_a3
    monitor-exit p0

    return p2

    :goto_a5
    if-eqz p1, :cond_cc

    .line 394
    :try_start_a7
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 395
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b0} :catch_b1
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_cd

    goto :goto_cc

    :catch_b1
    move-exception p1

    :try_start_b2
    const-string v0, "Helpshift_SiDB"

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in ending transaction : smartintents table or tree table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    :cond_cc
    :goto_cc
    throw p2
    :try_end_cd
    .catchall {:try_start_b2 .. :try_end_cd} :catchall_cd

    :catchall_cd
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private filterRootIntents(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;"
        }
    .end annotation

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 607
    iget-object v2, v1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->parentServerId:Ljava/lang/String;

    invoke-static {v2}, Lcom/helpshift/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 608
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;
    .registers 3

    const-class v0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->mInstance:Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;

    if-nez v1, :cond_e

    .line 74
    new-instance v1, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;

    invoke-direct {v1, p0}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->mInstance:Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;

    .line 76
    :cond_e
    sget-object p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->mInstance:Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getIntentsFlatList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-static {p1}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_11

    return-object v0

    .line 198
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 199
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 200
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->children:Ljava/util/List;

    invoke-static {v2}, Lcom/helpshift/util/ListUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 202
    iget-object v2, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->children:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 203
    iget-object p1, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_11

    :cond_33
    return-object v0
.end method

.method private getSmartIntents(J)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;"
        }
    .end annotation

    const-string v3, "tree_local_id = ? "

    const/4 v0, 0x1

    .line 533
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    .line 535
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 537
    :try_start_12
    iget-object v0, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_intents_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 538
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 545
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 547
    :cond_28
    invoke-direct {p0, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->cursorToSmartIntent(Landroid/database/Cursor;)Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    move-result-object v0

    .line 548
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_33} :catch_3a
    .catchall {:try_start_12 .. :try_end_33} :catchall_38

    if-nez v0, :cond_28

    :cond_35
    if-eqz p2, :cond_47

    goto :goto_44

    :catchall_38
    move-exception p1

    goto :goto_48

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v1, "Helpshift_SiDB"

    const-string v2, "Error in reading smart intents from db"

    .line 553
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    if-eqz p2, :cond_47

    .line 557
    :goto_44
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_47
    return-object p1

    :goto_48
    if-eqz p2, :cond_4d

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 559
    :cond_4d
    throw p1

    return-void
.end method

.method private declared-synchronized insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .registers 8

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 314
    :try_start_3
    iget-object v2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, 0x0

    .line 315
    invoke-virtual {v2, p2, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_11
    .catchall {:try_start_3 .. :try_end_e} :catchall_f

    goto :goto_28

    :catchall_f
    move-exception p1

    goto :goto_2a

    :catch_11
    move-exception p1

    :try_start_12
    const-string v2, "Helpshift_SiDB"

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in inserting in table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_f

    .line 320
    :goto_28
    monitor-exit p0

    return-wide v0

    :goto_2a
    monitor-exit p0

    throw p1
.end method

.method private insertSmartIntents(JLjava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "Error in ending the insert txn in smart intents table: "

    const-string v1, "Helpshift_SiDB"

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_12
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    .line 147
    invoke-direct {p0, v4, p1, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->smartIntentToContentValues(Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;J)Landroid/content/ContentValues;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_26
    const/4 p1, 0x0

    .line 152
    :try_start_27
    iget-object p2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_64
    .catchall {:try_start_27 .. :try_end_2d} :catchall_5f

    .line 153
    :try_start_2d
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 154
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_34
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "si_intents_table"

    .line 155
    invoke-virtual {p2, v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 156
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 158
    :cond_4e
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_51} :catch_5d
    .catchall {:try_start_2d .. :try_end_51} :catchall_81

    if-eqz p2, :cond_80

    .line 166
    :try_start_53
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 167
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5c} :catch_7c

    goto :goto_80

    :catch_5d
    move-exception p1

    goto :goto_68

    :catchall_5f
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    goto :goto_82

    :catch_64
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    .line 161
    :goto_68
    :try_start_68
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string p3, "Error in inserting in smart intents table: "

    .line 162
    invoke-static {v1, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_81

    if-eqz p2, :cond_80

    .line 166
    :try_start_72
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_80

    .line 167
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 171
    invoke-static {v1, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_80
    :goto_80
    return-object v2

    :catchall_81
    move-exception p1

    :goto_82
    if-eqz p2, :cond_92

    .line 166
    :try_start_84
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p3

    if-eqz p3, :cond_92

    .line 167
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception p2

    .line 171
    invoke-static {v1, v0, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_92
    :goto_92
    throw p1

    return-void
.end method

.method private insertWordProbabilities(JLjava/util/Map;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "Error in ending the insert txn in word probabilities table: "

    const-string v1, "Helpshift_SiDB"

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 266
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {p0, p1, p2, v5, v4}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->wordProbabilitiesToContentValues(JLjava/lang/String;Ljava/util/List;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_36
    const/4 p1, 0x0

    .line 273
    :try_start_37
    iget-object p2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3d} :catch_74
    .catchall {:try_start_37 .. :try_end_3d} :catchall_6f

    .line 274
    :try_start_3d
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 275
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_44
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "si_word_probabilities_table"

    .line 277
    invoke-virtual {p2, v4, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 278
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 280
    :cond_5e
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_61} :catch_6d
    .catchall {:try_start_3d .. :try_end_61} :catchall_91

    if-eqz p2, :cond_90

    .line 288
    :try_start_63
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 289
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6c} :catch_8c

    goto :goto_90

    :catch_6d
    move-exception p1

    goto :goto_78

    :catchall_6f
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    goto :goto_92

    :catch_74
    move-exception p2

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 283
    :goto_78
    :try_start_78
    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string p3, "Error in inserting in word probabilities table: "

    .line 284
    invoke-static {v1, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_78 .. :try_end_80} :catchall_91

    if-eqz p2, :cond_90

    .line 288
    :try_start_82
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 289
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8b} :catch_8c

    goto :goto_90

    :catch_8c
    move-exception p1

    .line 293
    invoke-static {v1, v0, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    return-object v2

    :catchall_91
    move-exception p1

    :goto_92
    if-eqz p2, :cond_a2

    .line 288
    :try_start_94
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result p3

    if-eqz p3, :cond_a2

    .line 289
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9d} :catch_9e

    goto :goto_a2

    :catch_9e
    move-exception p2

    .line 293
    invoke-static {v1, v0, p2}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    :cond_a2
    :goto_a2
    throw p1

    return-void
.end method

.method private smartIntentModelToContentValues(JLcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;)Landroid/content/ContentValues;
    .registers 9

    .line 244
    iget-object v0, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->leafIntentServerIds:Ljava/util/List;

    .line 245
    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    iget-object v1, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->leafIntentBaseProbabilities:Ljava/util/List;

    .line 247
    invoke-static {v1}, Lcom/helpshift/util/HSJSONUtils;->doubleListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    iget-object v3, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->localId:Ljava/lang/Long;

    const-string v4, "local_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "tree_local_id"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    iget-object p1, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->version:Ljava/lang/Integer;

    const-string p2, "version"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-wide p1, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->lastRefreshedAt:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "last_refreshed_at"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 253
    iget-object p1, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->confidenceThreshold:Ljava/lang/Double;

    const-string p2, "confidence_threshold"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 254
    iget-object p1, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->maxCombinedConfidence:Ljava/lang/Double;

    const-string p2, "max_combined_confidence"

    invoke-virtual {v2, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string p1, "leaf_intent_server_ids"

    .line 255
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "leaf_intent_base_probabilities"

    .line 256
    invoke-virtual {v2, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private smartIntentToContentValues(Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;J)Landroid/content/ContentValues;
    .registers 5

    .line 210
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 211
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "tree_local_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->label:Ljava/lang/String;

    const-string p3, "label"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->serverId:Ljava/lang/String;

    const-string p3, "server_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object p1, p1, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;->parentServerId:Ljava/lang/String;

    const-string p2, "parent_server_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private smartIntentTreeToContentValues(Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;Lcom/helpshift/account/domainmodel/UserDM;)Landroid/content/ContentValues;
    .registers 6

    .line 124
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 125
    invoke-virtual {p2}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object p2

    const-string v1, "user_local_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->serverId:Ljava/lang/String;

    const-string v1, "server_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->version:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "tree_version"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    iget-boolean p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->enforceIntentSelection:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "enforce_intent_selection"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    iget-wide v1, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->lastRefreshedAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "last_refreshed_at"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->promptTitle:Ljava/lang/String;

    const-string v1, "prompt_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->textInputHint:Ljava/lang/String;

    const-string v1, "text_input_hint"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->searchTitle:Ljava/lang/String;

    const-string v1, "search_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->emptySearchTitle:Ljava/lang/String;

    const-string v1, "empty_search_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p2, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->emptySearchDescription:Ljava/lang/String;

    const-string v1, "empty_search_description"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object p1, p1, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->tokenDelimiter:Ljava/util/List;

    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->listToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "token_delimiter"

    .line 135
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private wordProbabilitiesToContentValues(JLjava/lang/String;Ljava/util/List;)Landroid/content/ContentValues;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 301
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 302
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "model_local_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "word"

    .line 303
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {p4}, Lcom/helpshift/util/HSJSONUtils;->doubleListToJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "probabilities"

    .line 306
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized deleteModel(J)Z
    .registers 11

    monitor-enter p0

    :try_start_1
    const-string v3, "tree_local_id = ? "

    const/4 v0, 0x1

    .line 415
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4d

    const/4 p1, 0x0

    .line 419
    :try_start_e
    iget-object v0, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_models_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 421
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 429
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "local_id"

    .line 430
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 431
    invoke-direct {p0, v0, v1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->deleteModelAndWordProbabilities(J)Z

    move-result p2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_3a
    .catchall {:try_start_e .. :try_end_32} :catchall_38

    :cond_32
    if-eqz p1, :cond_45

    .line 439
    :goto_34
    :try_start_34
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_4d

    goto :goto_45

    :catchall_38
    move-exception p2

    goto :goto_47

    :catch_3a
    move-exception v0

    :try_start_3b
    const-string v1, "Helpshift_SiDB"

    const-string v2, "Error in deleting the model table"

    .line 435
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    if-eqz p1, :cond_45

    goto :goto_34

    .line 442
    :cond_45
    :goto_45
    monitor-exit p0

    return p2

    :goto_47
    if-eqz p1, :cond_4c

    .line 439
    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 441
    :cond_4c
    throw p2
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized deleteTreeAndModel(Lcom/helpshift/account/domainmodel/UserDM;)Z
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v3, "user_local_id = ? "

    const/4 v8, 0x1

    .line 332
    new-array v4, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    aput-object p1, v4, v9
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_5e

    const/4 p1, 0x0

    .line 336
    :try_start_12
    iget-object v0, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {v0}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_tree_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 338
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 346
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "local_id"

    .line 347
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 348
    invoke-direct {p0, v0, v1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->deleteTreeAndSmartIntents(J)Z

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_36} :catch_4b
    .catchall {:try_start_12 .. :try_end_36} :catchall_49

    if-eqz v2, :cond_43

    .line 349
    :try_start_38
    invoke-virtual {p0, v0, v1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->deleteModel(J)Z

    move-result v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3c} :catch_40
    .catchall {:try_start_38 .. :try_end_3c} :catchall_49

    if-eqz v0, :cond_43

    const/4 v9, 0x1

    goto :goto_43

    :catch_40
    move-exception v0

    move v9, v2

    goto :goto_4c

    :cond_43
    :goto_43
    if-eqz p1, :cond_56

    .line 357
    :goto_45
    :try_start_45
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5e

    goto :goto_56

    :catchall_49
    move-exception v0

    goto :goto_58

    :catch_4b
    move-exception v0

    :goto_4c
    :try_start_4c
    const-string v1, "Helpshift_SiDB"

    const-string v2, "Error in deleting the tree and model"

    .line 353
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_49

    if-eqz p1, :cond_56

    goto :goto_45

    .line 360
    :cond_56
    :goto_56
    monitor-exit p0

    return v9

    :goto_58
    if-eqz p1, :cond_5d

    .line 357
    :try_start_5a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public getModelWithoutWordProbabilities(J)Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;
    .registers 12

    const-string v3, "tree_local_id = ? "

    const/4 v0, 0x1

    .line 670
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 p1, 0x0

    .line 674
    :try_start_d
    iget-object p2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_models_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 675
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_34
    .catchall {:try_start_d .. :try_end_1d} :catchall_2f

    .line 683
    :try_start_1d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 684
    invoke-direct {p0, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->cursorToModelWithoutWordProbabilities(Landroid/database/Cursor;)Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_2d
    .catchall {:try_start_1d .. :try_end_27} :catchall_41

    :cond_27
    if-eqz p2, :cond_40

    .line 692
    :goto_29
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_40

    :catch_2d
    move-exception v0

    goto :goto_36

    :catchall_2f
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_42

    :catch_34
    move-exception v0

    move-object p2, p1

    :goto_36
    :try_start_36
    const-string v1, "Helpshift_SiDB"

    const-string v2, "Error in reading the search model "

    .line 688
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_41

    if-eqz p2, :cond_40

    goto :goto_29

    :cond_40
    :goto_40
    return-object p1

    :catchall_41
    move-exception p1

    :goto_42
    if-eqz p2, :cond_47

    .line 692
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_47
    throw p1

    return-void
.end method

.method public getSmartIntentTree(J)Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;
    .registers 12

    const-string v3, "user_local_id = ? "

    const/4 v0, 0x1

    .line 498
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 p1, 0x0

    .line 502
    :try_start_d
    iget-object p2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_tree_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 504
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_46
    .catchall {:try_start_d .. :try_end_1d} :catchall_41

    .line 512
    :try_start_1d
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "local_id"

    .line 513
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 514
    invoke-direct {p0, v0, v1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->getSmartIntents(J)Ljava/util/List;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->buildIntentTree(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 516
    invoke-direct {p0, p2, v0}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->cursorToSmartIntentTree(Landroid/database/Cursor;Ljava/util/List;)Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;

    move-result-object p1
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_39} :catch_3f
    .catchall {:try_start_1d .. :try_end_39} :catchall_53

    :cond_39
    if-eqz p2, :cond_52

    .line 524
    :goto_3b
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_52

    :catch_3f
    move-exception v0

    goto :goto_48

    :catchall_41
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_54

    :catch_46
    move-exception v0

    move-object p2, p1

    :goto_48
    :try_start_48
    const-string v1, "Helpshift_SiDB"

    const-string v2, "Error in reading smart intent tree"

    .line 520
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_53

    if-eqz p2, :cond_52

    goto :goto_3b

    :cond_52
    :goto_52
    return-object p1

    :catchall_53
    move-exception p1

    :goto_54
    if-eqz p2, :cond_59

    .line 524
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_59
    throw p1

    return-void
.end method

.method public getWordToIntentProbabilities(JLjava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v3, "model_local_id = ? AND word = ?"

    const/4 v0, 0x2

    .line 754
    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 p1, 0x0

    .line 758
    :try_start_14
    iget-object p2, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p2}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "si_word_probabilities_table"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 759
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_24} :catch_3b
    .catchall {:try_start_14 .. :try_end_24} :catchall_36

    .line 766
    :try_start_24
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2e

    .line 767
    invoke-direct {p0, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->cursorToWordProbabilities(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_34
    .catchall {:try_start_24 .. :try_end_2e} :catchall_48

    :cond_2e
    if-eqz p2, :cond_47

    .line 775
    :goto_30
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_47

    :catch_34
    move-exception p3

    goto :goto_3d

    :catchall_36
    move-exception p2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_49

    :catch_3b
    move-exception p3

    move-object p2, p1

    :goto_3d
    :try_start_3d
    const-string v0, "Helpshift_SiDB"

    const-string v1, "Error in getting word probabilities "

    .line 771
    invoke-static {v0, v1, p3}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_48

    if-eqz p2, :cond_47

    goto :goto_30

    :cond_47
    :goto_47
    return-object p1

    :catchall_48
    move-exception p1

    :goto_49
    if-eqz p2, :cond_4e

    .line 775
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_4e
    throw p1

    return-void
.end method

.method public declared-synchronized insertModel(JLcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;)Z
    .registers 8

    monitor-enter p0

    .line 227
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->smartIntentModelToContentValues(JLcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "si_models_table"

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_28

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_14

    .line 230
    monitor-exit p0

    return v2

    .line 232
    :cond_14
    :try_start_14
    iget-object p3, p3, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;->wordToLeafIntentProbabilitiesMapping:Ljava/util/Map;

    .line 233
    invoke-direct {p0, p1, p2, p3}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->insertWordProbabilities(JLjava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 234
    invoke-static {p3}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_25

    .line 235
    invoke-direct {p0, p1, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->deleteModelAndWordProbabilities(J)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_28

    .line 236
    monitor-exit p0

    return v2

    :cond_25
    const/4 p1, 0x1

    .line 239
    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized insertTree(Lcom/helpshift/account/domainmodel/UserDM;Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;)Z
    .registers 8

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-direct {p0, p2, p1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->smartIntentTreeToContentValues(Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;Lcom/helpshift/account/domainmodel/UserDM;)Landroid/content/ContentValues;

    move-result-object p1

    const-string v0, "si_tree_table"

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_2c

    const-wide/16 v2, -0x1

    const/4 p1, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_14

    .line 90
    monitor-exit p0

    return p1

    .line 92
    :cond_14
    :try_start_14
    iget-object p2, p2, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;->rootIntents:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->getIntentsFlatList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 93
    invoke-direct {p0, v0, v1, p2}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->insertSmartIntents(JLjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 94
    invoke-static {p2}, Lcom/helpshift/util/ListUtils;->isEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 95
    invoke-direct {p0, v0, v1}, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->deleteTreeAndSmartIntents(J)Z
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2c

    .line 96
    monitor-exit p0

    return p1

    :cond_29
    const/4 p1, 0x1

    .line 99
    monitor-exit p0

    return p1

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateModelRefreshedAt(JJ)Z
    .registers 8

    monitor-enter p0

    .line 726
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "last_refreshed_at"

    .line 727
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "tree_local_id = ? "

    const/4 p4, 0x1

    .line 729
    new-array v1, p4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_32

    .line 731
    :try_start_1b
    iget-object p1, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "si_models_table"

    .line 732
    invoke-virtual {p1, v2, v0, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_28
    .catchall {:try_start_1b .. :try_end_26} :catchall_32

    const/4 p2, 0x1

    goto :goto_30

    :catch_28
    move-exception p1

    :try_start_29
    const-string p3, "Helpshift_SiDB"

    const-string p4, "Error in updating model refreshedAt"

    .line 739
    invoke-static {p3, p4, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_32

    .line 741
    :goto_30
    monitor-exit p0

    return p2

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTreeRefreshedAt(Lcom/helpshift/account/domainmodel/UserDM;J)Z
    .registers 8

    monitor-enter p0

    .line 105
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "last_refreshed_at"

    .line 106
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "user_local_id = ? "

    const/4 p3, 0x1

    .line 108
    new-array v1, p3, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/helpshift/account/domainmodel/UserDM;->getLocalId()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_36

    .line 110
    :try_start_1f
    iget-object p1, p0, Lcom/helpshift/db/conversation/smartintent/SmartIntentDB;->siDbHelper:Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;

    invoke-virtual {p1}, Lcom/helpshift/db/smartintents/SmartIntentsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v3, "si_tree_table"

    .line 111
    invoke-virtual {p1, v3, v0, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2a} :catch_2b
    .catchall {:try_start_1f .. :try_end_2a} :catchall_36

    goto :goto_34

    :catch_2b
    move-exception p1

    :try_start_2c
    const-string p2, "Helpshift_SiDB"

    const-string p3, "Error in updating tree refreshedAt"

    .line 118
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_36

    const/4 p3, 0x0

    .line 120
    :goto_34
    monitor-exit p0

    return p3

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method
