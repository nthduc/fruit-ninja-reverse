.class public final Lkotlin/sequences/SubSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;
.implements Lkotlin/sequences/DropTakeSequence;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;",
        "Lkotlin/sequences/DropTakeSequence<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSequences.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sequences.kt\nkotlin/sequences/SubSequence\n*L\n1#1,633:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010(\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u000f\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0016\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\r\u001a\u00020\u0006H\u0016R\u0014\u0010\t\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lkotlin/sequences/SubSequence;",
        "T",
        "Lkotlin/sequences/Sequence;",
        "Lkotlin/sequences/DropTakeSequence;",
        "sequence",
        "startIndex",
        "",
        "endIndex",
        "(Lkotlin/sequences/Sequence;II)V",
        "count",
        "getCount",
        "()I",
        "drop",
        "n",
        "iterator",
        "",
        "take",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final endIndex:I

.field private final sequence:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final startIndex:I


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;II)V
    .registers 5
    .param p1    # Lkotlin/sequences/Sequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;II)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    iput p2, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    iput p3, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    .line 308
    iget p1, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ltz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-eqz p1, :cond_75

    .line 309
    iget p1, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    if-ltz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    if-eqz p1, :cond_56

    .line 310
    iget p1, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    iget v0, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    if-lt p1, v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    if-eqz p2, :cond_2d

    return-void

    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex should be not less than startIndex, but was "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 309
    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "endIndex should be non-negative, but is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 308
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "startIndex should be non-negative, but is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public static final synthetic access$getEndIndex$p(Lkotlin/sequences/SubSequence;)I
    .registers 1

    .line 301
    iget p0, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    return p0
.end method

.method public static final synthetic access$getSequence$p(Lkotlin/sequences/SubSequence;)Lkotlin/sequences/Sequence;
    .registers 1

    .line 301
    iget-object p0, p0, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    return-object p0
.end method

.method public static final synthetic access$getStartIndex$p(Lkotlin/sequences/SubSequence;)I
    .registers 1

    .line 301
    iget p0, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    return p0
.end method

.method private final getCount()I
    .registers 3

    .line 313
    iget v0, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    iget v1, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public drop(I)Lkotlin/sequences/Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 315
    invoke-direct {p0}, Lkotlin/sequences/SubSequence;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_b

    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object p1

    goto :goto_1a

    :cond_b
    new-instance v0, Lkotlin/sequences/SubSequence;

    iget-object v1, p0, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    iget v2, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    add-int/2addr v2, p1

    iget p1, p0, Lkotlin/sequences/SubSequence;->endIndex:I

    invoke-direct {v0, v1, v2, p1}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    move-object p1, v0

    check-cast p1, Lkotlin/sequences/Sequence;

    :goto_1a
    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 318
    new-instance v0, Lkotlin/sequences/SubSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/SubSequence$iterator$1;-><init>(Lkotlin/sequences/SubSequence;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public take(I)Lkotlin/sequences/Sequence;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 316
    invoke-direct {p0}, Lkotlin/sequences/SubSequence;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    move-object p1, p0

    check-cast p1, Lkotlin/sequences/Sequence;

    goto :goto_17

    :cond_a
    new-instance v0, Lkotlin/sequences/SubSequence;

    iget-object v1, p0, Lkotlin/sequences/SubSequence;->sequence:Lkotlin/sequences/Sequence;

    iget v2, p0, Lkotlin/sequences/SubSequence;->startIndex:I

    add-int/2addr p1, v2

    invoke-direct {v0, v1, v2, p1}, Lkotlin/sequences/SubSequence;-><init>(Lkotlin/sequences/Sequence;II)V

    move-object p1, v0

    check-cast p1, Lkotlin/sequences/Sequence;

    :goto_17
    return-object p1
.end method
