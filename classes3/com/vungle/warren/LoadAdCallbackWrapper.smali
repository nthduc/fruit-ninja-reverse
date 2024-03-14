.class Lcom/vungle/warren/LoadAdCallbackWrapper;
.super Ljava/lang/Object;
.source "LoadAdCallbackWrapper.java"

# interfaces
.implements Lcom/vungle/warren/LoadAdCallback;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final loadAdCallback:Lcom/vungle/warren/LoadAdCallback;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/vungle/warren/LoadAdCallback;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    .line 14
    iput-object p1, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/LoadAdCallbackWrapper;)Lcom/vungle/warren/LoadAdCallback;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_38

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_38

    .line 46
    :cond_12
    check-cast p1, Lcom/vungle/warren/LoadAdCallbackWrapper;

    .line 48
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 50
    :cond_26
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_31

    iget-object p1, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_37

    :cond_31
    iget-object p1, p1, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    iget-object v2, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public onAdLoad(Ljava/lang/String;)V
    .registers 4

    .line 19
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 21
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/LoadAdCallbackWrapper$1;-><init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V
    .registers 5

    .line 31
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->loadAdCallback:Lcom/vungle/warren/LoadAdCallback;

    if-nez v0, :cond_5

    return-void

    .line 33
    :cond_5
    iget-object v0, p0, Lcom/vungle/warren/LoadAdCallbackWrapper;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/vungle/warren/LoadAdCallbackWrapper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/warren/LoadAdCallbackWrapper$2;-><init>(Lcom/vungle/warren/LoadAdCallbackWrapper;Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
