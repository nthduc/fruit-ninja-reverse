.class public Lcom/google/firebase/database/core/view/filter/LimitedFilter;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Lcom/google/firebase/database/core/view/filter/NodeFilter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final index:Lcom/google/firebase/database/snapshot/Index;

.field private final limit:I

.field private final rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

.field private final reverse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/QueryParams;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;-><init>(Lcom/google/firebase/database/core/view/QueryParams;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->getLimit()I

    move-result v0

    iput v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QueryParams;->isViewFromLeft()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    return-void
.end method

.method private fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 12

    .line 77
    new-instance v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v0, p2, p3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    .line 79
    iget-boolean v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getFirstChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getLastChild()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    .line 80
    :goto_12
    iget-object v2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v2

    .line 81
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 82
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v5, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {p4, v4, v1, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    :goto_32
    if-eqz v1, :cond_55

    .line 85
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 86
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/firebase/database/snapshot/Node;->hasChild(Lcom/google/firebase/database/snapshot/ChildKey;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 90
    :cond_4c
    iget-object v4, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v5, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-interface {p4, v4, v1, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;->getChildAfterChild(Lcom/google/firebase/database/snapshot/Index;Lcom/google/firebase/database/snapshot/NamedNode;Z)Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    goto :goto_32

    :cond_55
    const/4 p4, 0x1

    if-nez v1, :cond_5a

    const/4 v0, 0x1

    goto :goto_62

    .line 93
    :cond_5a
    iget-object v4, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v5, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {v4, v1, v0, v5}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result v0

    :goto_62
    const/4 v4, 0x0

    if-eqz v2, :cond_6f

    .line 94
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    if-ltz v0, :cond_6f

    const/4 v0, 0x1

    goto :goto_70

    :cond_6f
    const/4 v0, 0x0

    :goto_70
    if-eqz v0, :cond_80

    if-eqz p5, :cond_7b

    .line 98
    invoke-static {p2, p3, v3}, Lcom/google/firebase/database/core/view/Change;->childChangedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    .line 97
    invoke-virtual {p5, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 100
    :cond_7b
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1

    :cond_80
    if-eqz p5, :cond_89

    .line 103
    invoke-static {p2, v3}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 105
    :cond_89
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    if-eqz v1, :cond_9c

    .line 106
    iget-object p2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result p2

    if-eqz p2, :cond_9c

    goto :goto_9d

    :cond_9c
    const/4 p4, 0x0

    :goto_9d
    if-eqz p4, :cond_bc

    if-eqz p5, :cond_b0

    .line 110
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p2

    .line 109
    invoke-virtual {p5, p2}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 112
    :cond_b0
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    :cond_bc
    return-object p1

    .line 117
    :cond_bd
    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_c4

    return-object p1

    :cond_c4
    if-eqz v2, :cond_f8

    .line 121
    iget-object p4, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    iget-boolean v2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    invoke-virtual {p4, v1, v0, v2}, Lcom/google/firebase/database/snapshot/Index;->compare(Lcom/google/firebase/database/snapshot/NamedNode;Lcom/google/firebase/database/snapshot/NamedNode;Z)I

    move-result p4

    if-ltz p4, :cond_f8

    if-eqz p5, :cond_e8

    .line 124
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p4

    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/google/firebase/database/core/view/Change;->childRemovedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    .line 123
    invoke-virtual {p5, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 125
    invoke-static {p2, p3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object p4

    invoke-virtual {p5, p4}, Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;->trackChildChange(Lcom/google/firebase/database/core/view/Change;)V

    .line 128
    :cond_e8
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    .line 129
    invoke-virtual {v1}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object p2

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    :cond_f8
    return-object p1
.end method


# virtual methods
.method public filtersNodes()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getIndex()Lcom/google/firebase/database/snapshot/Index;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    return-object v0
.end method

.method public getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;
    .registers 2

    .line 193
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 14

    .line 54
    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    new-instance v1, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-direct {v1, p2, p3}, Lcom/google/firebase/database/snapshot/NamedNode;-><init>(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->matches(Lcom/google/firebase/database/snapshot/NamedNode;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 55
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p3

    :cond_11
    move-object v3, p3

    .line 57
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_21

    return-object p1

    .line 60
    :cond_21
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/firebase/database/snapshot/Node;->getChildCount()I

    move-result p3

    iget v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge p3, v0, :cond_3d

    .line 61
    iget-object p3, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    .line 62
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 63
    invoke-interface/range {v0 .. v6}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1

    :cond_3d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    .line 65
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->fullLimitUpdateChild(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/core/view/filter/NodeFilter$CompleteChildSource;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method

.method public updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 14

    .line 142
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_87

    .line 148
    :cond_16
    invoke-static {}, Lcom/google/firebase/database/snapshot/PriorityUtilities;->NullPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 153
    iget-boolean v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->reverse:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    .line 154
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->reverseIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 155
    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    .line 156
    iget-object v3, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v3

    const/4 v4, -0x1

    goto :goto_46

    .line 159
    :cond_35
    invoke-virtual {p2}, Lcom/google/firebase/database/snapshot/IndexedNode;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 160
    iget-object v1, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getStartPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v1

    .line 161
    iget-object v3, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {v3}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getEndPost()Lcom/google/firebase/database/snapshot/NamedNode;

    move-result-object v3

    const/4 v4, 0x1

    :goto_46
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 167
    :goto_49
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 168
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/database/snapshot/NamedNode;

    if-nez v6, :cond_62

    .line 169
    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-virtual {v9, v1, v8}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_62

    const/4 v6, 0x1

    :cond_62
    if-eqz v6, :cond_74

    .line 173
    iget v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->limit:I

    if-ge v7, v9, :cond_74

    iget-object v9, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    .line 174
    invoke-virtual {v9, v8, v3}, Lcom/google/firebase/database/snapshot/Index;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    mul-int v9, v9, v4

    if-gtz v9, :cond_74

    const/4 v9, 0x1

    goto :goto_75

    :cond_74
    const/4 v9, 0x0

    :goto_75
    if-eqz v9, :cond_7a

    add-int/lit8 v7, v7, 0x1

    goto :goto_49

    .line 178
    :cond_7a
    invoke-virtual {v8}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v8

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lcom/google/firebase/database/snapshot/IndexedNode;->updateChild(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    goto :goto_49

    .line 144
    :cond_87
    :goto_87
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->index:Lcom/google/firebase/database/snapshot/Index;

    invoke-static {p2, v0}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    .line 182
    :cond_91
    iget-object p2, p0, Lcom/google/firebase/database/core/view/filter/LimitedFilter;->rangedFilter:Lcom/google/firebase/database/core/view/filter/RangedFilter;

    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/filter/RangedFilter;->getIndexedFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object p2

    invoke-interface {p2, p1, v0, p3}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p1

    return-object p1
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/IndexedNode;
    .registers 3

    return-object p1
.end method
