.class Lcom/chartboost/sdk/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/d;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/g;

.field private final b:Lcom/chartboost/sdk/impl/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/g;Lcom/chartboost/sdk/impl/h;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    return-void
.end method

.method private d(Lcom/chartboost/sdk/Model/c;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/f;->e(Lcom/chartboost/sdk/Model/c;)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/chartboost/sdk/Model/c;)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget v0, v0, Lcom/chartboost/sdk/impl/a;->a:I

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->a:I

    if-eq v0, v1, :cond_14

    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->r:Lcom/chartboost/sdk/Model/a;

    iget p1, p1, Lcom/chartboost/sdk/Model/a;->b:I

    if-eq p1, v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private f(Lcom/chartboost/sdk/Model/c;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/f;->d(Lcom/chartboost/sdk/Model/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/f;->c(Lcom/chartboost/sdk/Model/c;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;)V
    .registers 8

    .line 1
    new-instance p1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    iget-object v3, v4, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v2, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 12

    .line 6
    new-instance v0, Lcom/chartboost/sdk/d$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/g;->l:Lcom/chartboost/sdk/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/d$a;-><init>(Lcom/chartboost/sdk/d;I)V

    .line 7
    iput-object p1, v0, Lcom/chartboost/sdk/d$a;->c:Lcom/chartboost/sdk/Model/c;

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    .line 10
    new-instance p1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    iget-object v6, v7, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v5, 0x6

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 14
    iget-object p2, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object p2, p2, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .registers 9

    const/4 v0, 0x1

    .line 1
    iput v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->p:Lcom/chartboost/sdk/impl/a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/a;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->l:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/f;->f(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_34

    .line 7
    :cond_1c
    new-instance p1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    iget-object v4, v5, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v3, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_34
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/c;)V
    .registers 9

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->A:Z

    .line 3
    new-instance p1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/f;->b:Lcom/chartboost/sdk/impl/h;

    iget-object v4, v5, Lcom/chartboost/sdk/impl/h;->b:Ljava/lang/String;

    const/4 v3, 0x5

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Lcom/chartboost/sdk/impl/g;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/g;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
