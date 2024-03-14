.class abstract Lcom/applovin/impl/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/n;
.implements Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/j;

.field protected final b:Lcom/applovin/impl/sdk/q;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Lcom/applovin/impl/sdk/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Lcom/applovin/impl/sdk/u;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->d:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->e:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/t;->g:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/t;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/t;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "PreloadManager"

    const-string v3, "Possibly missing prior registered preload callback."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_3a

    iget-object p2, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aW:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_39

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/sdk/t$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/sdk/t$1;-><init>(Lcom/applovin/impl/sdk/t;Lcom/applovin/impl/sdk/ad/d;I)V

    invoke-static {v2, v0, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_39
    return-void

    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method private j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/u;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/applovin/impl/sdk/u;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->f()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/u;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private k(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/u;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/applovin/impl/sdk/u;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->g()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/u;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private l(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/u;->c()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit v0

    return p1

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p1
.end method

.method private m(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->k(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v2

    if-lez v2, :cond_11

    monitor-exit v0

    return-object v1

    :cond_11
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method private n(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method


# virtual methods
.method abstract a(Lcom/applovin/impl/sdk/ad/j;)Lcom/applovin/impl/sdk/ad/d;
.end method

.method abstract a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/d/a;
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V
.end method

.method abstract a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/j;)V
.end method

.method public a(Ljava/util/LinkedHashSet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_62

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/ad/d;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v4, "AppLovinAdService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load ad for zone ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "). Please check that the zone has been added to your AppLovin account and given at least 30 minutes to fully propagate."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x7

    invoke-virtual {p0, v3, v2, v4}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V

    goto :goto_18

    :cond_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_5f

    throw p1

    :cond_62
    :goto_62
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->n(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit v0

    return p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_9

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/t;->i(Lcom/applovin/impl/sdk/ad/d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return-void
.end method

.method b(Lcom/applovin/impl/sdk/ad/j;)V
    .registers 9

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/ad/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->g:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/applovin/impl/sdk/u;->a(Lcom/applovin/impl/sdk/ad/j;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    const-string v4, "PreloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad enqueued: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_74

    if-eqz v2, :cond_5b

    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Called additional callback regarding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreloadManager"

    invoke-virtual {v1, v4, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/applovin/impl/sdk/ad/h;

    iget-object v3, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, v0, v3}, Lcom/applovin/impl/sdk/ad/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/j;)V

    :cond_5b
    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulled ad from network and saved to preload cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PreloadManager"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_74
    move-exception p1

    :try_start_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->m(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/u;->f()Lcom/applovin/impl/sdk/ad/j;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method c(Lcom/applovin/impl/sdk/ad/d;I)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to pre-load an ad of zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreloadManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->g:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_3e

    if-eqz v1, :cond_3d

    :try_start_31
    invoke-virtual {p0, v1, p1, p2}, Lcom/applovin/impl/sdk/t;->a(Ljava/lang/Object;Lcom/applovin/impl/sdk/ad/d;I)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception p1

    const-string p2, "PreloadManager"

    const-string v0, "Encountered exception while invoking user callback"

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3d
    :goto_3d
    return-void

    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method public d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->m(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/u;->e()Lcom/applovin/impl/sdk/ad/j;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->k(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/u;->c()Z

    move-result v4

    if-eqz v4, :cond_1d

    new-instance v1, Lcom/applovin/impl/sdk/ad/h;

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/ad/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)V

    :goto_1b
    move-object v2, v1

    goto :goto_32

    :cond_1d
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v4

    if-lez v4, :cond_32

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/u;->e()Lcom/applovin/impl/sdk/ad/j;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/sdk/u;->a(Lcom/applovin/impl/sdk/ad/j;)V

    new-instance v1, Lcom/applovin/impl/sdk/ad/h;

    iget-object v2, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/ad/h;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/j;)V

    goto :goto_1b

    :cond_32
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_5d

    if-eqz v2, :cond_3f

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved ad of zone "

    goto :goto_48

    :cond_3f
    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to retrieve ad of zone "

    :goto_48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PreloadManager"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p1

    return-void
.end method

.method public f(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/u;->b()I

    move-result v0

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v2

    sub-int/2addr v0, v2

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1b

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/t;->b(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public g(Lcom/applovin/impl/sdk/ad/d;)Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->k(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/u;->a()I

    move-result v1

    if-lez v1, :cond_12

    monitor-exit v0

    return v2

    :cond_12
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object p1

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/u;->d()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v2, 0x0

    :goto_20
    monitor-exit v0

    return v2

    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public h(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->j(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/u;->a(I)V

    goto :goto_1f

    :cond_11
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->d:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/u;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->f()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/u;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->k(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/u;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->g()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/u;->a(I)V

    goto :goto_3b

    :cond_2d
    iget-object v1, p0, Lcom/applovin/impl/sdk/t;->e:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/u;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->g()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/u;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public i(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aX:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/t;->l(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloading ad for zone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreloadManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/t;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/t;->a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/d/a;

    move-result-object p1

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    :cond_44
    return-void
.end method
