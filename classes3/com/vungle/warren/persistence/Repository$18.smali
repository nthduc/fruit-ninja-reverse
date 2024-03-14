.class Lcom/vungle/warren/persistence/Repository$18;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->setValidPlacements(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$placements:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/util/List;)V
    .registers 3

    .line 546
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$18;->val$placements:Ljava/util/List;

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

    .line 546
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 549
    const-class v0, Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 550
    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_valid"

    const/4 v3, 0x0

    .line 551
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 553
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    new-instance v3, Lcom/vungle/warren/persistence/Query;

    const-string v4, "placement"

    invoke-direct {v3, v4}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->update(Lcom/vungle/warren/persistence/Query;Landroid/content/ContentValues;)J

    .line 555
    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$18;->val$placements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Placement;

    .line 556
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/vungle/warren/model/Placement;

    # invokes: Lcom/vungle/warren/persistence/Repository;->loadModel(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {v3, v4, v5}, Lcom/vungle/warren/persistence/Repository;->access$000(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Placement;

    if-eqz v3, :cond_98

    .line 558
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v4

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->isIncentivized()Z

    move-result v5

    if-eq v4, v5, :cond_98

    .line 562
    # getter for: Lcom/vungle/warren/persistence/Repository;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/persistence/Repository;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Placements data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is different from disc, deleting old"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v2}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/vungle/warren/persistence/Repository;->getAdsForPlacement(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v4, v5}, Lcom/vungle/warren/persistence/Repository;->access$1200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 566
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 567
    iget-object v6, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    # invokes: Lcom/vungle/warren/persistence/Repository;->deleteAdInternal(Ljava/lang/String;)V
    invoke-static {v6, v5}, Lcom/vungle/warren/persistence/Repository;->access$900(Lcom/vungle/warren/persistence/Repository;Ljava/lang/String;)V

    goto :goto_7b

    .line 570
    :cond_8d
    iget-object v4, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    const-class v5, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/vungle/warren/persistence/Repository;->deleteModel(Ljava/lang/Class;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/vungle/warren/persistence/Repository;->access$1300(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_98
    if-eqz v3, :cond_a8

    .line 576
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getWakeupTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/vungle/warren/model/Placement;->setWakeupTime(J)V

    .line 577
    invoke-virtual {v3}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Placement;->setAdSize(Lcom/vungle/warren/AdConfig$AdSize;)V

    :cond_a8
    const/4 v3, 0x1

    .line 580
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Placement;->setValid(Z)V

    .line 581
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$18;->this$0:Lcom/vungle/warren/persistence/Repository;

    # invokes: Lcom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/vungle/warren/persistence/Repository;->access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    goto/16 :goto_26

    .line 583
    :cond_b3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_b6
    move-exception v1

    monitor-exit v0
    :try_end_b8
    .catchall {:try_start_3 .. :try_end_b8} :catchall_b6

    throw v1

    return-void
.end method
