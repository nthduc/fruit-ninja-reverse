.class Lcom/vungle/warren/persistence/Repository$14;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadValidPlacements()Lcom/vungle/warren/persistence/FutureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Collection<",
        "Lcom/vungle/warren/model/Placement;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$14;->this$0:Lcom/vungle/warren/persistence/Repository;

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

    .line 439
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$14;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Placement;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$14;->this$0:Lcom/vungle/warren/persistence/Repository;

    monitor-enter v0

    .line 443
    :try_start_3
    new-instance v1, Lcom/vungle/warren/persistence/Query;

    const-string v2, "placement"

    invoke-direct {v1, v2}, Lcom/vungle/warren/persistence/Query;-><init>(Ljava/lang/String;)V

    const-string v2, "is_valid = ?"

    .line 444
    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->selection:Ljava/lang/String;

    const-string v2, "1"

    .line 445
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/warren/persistence/Query;->args:[Ljava/lang/String;

    .line 447
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$14;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v2, v2, Lcom/vungle/warren/persistence/Repository;->dbHelper:Lcom/vungle/warren/persistence/DatabaseHelper;

    invoke-virtual {v2, v1}, Lcom/vungle/warren/persistence/DatabaseHelper;->query(Lcom/vungle/warren/persistence/Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 449
    iget-object v2, p0, Lcom/vungle/warren/persistence/Repository$14;->this$0:Lcom/vungle/warren/persistence/Repository;

    const-class v3, Lcom/vungle/warren/model/Placement;

    # invokes: Lcom/vungle/warren/persistence/Repository;->extractModels(Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;
    invoke-static {v2, v3, v1}, Lcom/vungle/warren/persistence/Repository;->access$600(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception v1

    .line 450
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method
