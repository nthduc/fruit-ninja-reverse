.class public Lcom/facebook/GraphRequestBatch;
.super Ljava/util/AbstractList;
.source "GraphRequestBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphRequestBatch$OnProgressCallback;,
        Lcom/facebook/GraphRequestBatch$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/facebook/GraphRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private batchApplicationId:Ljava/lang/String;

.field private callbackHandler:Landroid/os/Handler;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation
.end field

.field private timeoutInMilliseconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequestBatch;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    .line 71
    iget-object v0, p1, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    .line 72
    iget v0, p1, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/GraphRequest;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    .line 37
    sget-object v0, Lcom/facebook/GraphRequestBatch;->idGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    .line 61
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(ILcom/facebook/GraphRequest;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 31
    check-cast p2, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequestBatch;->add(ILcom/facebook/GraphRequest;)V

    return-void
.end method

.method public final add(Lcom/facebook/GraphRequest;)Z
    .registers 3

    .line 119
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 31
    check-cast p1, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->add(Lcom/facebook/GraphRequest;)Z

    move-result p1

    return p1
.end method

.method public addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 104
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final executeAndWait()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->executeAndWaitImpl()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method executeAndWaitImpl()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAndWait(Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    .registers 2

    .line 219
    invoke-virtual {p0}, Lcom/facebook/GraphRequestBatch;->executeAsyncImpl()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method executeAsyncImpl()Lcom/facebook/GraphRequestAsyncTask;
    .registers 2

    .line 257
    invoke-static {p0}, Lcom/facebook/GraphRequest;->executeBatchAsync(Lcom/facebook/GraphRequestBatch;)Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get(I)Lcom/facebook/GraphRequest;
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->get(I)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final getBatchApplicationId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->batchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method final getCallbackHandler()Landroid/os/Handler;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method final getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequestBatch$Callback;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method final getId()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->id:Ljava/lang/String;

    return-object v0
.end method

.method final getRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    return-object v0
.end method

.method public getTimeout()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    return v0
.end method

.method public final remove(I)Lcom/facebook/GraphRequest;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequestBatch;->remove(I)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public removeCallback(Lcom/facebook/GraphRequestBatch$Callback;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final set(ILcom/facebook/GraphRequest;)Lcom/facebook/GraphRequest;
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/GraphRequest;

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 31
    check-cast p2, Lcom/facebook/GraphRequest;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequestBatch;->set(ILcom/facebook/GraphRequest;)Lcom/facebook/GraphRequest;

    move-result-object p1

    return-object p1
.end method

.method public final setBatchApplicationId(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/facebook/GraphRequestBatch;->batchApplicationId:Ljava/lang/String;

    return-void
.end method

.method final setCallbackHandler(Landroid/os/Handler;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/facebook/GraphRequestBatch;->callbackHandler:Landroid/os/Handler;

    return-void
.end method

.method public setTimeout(I)V
    .registers 3

    if-ltz p1, :cond_5

    .line 94
    iput p1, p0, Lcom/facebook/GraphRequestBatch;->timeoutInMilliseconds:I

    return-void

    .line 92
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument timeoutInMilliseconds must be >= 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final size()I
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/facebook/GraphRequestBatch;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
