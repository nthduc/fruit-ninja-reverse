.class public Lcom/google/firebase/database/core/view/ViewProcessor;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;,
        Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;


# instance fields
.field private final filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 669
    new-instance v0, Lcom/google/firebase/database/core/view/ViewProcessor$1;

    invoke-direct {v0}, Lcom/google/firebase/database/core/view/ViewProcessor$1;-><init>()V

    sput-object v0, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    return-void
.end method

.method private ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/firebase/database/core/WriteTreeRef;",
            "Lcom/google/firebase/database/snapshot/Node;",
            "Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;",
            ")",
            "Lcom/google/firebase/database/core/view/ViewCache;"
        }
    .end annotation

    .line 534
    invoke-virtual {p4, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p1

    .line 539
    :cond_7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v7

    .line 543
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 544
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 546
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_25

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p3

    if-nez p3, :cond_2b

    .line 547
    :cond_25
    invoke-virtual {v0, p2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 551
    :cond_2b
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 548
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1

    .line 556
    :cond_3e
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_74

    .line 559
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object p3

    .line 560
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, p3

    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 561
    invoke-virtual {p3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    goto :goto_51

    :cond_6a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 563
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    :cond_74
    return-object p1

    .line 576
    :cond_75
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v1

    .line 577
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v4, v1

    :cond_7e
    :goto_7e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 578
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    .line 579
    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 580
    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 582
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v4

    goto :goto_7e

    :cond_a7
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    .line 585
    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1
.end method

.method private applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 23

    .line 466
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-nez v0, :cond_19

    return-object p1

    .line 480
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v0, p3

    goto :goto_2e

    .line 483
    :cond_22
    invoke-static {}, Lcom/google/firebase/database/core/CompoundWrite;->emptyWrite()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/core/CompoundWrite;->addWrites(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    .line 485
    :goto_2e
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 486
    invoke-virtual {v0}, Lcom/google/firebase/database/core/CompoundWrite;->childCompoundWrites()Ljava/util/Map;

    move-result-object v0

    .line 487
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object/from16 v4, p1

    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 488
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 489
    invoke-interface {v1, v7}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v8

    if-eqz v8, :cond_44

    .line 490
    invoke-interface {v1, v7}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 491
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v3, v8}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v8

    .line 492
    new-instance v9, Lcom/google/firebase/database/core/Path;

    new-array v3, v6, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v7, v3, v5

    invoke-direct {v9, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object v3, p0

    move-object v5, v9

    move-object v6, v8

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    .line 493
    invoke-direct/range {v3 .. v10}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    move-object v4, v3

    goto :goto_44

    .line 503
    :cond_86
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v8, v4

    :cond_8f
    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 504
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 505
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/CompoundWrite;

    .line 507
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v7

    if-nez v7, :cond_b9

    .line 508
    invoke-virtual {v4}, Lcom/google/firebase/database/core/CompoundWrite;->rootWrite()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    if-nez v4, :cond_b9

    const/4 v4, 0x1

    goto :goto_ba

    :cond_b9
    const/4 v4, 0x0

    .line 509
    :goto_ba
    invoke-interface {v1, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v7

    if-nez v7, :cond_8f

    if-nez v4, :cond_8f

    .line 510
    invoke-interface {v1, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    .line 511
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/CompoundWrite;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/CompoundWrite;->apply(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 512
    new-instance v9, Lcom/google/firebase/database/core/Path;

    new-array v2, v6, [Lcom/google/firebase/database/snapshot/ChildKey;

    aput-object v3, v2, v5

    invoke-direct {v9, v2}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;)V

    move-object v7, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    .line 513
    invoke-direct/range {v7 .. v14}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v2

    move-object v8, v2

    goto :goto_8f

    :cond_e8
    return-object v8
.end method

.method private applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 22

    move-object v6, p0

    move-object v0, p1

    move-object/from16 v1, p3

    .line 286
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    if-eqz p6, :cond_d

    .line 288
    iget-object v3, v6, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    goto :goto_13

    :cond_d
    iget-object v3, v6, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v3

    .line 289
    :goto_13
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_2e

    .line 292
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 293
    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 291
    invoke-interface {v3, v4, v1, v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    :goto_2b
    move-object/from16 v4, p2

    goto :goto_9d

    .line 295
    :cond_2e
    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 299
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    .line 300
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v8

    .line 302
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9, v4}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v9

    invoke-interface {v9, v8, v1}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 303
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 305
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    invoke-interface {v3, v4, v1, v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_2b

    .line 307
    :cond_5f
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v9

    move-object/from16 v4, p2

    .line 308
    invoke-virtual {v2, v4}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForPath(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-nez v7, :cond_72

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v7

    if-le v7, v5, :cond_72

    return-object v0

    .line 312
    :cond_72
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v11

    .line 313
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v7

    .line 314
    invoke-interface {v7, v11, v1}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v10

    .line 315
    invoke-virtual {v9}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 316
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    invoke-interface {v3, v1, v10}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    goto :goto_9d

    .line 320
    :cond_91
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v8

    sget-object v12, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    const/4 v13, 0x0

    move-object v7, v3

    .line 319
    invoke-interface/range {v7 .. v13}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 331
    :goto_9d
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-nez v2, :cond_ab

    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_aa

    goto :goto_ab

    :cond_aa
    const/4 v5, 0x0

    .line 332
    :cond_ab
    :goto_ab
    invoke-interface {v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v2

    .line 329
    invoke-virtual {p1, v1, v5, v2}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v1

    .line 333
    new-instance v5, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    invoke-direct {v5, v3, v1, v0}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    move-object v0, p0

    move-object/from16 v2, p2

    move-object v4, v5

    move-object/from16 v5, p7

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v0

    return-object v0
.end method

.method private applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 19

    move-object v0, p1

    move-object v1, p2

    .line 426
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v0

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 427
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v5}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 428
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 433
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/google/firebase/database/snapshot/Node;

    move-object v3, p0

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 430
    invoke-direct/range {v3 .. v9}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    move-object v4, v3

    goto :goto_7

    .line 440
    :cond_3b
    invoke-virtual {p3}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v4

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 441
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p2, v4}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    .line 442
    invoke-virtual {v7}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/google/firebase/database/core/view/ViewProcessor;->cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v4

    if-nez v4, :cond_40

    .line 447
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/google/firebase/database/snapshot/Node;

    move-object v5, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 444
    invoke-direct/range {v5 .. v11}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    move-object v6, v3

    goto :goto_40

    :cond_74
    return-object v6
.end method

.method private applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 15

    .line 346
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 348
    new-instance v6, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v6, p4, p1, p5}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 350
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_34

    .line 351
    iget-object p2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p2}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    .line 352
    iget-object p3, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 354
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p4

    .line 353
    invoke-interface {p3, p4, p2, p6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    const/4 p3, 0x1

    .line 355
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto/16 :goto_b6

    .line 357
    :cond_34
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p4

    if-eqz p4, :cond_59

    .line 359
    iget-object p2, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 360
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    .line 363
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p3

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result p4

    .line 362
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    goto :goto_b6

    .line 365
    :cond_59
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 366
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {p2, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    .line 368
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_6d

    :goto_6b
    move-object v4, p3

    goto :goto_97

    .line 372
    :cond_6d
    invoke-interface {v6, v3}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    if-eqz p4, :cond_92

    .line 374
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p5

    if-eqz p5, :cond_8d

    .line 375
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object p5

    invoke-interface {p4, p5}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    invoke-interface {p5}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_8d

    move-object v4, p4

    goto :goto_97

    .line 380
    :cond_8d
    invoke-interface {p4, v5, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    goto :goto_6b

    .line 384
    :cond_92
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    goto :goto_6b

    .line 387
    :goto_97
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b6

    .line 388
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 390
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    move-object v7, p6

    .line 389
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    .line 398
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p3

    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result p4

    .line 397
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    :cond_b6
    :goto_b6
    return-object p1
.end method

.method private static cacheHasChild(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/ChildKey;)Z
    .registers 2

    .line 408
    invoke-virtual {p0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p0

    return p0
.end method

.method private generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 14

    .line 191
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 192
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object p1

    .line 197
    :cond_b
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 202
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result p4

    if-eqz p4, :cond_2d

    .line 206
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    .line 208
    instance-of v1, p4, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v1, :cond_24

    goto :goto_28

    :cond_24
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p4

    .line 209
    :goto_28
    invoke-virtual {p3, p4}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    goto :goto_35

    .line 212
    :cond_2d
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    .line 214
    :goto_35
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    .line 215
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 217
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v1

    .line 216
    invoke-interface {p4, v1, p3, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    goto/16 :goto_c9

    .line 219
    :cond_4f
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 222
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    .line 223
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p5

    .line 226
    invoke-virtual {p3, p2, p4, p5}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    if-eqz p3, :cond_76

    .line 228
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 229
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    goto :goto_c9

    .line 232
    :cond_76
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    goto :goto_c9

    .line 235
    :cond_7b
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    .line 238
    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 239
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 242
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    .line 241
    invoke-virtual {p3, p2, v2, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcEventCacheAfterServerOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    if-eqz p3, :cond_a4

    .line 246
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 247
    invoke-interface {v1, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    .line 248
    invoke-interface {v1, v5, p3}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    goto :goto_b5

    .line 251
    :cond_a4
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    goto :goto_b5

    .line 254
    :cond_ad
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {p3, v3, v1}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    :goto_b5
    move-object v4, p3

    if-eqz v4, :cond_c5

    .line 257
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 259
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    move-object v6, p4

    move-object v7, p5

    .line 258
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    goto :goto_c9

    .line 267
    :cond_c5
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    .line 273
    :goto_c9
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p4

    if-nez p4, :cond_d8

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d6

    goto :goto_d8

    :cond_d6
    const/4 p2, 0x0

    goto :goto_d9

    :cond_d8
    :goto_d8
    const/4 p2, 0x1

    :goto_d9
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 274
    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result p4

    .line 271
    invoke-virtual {p1, p3, p2, p4}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1
.end method

.method private listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 14

    .line 658
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    .line 661
    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 662
    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v1, 0x1

    .line 663
    :goto_18
    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result p4

    .line 660
    invoke-virtual {p1, v0, v1, p4}, Lcom/google/firebase/database/core/view/ViewCache;->updateServerSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object v3

    .line 664
    sget-object v6, Lcom/google/firebase/database/core/view/ViewProcessor;->NO_COMPLETE_SOURCE:Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->generateEventCacheAfterServerEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1
.end method

.method private maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    .line 170
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    .line 171
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 172
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 173
    :goto_22
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v1

    if-eqz v1, :cond_58

    if-eqz v0, :cond_42

    .line 175
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 177
    :cond_42
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 180
    :cond_58
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    return-void
.end method


# virtual methods
.method public applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
    .registers 14

    .line 63
    new-instance v8, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;

    invoke-direct {v8}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;-><init>()V

    .line 65
    sget-object v0, Lcom/google/firebase/database/core/view/ViewProcessor$2;->$SwitchMap$com$google$firebase$database$core$operation$Operation$OperationType:[I

    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/operation/Operation$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_bb

    const/4 v3, 0x2

    if-eq v0, v3, :cond_72

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2d

    .line 155
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    .line 154
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->listenComplete(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto/16 :goto_10c

    .line 160
    :cond_2d
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown operation: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 130
    :cond_48
    check-cast p2, Lcom/google/firebase/database/core/operation/AckUserWrite;

    .line 131
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->isRevert()Z

    move-result v0

    if-nez v0, :cond_63

    .line 135
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 136
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getAffectedTree()Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 133
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->ackUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto/16 :goto_10c

    .line 144
    :cond_63
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/AckUserWrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, v8

    .line 142
    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/core/view/ViewProcessor;->revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto/16 :goto_10c

    .line 101
    :cond_72
    check-cast p2, Lcom/google/firebase/database/core/operation/Merge;

    .line 102
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 106
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 107
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 104
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto/16 :goto_10c

    .line 115
    :cond_91
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v0

    if-nez v0, :cond_a8

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_a6

    goto :goto_a8

    :cond_a6
    const/4 v6, 0x0

    goto :goto_a9

    :cond_a8
    :goto_a8
    const/4 v6, 0x1

    .line 119
    :goto_a9
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 120
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Merge;->getChildren()Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    .line 117
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerMerge(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto :goto_10c

    .line 68
    :cond_bb
    check-cast p2, Lcom/google/firebase/database/core/operation/Overwrite;

    .line 69
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 73
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, v8

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyUserOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    goto :goto_10c

    .line 84
    :cond_d9
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->isTagged()Z

    move-result v0

    if-nez v0, :cond_fa

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFiltered()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 86
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f8

    goto :goto_fa

    :cond_f8
    const/4 v6, 0x0

    goto :goto_fb

    :cond_fa
    :goto_fa
    const/4 v6, 0x1

    .line 90
    :goto_fb
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    .line 91
    invoke-virtual {p2}, Lcom/google/firebase/database/core/operation/Overwrite;->getSnapshot()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v8

    .line 88
    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyServerOverwrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;ZLcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p2

    .line 163
    :goto_10c
    new-instance p3, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/database/core/view/ViewProcessor;->maybeAddValueEvent(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    .line 165
    new-instance p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;-><init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V

    return-object p1
.end method

.method public revertUserWrite(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/core/view/ViewCache;
    .registers 14

    .line 602
    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object p1

    .line 605
    :cond_7
    new-instance v6, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;

    invoke-direct {v6, p3, p1, p4}, Lcom/google/firebase/database/core/view/ViewProcessor$WriteTreeCompleteChildSource;-><init>(Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/snapshot/Node;)V

    .line 607
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 609
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_a7

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result p4

    if-eqz p4, :cond_26

    goto/16 :goto_a7

    .line 619
    :cond_26
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    .line 620
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p3, v3, p4}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/core/view/CacheNode;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    if-nez p4, :cond_46

    .line 621
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/firebase/database/core/view/CacheNode;->isCompleteForChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 622
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    invoke-interface {p4, v3}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    :cond_46
    move-object v4, p4

    if-eqz v4, :cond_55

    .line 625
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 627
    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    move-object v7, p5

    .line 626
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    goto :goto_74

    :cond_55
    if-nez v4, :cond_74

    .line 628
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p4

    invoke-interface {p4, v3}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result p4

    if-eqz p4, :cond_74

    .line 630
    iget-object v1, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    .line 632
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object v5

    move-object v7, p5

    .line 631
    invoke-interface/range {v1 .. v7}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 636
    :cond_74
    :goto_74
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_d6

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    if-eqz p2, :cond_d6

    .line 638
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    .line 639
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result p4

    if-eqz p4, :cond_d6

    .line 640
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    .line 641
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4, v2, p2, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    goto :goto_d6

    .line 611
    :cond_a7
    :goto_a7
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    if-eqz p2, :cond_ba

    .line 612
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventCache(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    goto :goto_c6

    .line 614
    :cond_ba
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->calcCompleteEventChildren(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    .line 616
    :goto_c6
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p2

    .line 617
    iget-object p4, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p4, v2, p2, p5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    .line 646
    :cond_d6
    :goto_d6
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    if-nez p2, :cond_ed

    .line 647
    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/firebase/database/core/WriteTreeRef;->shadowingWrite(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p2

    if-eqz p2, :cond_eb

    goto :goto_ed

    :cond_eb
    const/4 p2, 0x0

    goto :goto_ee

    :cond_ed
    :goto_ed
    const/4 p2, 0x1

    .line 648
    :goto_ee
    iget-object p3, p0, Lcom/google/firebase/database/core/view/ViewProcessor;->filter:Lcom/google/firebase/database/core/view/filter/NodeFilter;

    invoke-interface {p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result p3

    invoke-virtual {p1, v2, p2, p3}, Lcom/google/firebase/database/core/view/ViewCache;->updateEventSnap(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)Lcom/google/firebase/database/core/view/ViewCache;

    move-result-object p1

    return-object p1
.end method
