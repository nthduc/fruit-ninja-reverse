.class public Lcom/applovin/impl/communicator/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# instance fields
.field private a:Z

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/communicator/CommunicatorMessageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/communicator/b;->a:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/b;->d:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/communicator/b;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/communicator/b;->b:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/communicator/b;->a:Z

    return-void
.end method

.method public b()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/communicator/b;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/communicator/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/communicator/b;

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/communicator/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    iget-object p1, p1, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_47

    :cond_37
    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne v1, p1, :cond_46

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/applovin/impl/communicator/b;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V
    .registers 5
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->b()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "AppLovinCommunicator"

    const-string p2, "Message received for GC\'d subscriber"

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    check-cast p2, Lcom/applovin/impl/communicator/CommunicatorMessageImpl;

    const/4 p1, 0x0

    iget-object p3, p0, Lcom/applovin/impl/communicator/b;->e:Ljava/lang/Object;

    monitor-enter p3

    :try_start_14
    iget-object v0, p0, Lcom/applovin/impl/communicator/b;->d:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object p1, p0, Lcom/applovin/impl/communicator/b;->d:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    :cond_22
    monitor-exit p3
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_2f

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Lcom/applovin/impl/communicator/b;->b()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    move-result-object p1

    check-cast p2, Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    invoke-interface {p1, p2}, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;->onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    :cond_2e
    return-void

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1
.end method
