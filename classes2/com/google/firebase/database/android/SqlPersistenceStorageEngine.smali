.class public Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHILDREN_NODE_SPLIT_SIZE_THRESHOLD:I = 0x4000

.field private static final CREATE_SERVER_CACHE:Ljava/lang/String; = "CREATE TABLE serverCache (path TEXT PRIMARY KEY, value BLOB);"

.field private static final CREATE_TRACKED_KEYS:Ljava/lang/String; = "CREATE TABLE trackedKeys (id INTEGER, key TEXT);"

.field private static final CREATE_TRACKED_QUERIES:Ljava/lang/String; = "CREATE TABLE trackedQueries (id INTEGER PRIMARY KEY, path TEXT, queryParams TEXT, lastUse INTEGER, complete INTEGER, active INTEGER);"

.field private static final CREATE_WRITES:Ljava/lang/String; = "CREATE TABLE writes (id INTEGER, path TEXT, type TEXT, part INTEGER, node BLOB, UNIQUE (id, part));"

.field private static final FIRST_PART_KEY:Ljava/lang/String; = ".part-0000"

.field private static final LOGGER_COMPONENT:Ljava/lang/String; = "Persistence"

.field private static final PART_KEY_FORMAT:Ljava/lang/String; = ".part-%04d"

.field private static final PART_KEY_PREFIX:Ljava/lang/String; = ".part-"

.field private static final PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final ROW_ID_COLUMN_NAME:Ljava/lang/String; = "rowid"

.field private static final ROW_SPLIT_SIZE:I = 0x40000

.field private static final SERVER_CACHE_TABLE:Ljava/lang/String; = "serverCache"

.field private static final TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String; = "key"

.field private static final TRACKED_KEYS_TABLE:Ljava/lang/String; = "trackedKeys"

.field private static final TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String; = "active"

.field private static final TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String; = "complete"

.field private static final TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String; = "lastUse"

.field private static final TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String; = "queryParams"

.field private static final TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String; = "path"

.field private static final TRACKED_QUERY_TABLE:Ljava/lang/String; = "trackedQueries"

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static final VALUE_COLUMN_NAME:Ljava/lang/String; = "value"

.field private static final WRITES_TABLE:Ljava/lang/String; = "writes"

.field private static final WRITE_ID_COLUMN_NAME:Ljava/lang/String; = "id"

.field private static final WRITE_NODE_COLUMN_NAME:Ljava/lang/String; = "node"

.field private static final WRITE_PART_COLUMN_NAME:Ljava/lang/String; = "part"

.field private static final WRITE_TYPE_COLUMN_NAME:Ljava/lang/String; = "type"

.field private static final WRITE_TYPE_MERGE:Ljava/lang/String; = "m"

.field private static final WRITE_TYPE_OVERWRITE:Ljava/lang/String; = "o"


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private insideTransaction:Z

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private transactionStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    .line 155
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/database/core/Context;Ljava/lang/String;)V
    .registers 6

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 203
    iput-wide v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    :try_start_7
    const-string v0, "utf-8"

    .line 209
    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_1c

    const-string v0, "Persistence"

    .line 213
    invoke-virtual {p2, v0}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    .line 214
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :catch_1c
    move-exception p1

    .line 211
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static buildAncestorWhereClause(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1047
    :goto_8
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    const-string v3, "path"

    if-nez v2, :cond_25

    .line 1048
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? OR "

    .line 1049
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    invoke-static {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 1051
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1054
    :cond_25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " = ?)"

    .line 1055
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    .line 1057
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-nez v1, :cond_21

    const-string v1, ","

    .line 1116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const/4 v1, 0x0

    .line 1119
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1121
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;
    .registers 6

    .line 1103
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1104
    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p1

    :catch_10
    move-exception v0

    .line 1106
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1107
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not deserialize node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private joinBytes(Ljava/util/List;)[B
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 1081
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1082
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 1084
    :cond_15
    new-array v0, v2, [B

    .line 1086
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1087
    array-length v4, v3

    invoke-static {v3, v1, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_1c

    :cond_2f
    return-object v0
.end method

.method private loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 917
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "path"

    const-string v7, "value"

    .line 921
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 923
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 925
    :goto_27
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v11, :cond_3e

    .line 926
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_1ce

    goto :goto_27

    .line 930
    :cond_3e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 932
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v9

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 935
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v6

    .line 937
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v16, v6

    const/4 v6, 0x0

    const/16 v17, 0x0

    .line 938
    :goto_58
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_146

    .line 941
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, ".part-0000"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_ca

    .line 944
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 945
    new-instance v13, Lcom/google/firebase/database/core/Path;

    .line 946
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    move-wide/from16 v19, v14

    add-int/lit8 v14, v18, -0xa

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-direct {v1, v13, v2, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitNodeRunLength(Lcom/google/firebase/database/core/Path;Ljava/util/List;I)I

    move-result v12

    .line 948
    iget-object v14, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v14}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v14

    if-eqz v14, :cond_b3

    .line 949
    iget-object v14, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    const-string v13, "Loading split node with "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " parts."

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v21, v7

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Object;

    invoke-virtual {v14, v13, v7}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b7

    :cond_b3
    move-wide/from16 v21, v7

    move-object/from16 v18, v13

    :goto_b7
    add-int/2addr v12, v6

    .line 951
    invoke-interface {v3, v6, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    const/4 v7, 0x1

    add-int/lit8 v8, v12, -0x1

    move-object/from16 v13, v18

    goto :goto_e5

    :cond_ca
    move-wide/from16 v21, v7

    move-wide/from16 v19, v14

    .line 955
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {v1, v7}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 956
    new-instance v13, Lcom/google/firebase/database/core/Path;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v13, v8}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    move v8, v6

    move-object v6, v7

    .line 958
    :goto_e5
    invoke-virtual {v13}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    if-eqz v7, :cond_fa

    invoke-virtual {v13}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 961
    invoke-interface {v11, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f8
    const/4 v6, 0x1

    goto :goto_127

    .line 962
    :cond_fa
    invoke-virtual {v13, v0}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-eqz v7, :cond_112

    xor-int/lit8 v7, v17, 0x1

    const-string v12, "Descendants of path must come after ancestors."

    .line 963
    invoke-static {v7, v12}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 964
    invoke-static {v13, v0}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    move-object/from16 v16, v6

    goto :goto_f8

    .line 965
    :cond_112
    invoke-virtual {v0, v13}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-eqz v7, :cond_131

    .line 967
    invoke-static {v0, v13}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    move-object/from16 v12, v16

    .line 968
    invoke-interface {v12, v7, v6}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    move-object/from16 v16, v6

    const/4 v6, 0x1

    const/16 v17, 0x1

    :goto_127
    add-int/lit8 v7, v8, 0x1

    move v6, v7

    move-wide/from16 v14, v19

    move-wide/from16 v7, v21

    const/4 v13, 0x0

    goto/16 :goto_58

    :cond_131
    const/4 v6, 0x1

    .line 970
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v3, v4

    aput-object v0, v3, v6

    const-string v0, "Loading an unrelated row with path %s for %s"

    .line 971
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_146
    move-wide/from16 v21, v7

    move-wide/from16 v19, v14

    move-object/from16 v12, v16

    .line 976
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_154
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_175

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 977
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/core/Path;

    .line 978
    invoke-static {v0, v7}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v12, v7, v6}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    goto :goto_154

    .line 981
    :cond_175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    .line 982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    .line 983
    iget-object v2, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 984
    iget-object v2, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 988
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 989
    invoke-static {v12}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->nodeCount(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v3, 0x2

    aput-object v0, v4, v3

    const/4 v0, 0x3

    .line 991
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    .line 992
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x5

    .line 993
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const/4 v0, 0x6

    .line 994
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v0, "Loaded a total of %d rows for a total of %d nodes at %s in %dms (Query: %dms, Loading: %dms, Serializing: %dms)"

    .line 985
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 984
    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1cd
    return-object v12

    :catchall_1ce
    move-exception v0

    .line 930
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    return-void
.end method

.method private loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 1017
    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    invoke-static {v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    .line 1021
    invoke-static {p1, v7}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->buildAncestorWhereClause(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1022
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " OR (path > ? AND path < ?)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1023
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v7, v2

    .line 1024
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    aput-object v1, v7, p1

    .line 1027
    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "path"

    const-string v4, "serverCache"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    .line 798
    new-instance v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 805
    :try_start_5
    invoke-virtual {v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "PRAGMA locking_mode = EXCLUSIVE"

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 813
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 814
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 820
    instance-of p2, p1, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz p2, :cond_27

    .line 830
    new-instance p2, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Failed to gain exclusive lock to Firebase Database\'s offline persistence. This generally means you are using Firebase Database from multiple processes in your app. Keep in mind that multi-process Android apps execute the code in your Application class in all processes, so you may need to avoid initializing FirebaseDatabase in your Application class. If you are intentionally using Firebase Database from multiple processes, you can only enable offline persistence (i.e. call setPersistenceEnabled(true)) in one of them."

    invoke-direct {p2, v0, p1}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 832
    :cond_27
    throw p1
.end method

.method private partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;
    .registers 5

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const-string p2, ".part-%04d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x30

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;
    .registers 3

    .line 1031
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_9

    return-object v1

    .line 1034
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/firebase/database/core/persistence/PruneForest;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/utilities/Pair<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;>;)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 695
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x0

    .line 699
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;

    invoke-direct {v2, p0, v8}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;-><init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    .line 698
    invoke-virtual {v9, v1, v2}, Lcom/google/firebase/database/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_97

    .line 708
    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 709
    iget-object v3, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 710
    iget-object v3, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 711
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Need to rewrite %d nodes below path %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 710
    invoke-virtual {v3, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    :cond_46
    invoke-direct {p0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    const/4 v6, 0x0

    .line 714
    new-instance v10, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;-><init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v9, v6, v10}, Lcom/google/firebase/database/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    goto :goto_97

    .line 731
    :cond_5b
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_63
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 732
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 733
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {v9, v2}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v5

    move-object v11, p2

    .line 736
    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 737
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 738
    invoke-virtual {v8, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    .line 734
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V

    goto :goto_63

    :cond_97
    :goto_97
    return-void
.end method

.method private removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I
    .registers 7

    .line 1062
    invoke-static {p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object p2

    .line 1063
    invoke-static {p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object v0, v2, p2

    const-string p2, "path >= ? AND path < ?"

    invoke-virtual {v1, p1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I
    .registers 9

    .line 851
    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v0

    .line 852
    instance-of v2, p2, Lcom/google/firebase/database/snapshot/ChildrenNode;

    const/4 v3, 0x1

    if-eqz v2, :cond_7f

    const-wide/16 v4, 0x4000

    cmp-long v2, v0, v4

    if-lez v2, :cond_7f

    .line 853
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_39

    .line 854
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    .line 858
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v3

    const/4 v0, 0x2

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Node estimated serialized size at path %s of %d bytes exceeds limit of %d bytes. Splitting up."

    .line 855
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 854
    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 862
    :cond_39
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 863
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_3d

    .line 865
    :cond_5b
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    .line 866
    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    add-int/lit8 v4, v4, 0x1

    .line 872
    :cond_76
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    add-int/2addr v4, v3

    return v4

    .line 877
    :cond_7f
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    return v3
.end method

.method private saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 12

    const/4 v0, 0x1

    .line 887
    invoke-interface {p2, v0}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object p2

    .line 888
    array-length v0, p2

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "serverCache"

    const-string v4, "value"

    const-string v5, "path"

    const/high16 v6, 0x40000

    if-lt v0, v6, :cond_67

    .line 889
    invoke-static {p2, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object p2

    .line 890
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_44

    .line 891
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Saving huge leaf node with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " parts."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 893
    :cond_44
    :goto_44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_7b

    .line 894
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 895
    invoke-direct {p0, p1, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 897
    iget-object v7, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 901
    :cond_67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 902
    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 904
    iget-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v3, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_7b
    return-void
.end method

.method private saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 322
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 323
    iget-object v3, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 324
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "writes"

    const-string v7, "id = ?"

    .line 323
    invoke-virtual {v3, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    array-length v3, v2

    const/4 v4, 0x5

    const-string v7, "node"

    const-string v8, "part"

    const-string v9, "type"

    const-string v10, "path"

    const-string v11, "id"

    const/high16 v12, 0x40000

    const/4 v13, 0x0

    if-lt v3, v12, :cond_64

    .line 326
    invoke-static {v2, v12}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v2

    .line 327
    :goto_30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_88

    .line 328
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 329
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 330
    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v3, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    invoke-virtual {v3, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 334
    iget-object v12, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v12, v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 337
    :cond_64
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 338
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v3, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object v1, v13

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 343
    iget-object v1, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v5, v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_88
    return-void
.end method

.method private serializeObject(Ljava/lang/Object;)[B
    .registers 4

    .line 1095
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/database/util/JsonMapper;->serializeJsonValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    .line 1097
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize leaf node"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static splitBytes([BI)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1068
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 1069
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_22

    .line 1071
    array-length v4, p0

    mul-int v5, v3, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1072
    new-array v6, v4, [B

    .line 1073
    invoke-static {p0, v5, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1074
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_22
    return-object v1
.end method

.method private splitNodeRunLength(Lcom/google/firebase/database/core/Path;Ljava/util/List;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v0, p3, 0x1

    .line 1001
    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 1005
    :goto_12
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 1006
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sub-int v3, v0, p3

    invoke-direct {p0, p1, v3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 1009
    :cond_2d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_59

    .line 1010
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".part-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_59

    .line 1011
    :cond_51
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Run did not finish with all parts"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_59
    :goto_59
    sub-int/2addr v0, p3

    return v0

    .line 1003
    :cond_5b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Extracting split nodes needs to start with path prefix"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method private updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V
    .registers 11

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "serverCache"

    const/4 v3, 0x0

    if-nez p3, :cond_12

    .line 369
    invoke-direct {p0, v2, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result p3

    .line 370
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result p2

    goto :goto_44

    .line 374
    :cond_12
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v4, 0x0

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 375
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result v6

    add-int/2addr p3, v6

    .line 376
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-direct {p0, v6, v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_18

    :cond_43
    move p2, v4

    .line 379
    :goto_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 380
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 381
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p2

    const/4 p2, 0x2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const/4 p1, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Persisted a total of %d rows and deleted %d rows for a set at %s in %dms"

    .line 382
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    .line 381
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7c
    return-void
.end method

.method private verifyInsideTransaction()V
    .registers 3

    .line 838
    iget-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    const-string v1, "Transaction expected to already be in progress."

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .registers 5

    .line 766
    iget-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "runInTransaction called when an existing transaction is already in progress."

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 770
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Starting transaction."

    invoke-virtual {v0, v3, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    :cond_1b
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 773
    iput-boolean v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    return-void
.end method

.method public close()V
    .registers 2

    .line 794
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public deleteTrackedQuery(J)V
    .registers 8

    .line 446
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 447
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "id = ?"

    const-string v4, "trackedQueries"

    invoke-virtual {p2, v4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    const-string p1, "trackedKeys"

    invoke-virtual {p2, p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public endTransaction()V
    .registers 6

    .line 779
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v0, 0x0

    .line 780
    iput-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    sub-long/2addr v1, v3

    .line 782
    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 783
    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v1, "Transaction completed. Elapsed: %dms"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    return-void
.end method

.method public loadTrackedQueries()Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "id"

    const-string v3, "path"

    const-string v4, "queryParams"

    const-string v5, "lastUse"

    const-string v6, "complete"

    const-string v7, "active"

    .line 457
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v10

    .line 466
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 467
    iget-object v8, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "trackedQueries"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, "id"

    .line 468
    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    :goto_29
    :try_start_29
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_78

    .line 480
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 481
    new-instance v5, Lcom/google/firebase/database/core/Path;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_a8

    .line 485
    :try_start_43
    invoke-static {v6}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_47} :catch_70
    .catchall {:try_start_43 .. :try_end_47} :catchall_a8

    .line 489
    :try_start_47
    invoke-static {v5, v6}, Lcom/google/firebase/database/core/view/QuerySpec;->fromPathAndQueryObject(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v12

    const/4 v5, 0x3

    .line 490
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v5, 0x4

    .line 491
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_59

    const/4 v15, 0x1

    goto :goto_5a

    :cond_59
    const/4 v15, 0x0

    :goto_5a
    const/4 v5, 0x5

    .line 492
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_64

    const/16 v16, 0x1

    goto :goto_66

    :cond_64
    const/16 v16, 0x0

    .line 493
    :goto_66
    new-instance v5, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    .line 494
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :catch_70
    move-exception v0

    move-object v2, v0

    .line 487
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 496
    :cond_78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    .line 497
    iget-object v2, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 498
    iget-object v2, v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v3, "Loaded %d tracked queries in %dms"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a4
    .catchall {:try_start_47 .. :try_end_a4} :catchall_a8

    .line 502
    :cond_a4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_a8
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    return-void
.end method

.method public loadTrackedQueryKeys(J)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .line 581
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    .line 586
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    invoke-direct {p0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 590
    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "trackedKeys"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 591
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 602
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 604
    :goto_37
    :try_start_37
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 605
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 606
    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 608
    :cond_4a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v11

    .line 609
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 610
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v6, "Loaded %d tracked queries keys for tracked queries %s in %dms"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 613
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v8

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, p1

    .line 611
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    .line 610
    invoke-virtual {v2, p1, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7f
    .catchall {:try_start_37 .. :try_end_7f} :catchall_83

    .line 617
    :cond_7f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_83
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p1

    return-void
.end method

.method public loadUserWrites()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    const-string v1, "path"

    const-string v2, "type"

    const-string v3, "part"

    const-string v4, "node"

    .line 255
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 264
    iget-object v5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "writes"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "id, part"

    .line 265
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    :goto_25
    :try_start_25
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_bb

    .line 277
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 278
    new-instance v11, Lcom/google/firebase/database/core/Path;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v11, v4}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 281
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_4c

    .line 283
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    goto :goto_6d

    .line 286
    :cond_4c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 288
    :cond_51
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v8, v12, v9

    if-eqz v8, :cond_51

    .line 291
    :cond_66
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 292
    invoke-direct {p0, v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v5

    .line 294
    :goto_6d
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 295
    invoke-static {v6}, Lcom/google/firebase/database/util/JsonMapper;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "o"

    .line 297
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 298
    invoke-static {v5}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v12

    .line 299
    new-instance v4, Lcom/google/firebase/database/core/UserWriteRecord;

    const/4 v13, 0x1

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    goto :goto_a0

    :cond_8c
    const-string v6, "m"

    .line 300
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 302
    check-cast v5, Ljava/util/Map;

    invoke-static {v5}, Lcom/google/firebase/database/core/CompoundWrite;->fromValue(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    .line 303
    new-instance v5, Lcom/google/firebase/database/core/UserWriteRecord;

    invoke-direct {v5, v9, v10, v11, v4}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    move-object v4, v5

    .line 307
    :goto_a0
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 305
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got invalid write type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_bb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    .line 310
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 311
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const-string v1, "Loaded %d writes in %dms"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_e7} :catch_ed
    .catchall {:try_start_25 .. :try_end_e7} :catchall_eb

    .line 317
    :cond_e7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_eb
    move-exception v0

    goto :goto_f6

    :catch_ed
    move-exception v0

    .line 315
    :try_start_ee
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load writes"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_eb

    .line 317
    :goto_f6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    return-void
.end method

.method public mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .registers 11

    .line 390
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 394
    invoke-virtual {p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v6}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    const-string v7, "serverCache"

    invoke-direct {p0, v7, v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result v6

    add-int/2addr v3, v6

    .line 396
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v6}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v6, v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_e

    .line 398
    :cond_41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    .line 399
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 400
    iget-object p2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 403
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    const-string p1, "Persisted a total of %d rows and deleted %d rows for a merge at %s in %dms"

    .line 401
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    .line 400
    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_79
    return-void
.end method

.method public mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 4

    .line 360
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    return-void
.end method

.method public overwriteServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .registers 4

    .line 354
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    return-void
.end method

.method public pruneCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/persistence/PruneForest;)V
    .registers 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v5, p2

    .line 623
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/persistence/PruneForest;->prunesAnything()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 626
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v0, "rowid"

    const-string v1, "path"

    .line 628
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 629
    new-instance v1, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    .line 630
    new-instance v2, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-direct {v2, v11}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v4, v2

    .line 631
    :goto_2d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_b1

    .line 632
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 633
    new-instance v3, Lcom/google/firebase/database/core/Path;

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v8, v3}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v6

    const-string v13, "We are pruning at "

    if-nez v6, :cond_6c

    .line 635
    iget-object v1, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " but we have data stored higher up at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    goto :goto_2d

    .line 642
    :cond_6c
    invoke-static {v8, v3}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    .line 643
    invoke-virtual {v5, v6}, Lcom/google/firebase/database/core/persistence/PruneForest;->shouldPruneUnkeptDescendants(Lcom/google/firebase/database/core/Path;)Z

    move-result v14

    if-eqz v14, :cond_7f

    .line 644
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v6, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v12

    goto :goto_2d

    .line 645
    :cond_7f
    invoke-virtual {v5, v6}, Lcom/google/firebase/database/core/persistence/PruneForest;->shouldKeep(Lcom/google/firebase/database/core/Path;)Z

    move-result v14

    if-eqz v14, :cond_8e

    .line 646
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    goto :goto_2d

    .line 652
    :cond_8e
    iget-object v1, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " and have data at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " that isn\'t marked for pruning or keeping. Ignoring."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    goto/16 :goto_2d

    .line 663
    :cond_b1
    invoke-virtual {v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11d

    .line 664
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 666
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v12

    move-object/from16 v5, p2

    move-object v6, v15

    .line 665
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V

    .line 668
    invoke-virtual {v12}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->values()Ljava/util/Collection;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowid IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    iget-object v2, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "serverCache"

    invoke-virtual {v2, v3, v1, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/utilities/Pair;

    .line 673
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/Path;

    invoke-virtual {v8, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {v7, v3, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    goto :goto_f4

    .line 676
    :cond_114
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 677
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_11f

    :cond_11d
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 679
    :goto_11f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    .line 680
    iget-object v4, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_14f

    .line 681
    iget-object v4, v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v13

    const/4 v0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Pruned %d rows with %d nodes resaved in %dms"

    .line 682
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v14, [Ljava/lang/Object;

    .line 681
    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_14f
    return-void
.end method

.method public purgeCache()V
    .registers 4

    .line 757
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 758
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v2, "serverCache"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 759
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "writes"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 760
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedQueries"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "trackedKeys"

    invoke-virtual {v0, v2, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeAllUserWrites()V
    .registers 7

    .line 747
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 749
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    const-string v4, "writes"

    invoke-virtual {v2, v4, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 751
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 752
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Deleted %d (all) write(s) in %dms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public removeUserWrite(J)V
    .registers 11

    .line 243
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "writes"

    const-string v7, "id = ?"

    invoke-virtual {v2, v5, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 247
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 248
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Deleted %d write(s) with writeId %d in %dms"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4b
    return-void
.end method

.method public resetPreviouslyActiveTrackedQueries(J)V
    .registers 12

    .line 508
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 513
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x0

    .line 514
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v4, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 515
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "lastUse"

    invoke-virtual {v4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v8, [Ljava/lang/String;

    const-string v5, "active = 1"

    const-string v3, "trackedQueries"

    const/4 v7, 0x5

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 520
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 521
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v8

    const-string p1, "Reset active tracked queries in %dms"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4e
    return-void
.end method

.method public saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .registers 8

    .line 427
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 429
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 430
    iget-wide v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    iget-object v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QueryParams;->toJSON()Ljava/lang/String;

    move-result-object v3

    const-string v4, "queryParams"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-wide v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "lastUse"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    iget-boolean v3, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "complete"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 435
    iget-boolean p1, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v3, "active"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 436
    iget-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "trackedQueries"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 439
    iget-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 440
    iget-object p1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Saved new tracked query in %dms"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_83
    return-void
.end method

.method public saveTrackedQueryKeys(JLjava/util/Set;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .line 527
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 530
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 532
    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string v2, "trackedKeys"

    const-string v7, "id = ?"

    invoke-virtual {v3, v2, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 534
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 535
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 536
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "id"

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "key"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v5, v2, v8, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1e

    .line 542
    :cond_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 543
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 544
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 547
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v4

    const/4 p1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Set %d tracked query keys for tracked query %d in %dms"

    .line 545
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    .line 544
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7d
    return-void
.end method

.method public saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V
    .registers 14

    .line 231
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 233
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "m"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    .line 234
    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 236
    iget-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 237
    iget-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "Persisted user merge in %dms"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V
    .registers 14

    .line 219
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 221
    invoke-interface {p2, v2}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v8

    const-string v7, "o"

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p3

    .line 222
    invoke-direct/range {v3 .. v8}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 224
    iget-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {p3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 225
    iget-object p3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-array p4, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "Persisted user overwrite in %dms"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p3, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public serverCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 349
    invoke-direct {p0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1
.end method

.method public serverCacheEstimatedSizeInBytes()J
    .registers 5

    const/4 v0, 0x3

    .line 409
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "path"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "serverCache"

    aput-object v3, v0, v2

    const-string v2, "SELECT sum(length(%s) + length(%s)) FROM %s"

    .line 410
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 415
    :try_start_1f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 416
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_35

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 418
    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t read database result!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v1

    .line 421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 789
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 558
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const-string v7, "trackedKeys"

    const/4 v8, 0x0

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 560
    iget-object v9, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v8

    .line 561
    invoke-virtual {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "id = ? AND key = ?"

    .line 560
    invoke-virtual {v9, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_f

    .line 563
    :cond_32
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 564
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 565
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v4, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "key"

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v9, 0x0

    const/4 v10, 0x5

    invoke-virtual {v3, v7, v9, v4, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_36

    .line 570
    :cond_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 571
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 572
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 575
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v8

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v6

    const/4 p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Updated tracked query keys (%d added, %d removed) for tracked query id %d in %dms"

    .line 573
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p2, v8, [Ljava/lang/Object;

    .line 572
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9f
    return-void
.end method
