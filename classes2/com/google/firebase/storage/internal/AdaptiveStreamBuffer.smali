.class public Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveStreamBuffer"

.field private static final runtime:Ljava/lang/Runtime;


# instance fields
.field private adaptiveMode:Z

.field private availableBytes:I

.field private buffer:[B

.field private reachedEnd:Z

.field private final source:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->runtime:Ljava/lang/Runtime;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->source:Ljava/io/InputStream;

    .line 38
    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    const/4 p1, 0x0

    .line 39
    iput p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->adaptiveMode:Z

    .line 41
    iput-boolean p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->reachedEnd:Z

    return-void
.end method

.method private resize(I)I
    .registers 8

    .line 118
    iget-object v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 120
    sget-object v0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    sget-object v2, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 121
    sget-object v2, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 123
    iget-boolean v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->adaptiveMode:Z

    const-string v1, "AdaptiveStreamBuffer"

    if-eqz v0, :cond_3d

    int-to-long v4, p1

    cmp-long v0, v4, v2

    if-gez v0, :cond_3d

    const/4 v0, 0x0

    .line 125
    :try_start_29
    new-array p1, p1, [B

    .line 126
    iget-object v2, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    iget v3, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    invoke-static {v2, v0, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iput-object p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_29 .. :try_end_34} :catch_35

    goto :goto_42

    :catch_35
    const-string p1, "Turning off adaptive buffer resizing due to low memory."

    .line 129
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-boolean v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->adaptiveMode:Z

    goto :goto_42

    :cond_3d
    const-string p1, "Turning off adaptive buffer resizing to conserve memory."

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_42
    iget-object p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    array-length p1, p1

    return p1
.end method


# virtual methods
.method public advance(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    const/4 v1, 0x0

    if-gt p1, v0, :cond_10

    sub-int/2addr v0, p1

    .line 64
    iput v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    .line 65
    iget-object v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    iget v2, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_34

    .line 69
    :cond_10
    iput v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    .line 70
    iget v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    :cond_14
    :goto_14
    if-ge v0, p1, :cond_33

    .line 73
    iget-object v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->source:Ljava/io/InputStream;

    sub-int v2, p1, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    long-to-int v2, v1

    if-lez v2, :cond_24

    add-int/2addr v0, v2

    goto :goto_14

    :cond_24
    if-nez v2, :cond_14

    .line 80
    iget-object v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->source:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_33
    :goto_33
    move p1, v0

    :goto_34
    return p1
.end method

.method public available()I
    .registers 2

    .line 46
    iget v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public fill(I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_d

    .line 101
    invoke-direct {p0, p1}, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->resize(I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 104
    :cond_d
    :goto_d
    iget v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    if-ge v0, p1, :cond_28

    .line 105
    iget-object v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->source:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    sub-int v3, p1, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->reachedEnd:Z

    goto :goto_28

    .line 110
    :cond_22
    iget v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    goto :goto_d

    .line 114
    :cond_28
    :goto_28
    iget p1, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->availableBytes:I

    return p1
.end method

.method public get()[B
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->buffer:[B

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/google/firebase/storage/internal/AdaptiveStreamBuffer;->reachedEnd:Z

    return v0
.end method
