.class Lcom/vungle/warren/persistence/Repository$17;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getAvailableBidTokens(I)Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$maxBidTokenSize:I


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;I)V
    .registers 3

    .line 507
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$17;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput p2, p0, Lcom/vungle/warren/persistence/Repository$17;->val$maxBidTokenSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$17;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$17;->this$0:Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 511
    :try_start_3
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "advertisement"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "bid_token != \'\' AND state = ? AND expire_time > ?"

    .line 512
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const-string v2, "bid_token"

    .line 515
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    const/4 v2, 0x2

    .line 516
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 517
    iget v2, p0, Lcom/vungle/warren/persistence/Repository$17;->val$maxBidTokenSize:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    .line 518
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$17;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_66

    if-eqz v1, :cond_64

    .line 522
    :goto_47
    :try_start_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "bid_token"

    .line 523
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 524
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 525
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_47 .. :try_end_5a} :catchall_5f

    goto :goto_47

    .line 528
    :cond_5b
    :try_start_5b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_64

    :catchall_5f
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 531
    :cond_64
    :goto_64
    monitor-exit v0

    return-object v2

    :catchall_66
    move-exception v1

    .line 532
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_66

    throw v1

    return-void
.end method
