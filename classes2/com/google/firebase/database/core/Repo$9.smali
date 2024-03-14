.class Lcom/google/firebase/database/core/Repo$9;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->onDisconnectSetValue(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$newValue:Lcom/google/firebase/database/snapshot/Node;

.field final synthetic val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .registers 5

    .line 546
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$9;->val$newValue:Lcom/google/firebase/database/snapshot/Node;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$9;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 549
    # invokes: Lcom/google/firebase/database/core/Repo;->fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 550
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9;->val$path:Lcom/google/firebase/database/core/Path;

    const-string v1, "onDisconnect().setValue"

    # invokes: Lcom/google/firebase/database/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    invoke-static {p2, v1, v0, p1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    if-nez p1, :cond_1c

    .line 552
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    # getter for: Lcom/google/firebase/database/core/Repo;->onDisconnect:Lcom/google/firebase/database/core/SparseSnapshotTree;
    invoke-static {p2}, Lcom/google/firebase/database/core/Repo;->access$900(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SparseSnapshotTree;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9;->val$path:Lcom/google/firebase/database/core/Path;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->val$newValue:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/database/core/SparseSnapshotTree;->remember(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    .line 554
    :cond_1c
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$9;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9;->val$onComplete:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/firebase/database/core/Repo;->callOnComplete(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    return-void
.end method
