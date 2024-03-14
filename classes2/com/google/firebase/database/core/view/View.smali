.class public Lcom/google/firebase/database/core/view/View;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/core/view/View$OperationResult;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

.field private final eventRegistrations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private final processor:Lcom/google/firebase/database/core/view/ViewProcessor;

.field private final query:Lcom/google/firebase/database/core/view/QuerySpec;

.field private viewCache:Lcom/google/firebase/database/core/view/ViewCache;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/database/core/view/QuerySpec;Lcom/google/firebase/database/core/view/ViewCache;)V
    .registers 10

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    .line 45
    new-instance v0, Lcom/google/firebase/database/core/view/filter/IndexedFilter;

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;-><init>(Lcom/google/firebase/database/snapshot/Index;)V

    .line 46
    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QueryParams;->getNodeFilter()Lcom/google/firebase/database/core/view/filter/NodeFilter;

    move-result-object v1

    .line 47
    new-instance v2, Lcom/google/firebase/database/core/view/ViewProcessor;

    invoke-direct {v2, v1}, Lcom/google/firebase/database/core/view/ViewProcessor;-><init>(Lcom/google/firebase/database/core/view/filter/NodeFilter;)V

    iput-object v2, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 48
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v2

    .line 49
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p2

    .line 52
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/view/QuerySpec;->getIndex()Lcom/google/firebase/database/snapshot/Index;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/database/snapshot/IndexedNode;->from(Lcom/google/firebase/database/snapshot/Node;Lcom/google/firebase/database/snapshot/Index;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 54
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v4

    .line 56
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v6

    invoke-interface {v1, v3, v6, v5}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->updateFullNode(Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/view/filter/ChildChangeAccumulator;)Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v3

    .line 57
    new-instance v5, Lcom/google/firebase/database/core/view/CacheNode;

    .line 59
    invoke-virtual {v2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/filter/IndexedFilter;->filtersNodes()Z

    move-result v0

    invoke-direct {v5, v4, v2, v0}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 60
    new-instance v0, Lcom/google/firebase/database/core/view/CacheNode;

    .line 61
    invoke-virtual {p2}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result p2

    invoke-interface {v1}, Lcom/google/firebase/database/core/view/filter/NodeFilter;->filtersNodes()Z

    move-result v1

    invoke-direct {v0, v3, p2, v1}, Lcom/google/firebase/database/core/view/CacheNode;-><init>(Lcom/google/firebase/database/snapshot/IndexedNode;ZZ)V

    .line 63
    new-instance p2, Lcom/google/firebase/database/core/view/ViewCache;

    invoke-direct {p2, v0, v5}, Lcom/google/firebase/database/core/view/ViewCache;-><init>(Lcom/google/firebase/database/core/view/CacheNode;Lcom/google/firebase/database/core/view/CacheNode;)V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    .line 67
    new-instance p2, Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-direct {p2, p1}, Lcom/google/firebase/database/core/view/EventGenerator;-><init>(Lcom/google/firebase/database/core/view/QuerySpec;)V

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    return-void
.end method

.method private generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;",
            "Lcom/google/firebase/database/snapshot/IndexedNode;",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    if-nez p3, :cond_5

    .line 198
    iget-object p3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    goto :goto_f

    :cond_5
    const/4 v0, 0x1

    .line 200
    new-array v0, v0, [Lcom/google/firebase/database/core/EventRegistration;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    .line 202
    :goto_f
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventGenerator:Lcom/google/firebase/database/core/view/EventGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/core/view/EventGenerator;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addEventRegistration(Lcom/google/firebase/database/core/EventRegistration;)V
    .registers 3
    .param p1    # Lcom/google/firebase/database/core/EventRegistration;
        .annotation build Lcom/google/firebase/database/annotations/NotNull;
        .end annotation
    .end param

    .line 115
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyOperation(Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/View$OperationResult;
    .registers 6

    .line 160
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getType()Lcom/google/firebase/database/core/operation/Operation$OperationType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/core/operation/Operation$OperationType;->Merge:Lcom/google/firebase/database/core/operation/Operation$OperationType;

    if-ne v0, v1, :cond_10

    .line 161
    invoke-virtual {p1}, Lcom/google/firebase/database/core/operation/Operation;->getSource()Lcom/google/firebase/database/core/operation/OperationSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/operation/OperationSource;->getQueryParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v0

    .line 167
    :cond_10
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 168
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->processor:Lcom/google/firebase/database/core/view/ViewProcessor;

    .line 169
    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/google/firebase/database/core/view/ViewProcessor;->applyOperation(Lcom/google/firebase/database/core/view/ViewCache;Lcom/google/firebase/database/core/operation/Operation;Lcom/google/firebase/database/core/WriteTreeRef;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;

    move-result-object p1

    .line 175
    iget-object p2, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 176
    iget-object p2, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    iget-object p3, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    .line 178
    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object p3

    const/4 v0, 0x0

    .line 177
    invoke-direct {p0, p2, p3, v0}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object p2

    .line 179
    new-instance p3, Lcom/google/firebase/database/core/view/View$OperationResult;

    iget-object p1, p1, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    invoke-direct {p3, p2, p1}, Lcom/google/firebase/database/core/view/View$OperationResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p3
.end method

.method public getCompleteNode()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteEventSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteServerCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getCompleteServerSnap()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 102
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->loadsAllData()Z

    move-result v1

    if-nez v1, :cond_24

    .line 103
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/snapshot/Node;->getImmediateChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    .line 104
    :cond_24
    invoke-interface {v0, p1}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object p1

    return-object p1

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEventCache()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method getEventRegistrations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    return-object v0
.end method

.method public getInitialEvents(Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/DataEvent;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getEventCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 186
    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/firebase/database/core/view/Change;->childAddedChange(Lcom/google/firebase/database/snapshot/ChildKey;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 188
    :cond_2f
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->isFullyInitialized()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 189
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/core/view/Change;->valueChange(Lcom/google/firebase/database/snapshot/IndexedNode;)Lcom/google/firebase/database/core/view/Change;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_40
    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getIndexedNode()Lcom/google/firebase/database/snapshot/IndexedNode;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/firebase/database/core/view/View;->generateEventsForChanges(Ljava/util/List;Lcom/google/firebase/database/snapshot/IndexedNode;Lcom/google/firebase/database/core/EventRegistration;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getQuery()Lcom/google/firebase/database/core/view/QuerySpec;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    return-object v0
.end method

.method public getServerCache()Lcom/google/firebase/database/snapshot/Node;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/ViewCache;->getServerCache()Lcom/google/firebase/database/core/view/CacheNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/core/view/CacheNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeEventRegistration(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;
    .registers 8
    .param p1    # Lcom/google/firebase/database/core/EventRegistration;
        .annotation build Lcom/google/firebase/database/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/EventRegistration;",
            "Lcom/google/firebase/database/DatabaseError;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/core/view/Event;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_28

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->query:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 126
    new-instance v4, Lcom/google/firebase/database/core/view/CancelEvent;

    invoke-direct {v4, v3, p2, v1}, Lcom/google/firebase/database/core/view/CancelEvent;-><init>(Lcom/google/firebase/database/core/EventRegistration;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/core/Path;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 129
    :cond_28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_2c
    if-eqz p1, :cond_66

    const/4 p2, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 135
    :goto_31
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_52

    .line 136
    iget-object v3, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/EventRegistration;

    .line 137
    invoke-virtual {v3, p1}, Lcom/google/firebase/database/core/EventRegistration;->isSameListener(Lcom/google/firebase/database/core/EventRegistration;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 139
    invoke-virtual {v3}, Lcom/google/firebase/database/core/EventRegistration;->isZombied()Z

    move-result v2

    if-eqz v2, :cond_4e

    goto :goto_53

    :cond_4e
    move v2, p2

    :cond_4f
    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_52
    move p2, v2

    :goto_53
    if-eq p2, v1, :cond_81

    .line 145
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/core/EventRegistration;

    .line 146
    iget-object v1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    goto :goto_81

    .line 150
    :cond_66
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/core/EventRegistration;

    .line 151
    invoke-virtual {p2}, Lcom/google/firebase/database/core/EventRegistration;->zombify()V

    goto :goto_6c

    .line 153
    :cond_7c
    iget-object p1, p0, Lcom/google/firebase/database/core/view/View;->eventRegistrations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_81
    :goto_81
    return-object v0
.end method
