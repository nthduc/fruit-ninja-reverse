.class public abstract Lcom/google/android/gms/internal/games/zzfb;
.super Lcom/google/android/gms/internal/games/zzfa;
.source "com.google.android.gms:play-services-games@@20.0.1"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/games/zzfa<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzsw:Lcom/google/android/gms/internal/games/zzfn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/games/zzfn<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 118
    new-instance v0, Lcom/google/android/gms/internal/games/zzfe;

    sget-object v1, Lcom/google/android/gms/internal/games/zzfk;->zzth:Lcom/google/android/gms/internal/games/zzfb;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/games/zzfe;-><init>(Lcom/google/android/gms/internal/games/zzfb;I)V

    sput-object v0, Lcom/google/android/gms/internal/games/zzfb;->zzsw:Lcom/google/android/gms/internal/games/zzfn;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/games/zzfa;-><init>()V

    return-void
.end method

.method static zza([Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    .line 10
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/games/zzfb;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games/zzfb;

    move-result-object p0

    return-object p0
.end method

.method static zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games/zzfb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_5

    .line 12
    sget-object p0, Lcom/google/android/gms/internal/games/zzfk;->zzth:Lcom/google/android/gms/internal/games/zzfb;

    return-object p0

    .line 14
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/games/zzfk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzfk;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzdy()Lcom/google/android/gms/internal/games/zzfb;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/games/zzfk;->zzth:Lcom/google/android/gms/internal/games/zzfb;

    return-object v0
.end method

.method public static zze(Ljava/lang/Object;)Lcom/google/android/gms/internal/games/zzfb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    :goto_7
    if-gtz p0, :cond_11

    .line 5
    aget-object v3, v1, v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/games/zzfh;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    .line 8
    :cond_11
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/games/zzfb;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/games/zzfb;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 71
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/games/zzfb;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 80
    invoke-static {p0}, Lcom/google/android/gms/internal/games/zzew;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 82
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_62

    .line 86
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_36

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v0, :cond_35

    .line 88
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/games/zzet;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_35
    return v1

    .line 91
    :cond_36
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_42
    if-ge v4, v3, :cond_5b

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 94
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/games/zzfb;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 96
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/games/zzet;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_42

    .line 98
    :cond_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_62

    return v1

    :cond_62
    return v2
.end method

.method public hashCode()I
    .registers 5

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    mul-int/lit8 v1, v1, 0x1f

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/games/zzfb;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 18
    :cond_4
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_2c

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_1b

    :goto_f
    if-ge v2, v1, :cond_2b

    .line 23
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    :goto_1b
    if-ge v2, v1, :cond_2b

    .line 27
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    return v2

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_2b
    return v0

    .line 32
    :cond_2c
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 33
    :cond_30
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 34
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/games/zzet;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 35
    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    :cond_45
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 107
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfa;->zzdt()Lcom/google/android/gms/internal/games/zzfo;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 39
    :cond_4
    instance-of v1, p0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_33

    if-nez p1, :cond_1c

    .line 42
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_10
    if-ltz p1, :cond_32

    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    return p1

    :cond_19
    add-int/lit8 p1, p1, -0x1

    goto :goto_10

    .line 46
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    if-ltz v1, :cond_32

    .line 47
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_22

    :cond_32
    return v0

    .line 52
    :cond_33
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 53
    :cond_3b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 54
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/games/zzet;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 55
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_50
    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/games/zzfb;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfn;

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzew;->zzb(II)I

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 112
    sget-object p1, Lcom/google/android/gms/internal/games/zzfb;->zzsw:Lcom/google/android/gms/internal/games/zzfn;

    return-object p1

    .line 113
    :cond_10
    new-instance v0, Lcom/google/android/gms/internal/games/zzfe;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/games/zzfe;-><init>(Lcom/google/android/gms/internal/games/zzfb;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games/zzfb;->zzc(II)Lcom/google/android/gms/internal/games/zzfb;

    move-result-object p1

    return-object p1
.end method

.method zza([Ljava/lang/Object;I)I
    .registers 7

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    add-int v2, p2, v1

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/games/zzfb;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    add-int/2addr p2, v0

    return p2
.end method

.method public zzc(II)Lcom/google/android/gms/internal/games/zzfb;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/games/zzew;->zza(III)V

    sub-int/2addr p2, p1

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->size()I

    move-result v0

    if-ne p2, v0, :cond_f

    return-object p0

    :cond_f
    if-nez p2, :cond_14

    .line 64
    sget-object p1, Lcom/google/android/gms/internal/games/zzfk;->zzth:Lcom/google/android/gms/internal/games/zzfb;

    return-object p1

    .line 67
    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/games/zzfd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/games/zzfd;-><init>(Lcom/google/android/gms/internal/games/zzfb;II)V

    return-object v0
.end method

.method public final zzdt()Lcom/google/android/gms/internal/games/zzfo;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzfo<",
            "TE;>;"
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzfb;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/games/zzfn;

    return-object v0
.end method

.method public final zzdx()Lcom/google/android/gms/internal/games/zzfb;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/games/zzfb<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method
