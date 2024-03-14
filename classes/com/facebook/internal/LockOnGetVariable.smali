.class public Lcom/facebook/internal/LockOnGetVariable;
.super Ljava/lang/Object;
.source "LockOnGetVariable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 38
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/internal/LockOnGetVariable$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/internal/LockOnGetVariable$1;-><init>(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 39
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/facebook/internal/LockOnGetVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/internal/LockOnGetVariable;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private waitOnInit()V
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    :try_start_5
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/facebook/internal/LockOnGetVariable;->waitOnInit()V

    .line 56
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object v0
.end method
