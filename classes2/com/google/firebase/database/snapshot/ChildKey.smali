.class public Lcom/google/firebase/database/snapshot/ChildKey;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-database@@19.3.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/database/snapshot/ChildKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INFO_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

.field private static final MAX_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

.field private static final MIN_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

.field private static final PRIORITY_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v1, "[MIN_KEY]"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->MIN_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 23
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v1, "[MAX_KEY]"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->MAX_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 26
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v1, ".priority"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    .line 27
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildKey;

    const-string v1, ".info"

    invoke-direct {v0, v1}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->INFO_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/database/snapshot/ChildKey$1;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/database/snapshot/ChildKey;)Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    return-object p0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 3

    .line 110
    invoke-static {p0}, Lcom/google/firebase/database/core/utilities/Utilities;->tryParseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 112
    new-instance v1, Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/database/snapshot/ChildKey$IntegerChildKey;-><init>(Ljava/lang/String;I)V

    return-object v1

    :cond_10
    const-string v0, ".priority"

    .line 113
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 114
    sget-object p0, Lcom/google/firebase/database/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object p0

    .line 117
    :cond_1b
    new-instance v0, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-direct {v0, p0}, Lcom/google/firebase/database/snapshot/ChildKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInfoKey()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 1

    .line 42
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->INFO_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public static getMaxName()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 1

    .line 34
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->MAX_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public static getMinName()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 1

    .line 30
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->MIN_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method

.method public static getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;
    .registers 1

    .line 38
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I
    .registers 6

    if-ne p0, p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_4
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->MIN_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    const/4 v1, -0x1

    if-eq p0, v0, :cond_51

    sget-object v2, Lcom/google/firebase/database/snapshot/ChildKey;->MAX_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    if-ne p1, v2, :cond_e

    goto :goto_51

    :cond_e
    const/4 v3, 0x1

    if-eq p1, v0, :cond_50

    if-ne p0, v2, :cond_14

    goto :goto_50

    .line 73
    :cond_14
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildKey;->isInt()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 74
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isInt()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 75
    invoke-virtual {p0}, Lcom/google/firebase/database/snapshot/ChildKey;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->compareInts(II)I

    move-result v0

    if-nez v0, :cond_3e

    .line 76
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/firebase/database/core/utilities/Utilities;->compareInts(II)I

    move-result v0

    :cond_3e
    return v0

    :cond_3f
    return v1

    .line 80
    :cond_40
    invoke-virtual {p1}, Lcom/google/firebase/database/snapshot/ChildKey;->isInt()Z

    move-result v0

    if-eqz v0, :cond_47

    return v3

    .line 83
    :cond_47
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_50
    :goto_50
    return v3

    :cond_51
    :goto_51
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 19
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/ChildKey;->compareTo(Lcom/google/firebase/database/snapshot/ChildKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 99
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/ChildKey;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 p1, 0x1

    return p1

    .line 105
    :cond_a
    check-cast p1, Lcom/google/firebase/database/snapshot/ChildKey;

    .line 106
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method protected intValue()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isInt()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isPriorityChildName()Z
    .registers 2

    .line 54
    sget-object v0, Lcom/google/firebase/database/snapshot/ChildKey;->PRIORITY_CHILD_KEY:Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/snapshot/ChildKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildKey(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/ChildKey;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
