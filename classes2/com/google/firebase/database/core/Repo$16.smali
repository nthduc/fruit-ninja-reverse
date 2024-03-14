.class Lcom/google/firebase/database/core/Repo$16;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/connection/RequestResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/Repo;->sendTransactionQueue(Ljava/util/List;Lcom/google/firebase/database/core/Path;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/Repo;

.field final synthetic val$path:Lcom/google/firebase/database/core/Path;

.field final synthetic val$queue:Ljava/util/List;

.field final synthetic val$repo:Lcom/google/firebase/database/core/Repo;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;Ljava/util/List;Lcom/google/firebase/database/core/Repo;)V
    .registers 5

    .line 980
    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 983
    # invokes: Lcom/google/firebase/database/core/Repo;->fromErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$600(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    .line 984
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    const-string v1, "Transaction"

    # invokes: Lcom/google/firebase/database/core/Repo;->warnIfWriteFailed(Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V
    invoke-static {p2, v1, v0, p1}, Lcom/google/firebase/database/core/Repo;->access$700(Lcom/google/firebase/database/core/Repo;Ljava/lang/String;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/DatabaseError;)V

    .line 985
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_ac

    .line 988
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 989
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 990
    sget-object v2, Lcom/google/firebase/database/core/Repo$TransactionStatus;->COMPLETED:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    # setter for: Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;
    invoke-static {v1, v2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 991
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    .line 992
    # getter for: Lcom/google/firebase/database/core/Repo;->serverSyncTree:Lcom/google/firebase/database/core/SyncTree;
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$1000(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/SyncTree;

    move-result-object v3

    .line 993
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->currentWriteId:J
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1800(Lcom/google/firebase/database/core/Repo$TransactionData;)J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    # getter for: Lcom/google/firebase/database/core/Repo;->serverClock:Lcom/google/firebase/database/core/utilities/OffsetClock;
    invoke-static {v2}, Lcom/google/firebase/database/core/Repo;->access$2200(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/OffsetClock;

    move-result-object v8

    .line 992
    invoke-virtual/range {v3 .. v8}, Lcom/google/firebase/database/core/SyncTree;->ackUserWrite(JZZLcom/google/firebase/database/core/utilities/Clock;)Ljava/util/List;

    move-result-object v2

    .line 991
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 997
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->currentOutputSnapshotResolved:Lcom/google/firebase/database/snapshot/Node;
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1600(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 998
    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    .line 1000
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/InternalHelpers;->createReference(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 999
    invoke-static {v3, v2}, Lcom/google/firebase/database/InternalHelpers;->createDataSnapshot(Lcom/google/firebase/database/DatabaseReference;Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v2

    .line 1002
    new-instance v3, Lcom/google/firebase/database/core/Repo$16$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/firebase/database/core/Repo$16$1;-><init>(Lcom/google/firebase/database/core/Repo$16;Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    new-instance v3, Lcom/google/firebase/database/core/ValueEventRegistration;

    .line 1013
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->outstandingListener:Lcom/google/firebase/database/ValueEventListener;
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2400(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object v4

    .line 1014
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->path:Lcom/google/firebase/database/core/Path;
    invoke-static {v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2100(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->defaultQueryAtPath(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v1

    invoke-direct {v3, v2, v4, v1}, Lcom/google/firebase/database/core/ValueEventRegistration;-><init>(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/ValueEventListener;Lcom/google/firebase/database/core/view/QuerySpec;)V

    .line 1010
    invoke-virtual {v2, v3}, Lcom/google/firebase/database/core/Repo;->removeEventCallback(Lcom/google/firebase/database/core/EventRegistration;)V

    goto :goto_1f

    .line 1018
    :cond_7e
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    # getter for: Lcom/google/firebase/database/core/Repo;->transactionQueueTree:Lcom/google/firebase/database/core/utilities/Tree;
    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2500(Lcom/google/firebase/database/core/Repo;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/core/utilities/Tree;->subTree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/Tree;

    move-result-object v1

    # invokes: Lcom/google/firebase/database/core/Repo;->pruneCompletedTransactions(Lcom/google/firebase/database/core/utilities/Tree;)V
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo;->access$2600(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/utilities/Tree;)V

    .line 1021
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    # invokes: Lcom/google/firebase/database/core/Repo;->sendAllReadyTransactions()V
    invoke-static {v0}, Lcom/google/firebase/database/core/Repo;->access$2700(Lcom/google/firebase/database/core/Repo;)V

    .line 1023
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->val$repo:Lcom/google/firebase/database/core/Repo;

    # invokes: Lcom/google/firebase/database/core/Repo;->postEvents(Ljava/util/List;)V
    invoke-static {v0, p2}, Lcom/google/firebase/database/core/Repo;->access$500(Lcom/google/firebase/database/core/Repo;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 1026
    :goto_98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_fb

    .line 1027
    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/Repo;->postEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_98

    .line 1031
    :cond_ac
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d9

    .line 1032
    iget-object p1, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1033
    # getter for: Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;
    invoke-static {p2}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1700(Lcom/google/firebase/database/core/Repo$TransactionData;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->SENT_NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    if-ne v0, v1, :cond_d3

    .line 1034
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    # setter for: Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;
    invoke-static {p2, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_b9

    .line 1036
    :cond_d3
    sget-object v0, Lcom/google/firebase/database/core/Repo$TransactionStatus;->RUN:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    # setter for: Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;
    invoke-static {p2, v0}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    goto :goto_b9

    .line 1040
    :cond_d9
    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->val$queue:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_df
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Repo$TransactionData;

    .line 1041
    sget-object v1, Lcom/google/firebase/database/core/Repo$TransactionStatus;->NEEDS_ABORT:Lcom/google/firebase/database/core/Repo$TransactionStatus;

    # setter for: Lcom/google/firebase/database/core/Repo$TransactionData;->status:Lcom/google/firebase/database/core/Repo$TransactionStatus;
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$1702(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/core/Repo$TransactionStatus;)Lcom/google/firebase/database/core/Repo$TransactionStatus;

    .line 1042
    # setter for: Lcom/google/firebase/database/core/Repo$TransactionData;->abortReason:Lcom/google/firebase/database/DatabaseError;
    invoke-static {v0, p1}, Lcom/google/firebase/database/core/Repo$TransactionData;->access$2802(Lcom/google/firebase/database/core/Repo$TransactionData;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;

    goto :goto_df

    .line 1048
    :cond_f4
    iget-object p1, p0, Lcom/google/firebase/database/core/Repo$16;->this$0:Lcom/google/firebase/database/core/Repo;

    iget-object p2, p0, Lcom/google/firebase/database/core/Repo$16;->val$path:Lcom/google/firebase/database/core/Path;

    # invokes: Lcom/google/firebase/database/core/Repo;->rerunTransactions(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    invoke-static {p1, p2}, Lcom/google/firebase/database/core/Repo;->access$1200(Lcom/google/firebase/database/core/Repo;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    :cond_fb
    return-void
.end method
