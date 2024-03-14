.class Lcom/vungle/warren/persistence/Repository$6;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/vungle/warren/model/Advertisement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V
    .registers 3

    .line 248
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$6;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$6;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/vungle/warren/model/Advertisement;
    .registers 9

    .line 251
    # getter for: Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Searching for valid adv for pl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$6;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v0, Lcom/vungle/warren/persistence/Query;

    const-string v1, "advertisement"

    invoke-direct {v0, v1}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v1, "placement_id = ? AND (state = ? OR  state = ?) AND expire_time > ?"

    .line 254
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const/4 v1, 0x4

    .line 258
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$6;->val$placementId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    const-string v1, "1"

    .line 259
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    const-string v1, "state DESC"

    .line 260
    iput-object v1, v0, Lcom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$6;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, v1, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v1, v0}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$6;->this$0:Lcom/vungle/warren/persistence/Repository;

    # getter for: Lcom/vungle/warren/persistence/Repository;->adapters:Ljava/util/Map;
    invoke-static {v1}, Lcom/vungle/warren/persistence/Repository;->access$400(Lcom/vungle/warren/persistence/Repository;)Ljava/util/Map;

    move-result-object v1

    const-class v2, Lcom/vungle/warren/model/Advertisement;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/AdvertisementDBAdapter;

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_6e
    if-eqz v0, :cond_88

    if-eqz v1, :cond_88

    .line 265
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_88

    .line 266
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 267
    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 268
    invoke-virtual {v1, v4}, Lcom/vungle/warren/model/AdvertisementDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Advertisement;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_88
    if-eqz v0, :cond_8d

    .line 272
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_8d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Advertisement;

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x0

    .line 277
    :goto_9b
    # getter for: Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->access$300()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_a4

    const-string v2, "Didn\'t find valid adv"

    goto :goto_b9

    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found valid adv "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Advertisement;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_b9
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$6;->call()Lcom/vungle/warren/model/Advertisement;

    move-result-object v0

    return-object v0
.end method
