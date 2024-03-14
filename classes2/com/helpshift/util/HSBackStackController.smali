.class public Lcom/helpshift/util/HSBackStackController;
.super Ljava/lang/Object;
.source "HSBackStackController.java"


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
.field private viewStateBackStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public declared-synchronized addItem(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return p1

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 76
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 77
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastItemOfType(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/util/HSBackStackController;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_27

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 96
    monitor-exit p0

    return-object v1

    .line 100
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_25

    .line 102
    iget-object v2, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_27

    if-eqz v3, :cond_22

    .line 104
    monitor-exit p0

    return-object v2

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 108
    :cond_25
    monitor-exit p0

    return-object v1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1

    return-void
.end method

.method public declared-synchronized getTopItem()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/util/HSBackStackController;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 16
    monitor-exit p0

    return-object v0

    .line 19
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTopItemOfType(Ljava/lang/Class;)Z
    .registers 3

    monitor-enter p0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/util/HSBackStackController;->getTopItem()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return p1

    :cond_d
    const/4 p1, 0x0

    .line 59
    monitor-exit p0

    return p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized popTopItem()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Lcom/helpshift/util/HSBackStackController;->isEmpty()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_12

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 29
    monitor-exit p0

    return-object v0

    .line 32
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/helpshift/util/HSBackStackController;->viewStateBackStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized popTopItem(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    .line 42
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/helpshift/util/HSBackStackController;->isTopItemOfType(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 43
    invoke-virtual {p0}, Lcom/helpshift/util/HSBackStackController;->popTopItem()Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_10

    monitor-exit p0

    return-object p1

    :cond_d
    const/4 p1, 0x0

    .line 45
    monitor-exit p0

    return-object p1

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
