.class Lcom/vungle/warren/persistence/Repository$4;
.super Ljava/lang/Object;
.source "Repository.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
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

.field final synthetic val$item:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V
    .registers 3

    .line 195
    iput-object p1, p0, Lcom/vungle/warren/persistence/Repository$4;->this$0:Lcom/vungle/warren/persistence/Repository;

    iput-object p2, p0, Lcom/vungle/warren/persistence/Repository$4;->val$item:Ljava/lang/Object;

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

    .line 195
    invoke-virtual {p0}, Lcom/vungle/warren/persistence/Repository$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/vungle/warren/persistence/Repository$4;->this$0:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/persistence/Repository$4;->val$item:Ljava/lang/Object;

    # invokes: Lcom/vungle/warren/persistence/Repository;->saveModel(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/vungle/warren/persistence/Repository;->access$200(Lcom/vungle/warren/persistence/Repository;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
