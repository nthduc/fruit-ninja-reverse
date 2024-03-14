.class Lcom/vungle/warren/persistence/Repository$8;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->loadAllReportToSend()Lcom/vungle/warren/persistence/FutureResult;
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
        "Lcom/vungle/warren/model/Report;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/warren/persistence/Repository;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$8;->this$0:Lcom/vungle/warren/persistence/Repository;

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

    .line 296
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$8;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Report;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$8;->this$0:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Report;

    # invokes: Lcom/vungle/warren/persistence/Repository;->loadAllModels(Ljava/lang/Class;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->access$500(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Report;

    const/4 v3, 0x2

    .line 301
    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Report;->setStatus(I)V

    .line 303
    :try_start_1c
    iget-object v3, p0, Lcom/vungle/warren/persistence/Repository$8;->this$0:Lcom/vungle/warren/persistence/Repository;

    # invokes: Lcom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V
    invoke-static {v3, v2}, Lcom/vungle/warren/persistence/Repository;->access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    :try_end_21
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_1c .. :try_end_21} :catch_22

    goto :goto_c

    :catch_22
    const/4 v0, 0x0

    :cond_23
    return-object v0
.end method
