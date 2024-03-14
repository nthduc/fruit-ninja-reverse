.class Lcom/chartboost/sdk/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/chartboost/sdk/impl/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/Libraries/i;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final g:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/j;",
            ">;"
        }
    .end annotation
.end field

.field private final h:J

.field final i:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Libraries/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicReference;JLjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/Libraries/i;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/impl/j;",
            ">;J",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l;->a:Lcom/chartboost/sdk/Libraries/i;

    .line 3
    iput p2, p0, Lcom/chartboost/sdk/impl/l;->b:I

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/l;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/l;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/l;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    iput-object p7, p0, Lcom/chartboost/sdk/impl/l;->g:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    iput-wide p8, p0, Lcom/chartboost/sdk/impl/l;->h:J

    .line 10
    iput-object p10, p0, Lcom/chartboost/sdk/impl/l;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p6}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/l;)I
    .registers 3

    .line 1
    iget v0, p0, Lcom/chartboost/sdk/impl/l;->b:I

    iget p1, p1, Lcom/chartboost/sdk/impl/l;->b:I

    sub-int/2addr v0, p1

    return v0
.end method

.method a(Ljava/util/concurrent/Executor;Z)V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_a

    if-nez p2, :cond_33

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/l;->g:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/j;

    if-eqz v0, :cond_33

    .line 5
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/l;->a:Lcom/chartboost/sdk/Libraries/i;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/l;->h:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    long-to-int v2, v1

    .line 6
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/l;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, v0, p2, v2, v3}, Lcom/chartboost/sdk/impl/k;-><init>(Lcom/chartboost/sdk/impl/j;ZII)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_33
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 1
    check-cast p1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/l;->a(Lcom/chartboost/sdk/impl/l;)I

    move-result p1

    return p1
.end method
