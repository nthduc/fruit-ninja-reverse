.class Lcom/vungle/warren/persistence/Repository$23;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;
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
        "Lcom/vungle/warren/vision/VisionAggregationData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$after:J

.field final synthetic val$filter:Ljava/lang/String;

.field final synthetic val$limit:I


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;IJ)V
    .registers 6

    .line 734
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$23;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    iput p3, p0, Lcom/vungle/warren/persistence/Repository$23;->val$limit:I

    iput-wide p4, p0, Lcom/vungle/warren/persistence/Repository$23;->val$after:J

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

    .line 734
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$23;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/vision/VisionAggregationData;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    const-string v2, "advertiser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    const-string v2, "campaign"

    .line 739
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    const-string v2, "creative"

    .line 740
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return-object v0

    .line 744
    :cond_24
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "vision_data"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 745
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "COUNT ( * ) as viewCount"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "MAX ( timestamp ) as lastTimeStamp"

    aput-object v5, v2, v4

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    aput-object v6, v2, v5

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->columns:[Ljava/lang/String;

    const-string v2, "timestamp >= ?"

    .line 749
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    .line 750
    iput-object v6, v1, Lcom/vungle/warren/persistence/Query;->groupBy:Ljava/lang/String;

    const-string v2, "_id DESC"

    .line 751
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->orderBy:Ljava/lang/String;

    .line 752
    iget v2, p0, Lcom/vungle/warren/persistence/Repository$23;->val$limit:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->limit:Ljava/lang/String;

    .line 753
    new-array v2, v4, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/vungle/warren/persistence/Repository$23;->val$after:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 754
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$23;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 757
    :goto_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 758
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 759
    invoke-static {v1, v2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 760
    new-instance v3, Lcom/vungle/warren/vision/VisionAggregationData;

    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$23;->val$filter:Ljava/lang/String;

    .line 761
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "viewCount"

    .line 762
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "lastTimeStamp"

    .line 763
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vungle/warren/vision/VisionAggregationData;-><init>(Ljava/lang/String;IJ)V

    .line 760
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catchall {:try_start_67 .. :try_end_97} :catchall_9c

    goto :goto_67

    .line 766
    :cond_98
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a1

    :catchall_9c
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_a1
    :goto_a1
    return-object v0
.end method
