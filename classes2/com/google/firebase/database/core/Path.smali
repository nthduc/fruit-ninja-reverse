.class public Lcom/google/firebase/database/core/Path;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/database/core/Path;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_PATH:Lcom/google/firebase/database/core/Path;


# instance fields
.field private final end:I

.field private final pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

.field private final start:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Lcom/google/firebase/database/core/Path;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/core/Path;->EMPTY_PATH:Lcom/google/firebase/database/core/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    const/4 v1, -0x1

    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v2, v0, :cond_1d

    aget-object v4, p1, v2

    .line 72
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    add-int/lit8 v3, v3, 0x1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 76
    :cond_1d
    new-array v0, v3, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 78
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_24
    if-ge v2, v0, :cond_3c

    aget-object v4, p1, v2

    .line 79
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_39

    .line 80
    iget-object v5, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    add-int/lit8 v6, v3, 0x1

    invoke-static {v4}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v4

    aput-object v4, v5, v3

    move v3, v6

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 83
    :cond_3c
    iput v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 84
    iget-object p1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    array-length p1, p1

    iput p1, p0, Lcom/google/firebase/database/core/Path;->end:I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 62
    iget-object v4, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    aput-object v3, v4, v2

    move v2, v5

    goto :goto_11

    .line 64
    :cond_29
    iput v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/database/core/Path;->end:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/firebase/database/snapshot/ChildKey;)V
    .registers 5

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    iput-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 52
    array-length v1, p1

    iput v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    .line 53
    array-length v1, p1

    :goto_13
    if-ge v0, v1, :cond_1a

    aget-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1a
    return-void
.end method

.method private constructor <init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V
    .registers 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    .line 89
    iput p2, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 90
    iput p3, p0, Lcom/google/firebase/database/core/Path;->end:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/database/core/Path;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/google/firebase/database/core/Path;->start:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/firebase/database/core/Path;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/google/firebase/database/core/Path;->end:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/firebase/database/core/Path;)[Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    return-object p0
.end method

.method public static getEmptyPath()Lcom/google/firebase/database/core/Path;
    .registers 1

    .line 46
    sget-object v0, Lcom/google/firebase/database/core/Path;->EMPTY_PATH:Lcom/google/firebase/database/core/Path;

    return-object v0
.end method

.method public static getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .registers 5

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->getFront()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v1

    if-nez v0, :cond_b

    return-object p1

    .line 32
    :cond_b
    invoke-virtual {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 33
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->popFront()Lcom/google/firebase/database/core/Path;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1e
    new-instance v0, Lcom/google/firebase/database/DatabaseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERNAL ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not contained in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 141
    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_21
    return-object v0
.end method

.method public child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;
    .registers 8

    .line 94
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    new-array v1, v0, [Lcom/google/firebase/database/snapshot/ChildKey;

    .line 96
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p0, Lcom/google/firebase/database/core/Path;->start:I

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v2, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p1, Lcom/google/firebase/database/core/Path;->start:I

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result p1

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    new-instance p1, Lcom/google/firebase/database/core/Path;

    invoke-direct {p1, v1, v5, v0}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object p1
.end method

.method public child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;
    .registers 8

    .line 102
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 103
    new-array v2, v1, [Lcom/google/firebase/database/snapshot/ChildKey;

    .line 104
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v4, p0, Lcom/google/firebase/database/core/Path;->start:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    aput-object p1, v2, v0

    .line 106
    new-instance p1, Lcom/google/firebase/database/core/Path;

    invoke-direct {p1, v2, v5, v1}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object p1
.end method

.method public compareTo(Lcom/google/firebase/database/core/Path;)I
    .registers 6

    .line 263
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v1, p1, Lcom/google/firebase/database/core/Path;->start:I

    :goto_4
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v0, v2, :cond_20

    iget v2, p1, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v1, v2, :cond_20

    .line 264
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result v2

    if-eqz v2, :cond_1b

    return v2

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 269
    :cond_20
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v0, v2, :cond_2a

    iget p1, p1, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v1, p1, :cond_2a

    const/4 p1, 0x0

    return p1

    .line 271
    :cond_2a
    iget p1, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ne v0, p1, :cond_30

    const/4 p1, -0x1

    return p1

    :cond_30
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 25
    check-cast p1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/core/Path;->compareTo(Lcom/google/firebase/database/core/Path;)I

    move-result p1

    return p1
.end method

.method public contains(Lcom/google/firebase/database/core/Path;)Z
    .registers 7

    .line 214
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_c

    return v2

    .line 218
    :cond_c
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 219
    iget v1, p1, Lcom/google/firebase/database/core/Path;->start:I

    .line 220
    :goto_10
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v0, v3, :cond_28

    .line 221
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    return v2

    :cond_23
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 233
    instance-of v0, p1, Lcom/google/firebase/database/core/Path;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 239
    :cond_a
    check-cast p1, Lcom/google/firebase/database/core/Path;

    .line 240
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v3

    if-eq v2, v3, :cond_17

    return v1

    .line 243
    :cond_17
    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v3, p1, Lcom/google/firebase/database/core/Path;->start:I

    :goto_1b
    iget v4, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v2, v4, :cond_37

    iget v4, p1, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v3, v4, :cond_37

    .line 244
    iget-object v4, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v4, v4, v2

    iget-object v5, p1, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    return v1

    :cond_32
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_37
    return v0
.end method

.method public getBack()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 3

    .line 171
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 172
    iget-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFront()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 3

    .line 147
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_8
    iget-object v0, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/database/core/Path;
    .registers 5

    .line 163
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_8
    new-instance v0, Lcom/google/firebase/database/core/Path;

    iget-object v1, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 254
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v0, v2, :cond_15

    mul-int/lit8 v1, v1, 0x25

    .line 255
    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    return v1
.end method

.method public isEmpty()Z
    .registers 3

    .line 179
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    iget v1, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Lcom/google/firebase/database/core/Path$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/core/Path$1;-><init>(Lcom/google/firebase/database/core/Path;)V

    return-object v0
.end method

.method public popFront()Lcom/google/firebase/database/core/Path;
    .registers 5

    .line 155
    iget v0, p0, Lcom/google/firebase/database/core/Path;->start:I

    .line 156
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_a
    new-instance v1, Lcom/google/firebase/database/core/Path;

    iget-object v2, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    invoke-direct {v1, v2, v0, v3}, Lcom/google/firebase/database/core/Path;-><init>([Lcom/google/firebase/database/snapshot/ChildKey;II)V

    return-object v1
.end method

.method public size()I
    .registers 3

    .line 183
    iget v0, p0, Lcom/google/firebase/database/core/Path;->end:I

    iget v1, p0, Lcom/google/firebase/database/core/Path;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 111
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_9

    return-object v1

    .line 114
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    :goto_10
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v2, v3, :cond_25

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 119
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wireFormat()Ljava/lang/String;
    .registers 5

    .line 124
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_9

    return-object v1

    .line 127
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    iget v2, p0, Lcom/google/firebase/database/core/Path;->start:I

    :goto_10
    iget v3, p0, Lcom/google/firebase/database/core/Path;->end:I

    if-ge v2, v3, :cond_29

    .line 129
    iget v3, p0, Lcom/google/firebase/database/core/Path;->start:I

    if-le v2, v3, :cond_1b

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1b
    iget-object v3, p0, Lcom/google/firebase/database/core/Path;->pieces:[Lcom/google/firebase/database/snapshot/ChildKey;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 134
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
