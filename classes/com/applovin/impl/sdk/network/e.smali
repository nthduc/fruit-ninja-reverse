.class public Lcom/applovin/impl/sdk/network/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Landroid/content/SharedPreferences;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    if-eqz p1, :cond_36

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.applovin.sdk.impl.postbackQueue.domain"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->b()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    return-void

    :cond_36
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->b(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing to submit postback..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersistentPostbackManager"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p1, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "PersistentPostbackManager"

    const-string v0, "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2d
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "PersistentPostbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip pending postback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_53
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->k()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_2d .. :try_end_5a} :catchall_10c

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->df:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->j()I

    move-result v1

    if-le v1, v0, :cond_92

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded maximum persisted attempt count of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Dequeuing postback: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersistentPostbackManager"

    invoke-virtual {p2, v1, v0}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_108

    :cond_92
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_95
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_109

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_ab

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_ac

    :cond_ab
    const/4 v0, 0x0

    :goto_ac
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/g;->b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->e()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/g$a;->d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/g$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->e(Z)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->f(Z)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g$a;->b()Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->S()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/network/e$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/applovin/impl/sdk/network/e$2;-><init>(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    :goto_108
    return-void

    :catchall_109
    move-exception p1

    :try_start_10a
    monitor-exit v1
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw p1

    :catchall_10c
    move-exception p1

    :try_start_10d
    monitor-exit v0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/e;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private b()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/network/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->m:Lcom/applovin/impl/sdk/b/d;

    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->df:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deserializing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " postback(s)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "PersistentPostbackManager"

    invoke-virtual {v3, v6, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_5f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/applovin/impl/sdk/network/f;

    iget-object v8, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v7, v4, v8}, Lcom/applovin/impl/sdk/network/f;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/network/f;->j()I

    move-result v4

    if-ge v4, v2, :cond_75

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_75
    iget-object v4, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping deserialization because maximum attempt count exceeded for postback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_8b} :catch_8c

    goto :goto_53

    :catch_8c
    move-exception v4

    iget-object v7, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to deserialize postback request from json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v6, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    :cond_a4
    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded postback queue with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->d(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/network/f;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "PersistentPostbackManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueued postback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private c()V
    .registers 7

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "PersistentPostbackManager"

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    :try_start_1f
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/f;->m()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_2a} :catch_2b

    goto :goto_11

    :catch_2b
    move-exception v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    const-string v5, "Unable to serialize postback request to JSON."

    invoke-virtual {v4, v3, v5, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_34
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->m:Lcom/applovin/impl/sdk/b/d;

    iget-object v4, p0, Lcom/applovin/impl/sdk/network/e;->c:Landroid/content/SharedPreferences;

    invoke-virtual {v1, v2, v0, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Wrote updated postback queue to disk."

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->d()V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->e(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/network/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/e;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/network/f;

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/network/e;->c(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_9

    :cond_19
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/e;->c(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private d(Lcom/applovin/impl/sdk/network/f;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/applovin/impl/sdk/network/e;->c()V

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2a

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dequeued successfully transmitted postback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PersistentPostbackManager"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method private e(Lcom/applovin/impl/sdk/network/f;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->g:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/network/e$3;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/e$3;-><init>(Lcom/applovin/impl/sdk/network/e;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dg:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Lcom/applovin/impl/sdk/d/ad;

    iget-object v2, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, v2, v0}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->e:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    goto :goto_2b

    :cond_28
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_2b
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;Z)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/network/f;ZLcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz p2, :cond_10

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f;->l()V

    :cond_10
    new-instance p2, Lcom/applovin/impl/sdk/network/e$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/applovin/impl/sdk/network/e$1;-><init>(Lcom/applovin/impl/sdk/network/e;Lcom/applovin/impl/sdk/network/f;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->b()Z

    move-result p1

    if-eqz p1, :cond_2e

    new-instance p1, Lcom/applovin/impl/sdk/d/ad;

    iget-object p3, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, p3, p2}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/applovin/impl/sdk/network/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p2

    sget-object p3, Lcom/applovin/impl/sdk/d/s$a;->e:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    goto :goto_31

    :cond_2e
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_31
    return-void
.end method
