.class public Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LEAF_PRIORITY_OVERHEAD:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/snapshot/LeafNode<",
            "*>;)J"
        }
    .end annotation

    .line 38
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/DoubleNode;

    const-wide/16 v1, 0x8

    if-eqz v0, :cond_7

    goto :goto_26

    .line 40
    :cond_7
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/LongNode;

    if-eqz v0, :cond_c

    goto :goto_26

    .line 42
    :cond_c
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;

    if-eqz v0, :cond_13

    const-wide/16 v1, 0x4

    goto :goto_26

    .line 44
    :cond_13
    instance-of v0, p0, Lcom/google/firebase/database/snapshot/StringNode;

    if-eqz v0, :cond_40

    const-wide/16 v0, 0x2

    .line 45
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-wide v1, v0

    .line 49
    :goto_26
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    return-wide v1

    :cond_31
    const-wide/16 v3, 0x18

    add-long/2addr v1, v3

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/LeafNode;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    .line 47
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown leaf node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J
    .registers 9

    .line 59
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x4

    if-eqz v0, :cond_9

    return-wide v1

    .line 61
    :cond_9
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 62
    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v0

    return-wide v0

    :cond_16
    const-wide/16 v3, 0x1

    .line 66
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 67
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v3, v6

    add-long/2addr v3, v1

    .line 69
    invoke-virtual {v5}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_1c

    .line 71
    :cond_41
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    const-wide/16 v0, 0xc

    add-long/2addr v3, v0

    .line 73
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/database/snapshot/LeafNode;

    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateLeafNodeSize(Lcom/google/firebase/database/snapshot/LeafNode;)J

    move-result-wide v0

    add-long/2addr v3, v0

    :cond_59
    return-wide v3
.end method

.method public static nodeCount(Lcom/google/firebase/database/snapshot/Node;)I
    .registers 3

    .line 80
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 82
    :cond_8
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->isLeafNode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x1

    return p0

    .line 87
    :cond_10
    invoke-interface {p0}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->nodeCount(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_14

    :cond_2a
    return v1
.end method
