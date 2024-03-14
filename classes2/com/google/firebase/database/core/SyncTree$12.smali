.class Lcom/google/firebase/database/core/SyncTree$12;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/core/SyncTree;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
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
        "Lcom/google/firebase/database/core/view/Event;",
        ">;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/google/firebase/database/core/SyncTree;

.field final synthetic val$cancelError:Lcom/google/firebase/database/DatabaseError;

.field final synthetic val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

.field final synthetic val$query:Lcom/google/firebase/database/core/view/QuerySpec;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 586
    const-class v0, Lcom/google/firebase/database/core/SyncTree;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)V
    .registers 5

    .line 586
    iput-object p1, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iput-object p2, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iput-object p3, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iput-object p4, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

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

    .line 586
    invoke-virtual {p0}, Lcom/google/firebase/database/core/SyncTree$12;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->get(Lcom/google/firebase/database/core/Path;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/SyncPoint;

    .line 592
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_15e

    .line 597
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 598
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/QuerySpec;->isDefault()Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1, v3}, Lcom/google/firebase/database/core/SyncPoint;->viewExistsForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 601
    :cond_29
    iget-object v2, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$eventRegistration:Lcom/google/firebase/database/core/EventRegistration;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    .line 602
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/firebase/database/core/SyncPoint;->removeEventRegistration(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/core/utilities/Pair;

    move-result-object v2

    .line 603
    invoke-virtual {v1}, Lcom/google/firebase/database/core/SyncPoint;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 604
    iget-object v1, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    invoke-static {v1}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->remove(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    # setter for: Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    invoke-static {v1, v3}, Lcom/google/firebase/database/core/SyncTree;->access$702(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    .line 606
    :cond_46
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 607
    invoke-virtual {v2}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 615
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_57
    const/4 v5, 0x0

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 616
    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->persistenceManager:Lcom/google/firebase/database/core/persistence/PersistenceManager;
    invoke-static {v8}, Lcom/google/firebase/database/core/SyncTree;->access$200(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/persistence/PersistenceManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-interface {v8, v9}, Lcom/google/firebase/database/core/persistence/PersistenceManager;->setQueryInactive(Lcom/google/firebase/database/core/view/QuerySpec;)V

    if-nez v5, :cond_78

    .line 617
    invoke-virtual {v6}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_78
    const/4 v5, 0x1

    goto :goto_58

    .line 619
    :cond_7a
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    .line 621
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_94

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v6

    if-eqz v6, :cond_94

    const/4 v6, 0x1

    goto :goto_95

    :cond_94
    const/4 v6, 0x0

    .line 622
    :goto_95
    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_99
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 623
    invoke-virtual {v3, v9}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    if-nez v6, :cond_c0

    .line 626
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_be

    .line 627
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/database/core/SyncPoint;

    invoke-virtual {v6}, Lcom/google/firebase/database/core/SyncPoint;->hasCompleteView()Z

    move-result v6

    if-eqz v6, :cond_be

    goto :goto_c0

    :cond_be
    const/4 v6, 0x0

    goto :goto_c1

    :cond_c0
    :goto_c0
    const/4 v6, 0x1

    :goto_c1
    if-nez v6, :cond_c9

    .line 628
    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_99

    :cond_c9
    if-eqz v5, :cond_112

    if-nez v6, :cond_112

    .line 634
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->syncPointTree:Lcom/google/firebase/database/core/utilities/ImmutableTree;
    invoke-static {v3}, Lcom/google/firebase/database/core/SyncTree;->access$700(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->subtree(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_112

    .line 639
    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # invokes: Lcom/google/firebase/database/core/SyncTree;->collectDistinctViewsForSubTree(Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;
    invoke-static {v3, v0}, Lcom/google/firebase/database/core/SyncTree;->access$1200(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;)Ljava/util/List;

    move-result-object v0

    .line 642
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_112

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/View;

    .line 643
    new-instance v4, Lcom/google/firebase/database/core/SyncTree$ListenContainer;

    iget-object v7, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    invoke-direct {v4, v7, v3}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;-><init>(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/View;)V

    .line 644
    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/View;->getQuery()Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    .line 645
    iget-object v7, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;
    invoke-static {v7}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v7

    iget-object v8, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    .line 646
    # invokes: Lcom/google/firebase/database/core/SyncTree;->queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-static {v8, v3}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    # getter for: Lcom/google/firebase/database/core/SyncTree$ListenContainer;->tag:Lcom/google/firebase/database/core/Tag;
    invoke-static {v4}, Lcom/google/firebase/database/core/SyncTree$ListenContainer;->access$1400(Lcom/google/firebase/database/core/SyncTree$ListenContainer;)Lcom/google/firebase/database/core/Tag;

    move-result-object v8

    .line 645
    invoke-interface {v7, v3, v8, v4, v4}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->startListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;Lcom/google/firebase/database/connection/ListenHashProvider;Lcom/google/firebase/database/core/SyncTree$CompletionListener;)V

    goto :goto_e7

    :cond_112
    if-nez v6, :cond_159

    .line 657
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_159

    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$cancelError:Lcom/google/firebase/database/DatabaseError;

    if-nez v0, :cond_159

    if-eqz v5, :cond_133

    .line 662
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;
    invoke-static {v0}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$12;->val$query:Lcom/google/firebase/database/core/view/QuerySpec;

    # invokes: Lcom/google/firebase/database/core/SyncTree;->queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-static {v3, v4}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_159

    .line 664
    :cond_133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_137
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_159

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/view/QuerySpec;

    .line 665
    iget-object v4, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # invokes: Lcom/google/firebase/database/core/SyncTree;->tagForQuery(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;
    invoke-static {v4, v3}, Lcom/google/firebase/database/core/SyncTree;->access$000(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/Tag;

    move-result-object v4

    .line 667
    iget-object v5, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # getter for: Lcom/google/firebase/database/core/SyncTree;->listenProvider:Lcom/google/firebase/database/core/SyncTree$ListenProvider;
    invoke-static {v5}, Lcom/google/firebase/database/core/SyncTree;->access$1500(Lcom/google/firebase/database/core/SyncTree;)Lcom/google/firebase/database/core/SyncTree$ListenProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # invokes: Lcom/google/firebase/database/core/SyncTree;->queryForListening(Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;
    invoke-static {v6, v3}, Lcom/google/firebase/database/core/SyncTree;->access$1300(Lcom/google/firebase/database/core/SyncTree;Lcom/google/firebase/database/core/view/QuerySpec;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Lcom/google/firebase/database/core/SyncTree$ListenProvider;->stopListening(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/Tag;)V

    goto :goto_137

    .line 672
    :cond_159
    :goto_159
    iget-object v0, p0, Lcom/google/firebase/database/core/SyncTree$12;->this$0:Lcom/google/firebase/database/core/SyncTree;

    # invokes: Lcom/google/firebase/database/core/SyncTree;->removeTags(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/google/firebase/database/core/SyncTree;->access$1600(Lcom/google/firebase/database/core/SyncTree;Ljava/util/List;)V

    :cond_15e
    return-object v2
.end method
