.class public Lcom/chartboost/sdk/impl/z1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final f:[B


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lcom/chartboost/sdk/impl/z1;->f:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x400

    .line 1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/z1;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/z1;->a:Ljava/util/List;

    if-ltz p1, :cond_15

    .line 33
    monitor-enter p0

    .line 34
    :try_start_d
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/z1;->a(I)V

    .line 35
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p1

    .line 36
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative initial size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->b:I

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z1;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_25

    .line 3
    iget p1, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    iget-object v0, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    array-length v0, v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    .line 5
    iget p1, p0, Lcom/chartboost/sdk/impl/z1;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/chartboost/sdk/impl/z1;->b:I

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    goto :goto_4e

    .line 10
    :cond_25
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    goto :goto_3f

    .line 14
    :cond_2d
    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 17
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    iget-object v1, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    .line 20
    :goto_3f
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/z1;->b:I

    .line 21
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4e
    return-void
.end method


# virtual methods
.method public declared-synchronized a()[B
    .registers 8

    monitor-enter p0

    .line 23
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    if-nez v0, :cond_9

    .line 25
    sget-object v0, Lcom/chartboost/sdk/impl/z1;->f:[B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2d

    monitor-exit p0

    return-object v0

    .line 27
    :cond_9
    :try_start_9
    new-array v1, v0, [B

    .line 29
    iget-object v2, p0, Lcom/chartboost/sdk/impl/z1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 30
    array-length v6, v5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 31
    invoke-static {v5, v3, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2d

    add-int/2addr v4, v6

    sub-int/2addr v0, v6

    if-nez v0, :cond_13

    :cond_2b
    monitor-exit p0

    return-object v1

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z1;->a()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5

    monitor-enter p0

    .line 26
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    iget v1, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    sub-int v1, v0, v1

    .line 27
    iget-object v2, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    array-length v2, v2

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/z1;->a(I)V

    const/4 v1, 0x0

    .line 31
    :cond_12
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 32
    iget p1, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/chartboost/sdk/impl/z1;->e:I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public write([BII)V
    .registers 9

    if-ltz p2, :cond_39

    .line 1
    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p3, :cond_39

    add-int/2addr p2, p3

    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p2, :cond_39

    if-nez p3, :cond_10

    return-void

    .line 10
    :cond_10
    monitor-enter p0

    .line 11
    :try_start_11
    iget v0, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    add-int/2addr v0, p3

    .line 13
    iget v1, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    iget v2, p0, Lcom/chartboost/sdk/impl/z1;->c:I

    sub-int/2addr v1, v2

    :cond_19
    :goto_19
    if-lez p3, :cond_32

    .line 15
    iget-object v2, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int v3, p2, p3

    .line 16
    iget-object v4, p0, Lcom/chartboost/sdk/impl/z1;->d:[B

    invoke-static {p1, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v2

    if-lez p3, :cond_19

    .line 19
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/z1;->a(I)V

    const/4 v1, 0x0

    goto :goto_19

    .line 23
    :cond_32
    iput v0, p0, Lcom/chartboost/sdk/impl/z1;->e:I

    .line 24
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_36

    throw p1

    .line 25
    :cond_39
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    return-void
.end method
