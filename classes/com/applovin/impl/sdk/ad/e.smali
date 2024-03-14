.class public Lcom/applovin/impl/sdk/ad/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/mediation/MaxAdFormat;",
            "Lcom/applovin/impl/sdk/ad/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lcom/applovin/impl/sdk/ad/f;

    sget-object v3, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lcom/applovin/impl/sdk/ad/f;-><init>(Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method private c(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    const-string v5, "id"

    invoke-static {v2, v5, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v3, v2, v4}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2b
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/LinkedHashSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/e;->e:Ljava/util/LinkedHashSet;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public a(Lcom/applovin/impl/sdk/AppLovinAdBase;ZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/e;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/d;ZI)V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/e;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;ZI)V

    goto :goto_1e

    :cond_19
    iget-object p2, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p3, p2}, Lcom/applovin/impl/sdk/ad/f;->a(Lcom/applovin/impl/sdk/ad/d;ILcom/applovin/impl/sdk/j;)V

    :goto_1e
    return-void
.end method

.method public a(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/e;->b()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/f;->a()V

    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 13

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_d8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_39
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_8a

    iget-object v7, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    const/4 v8, 0x0

    invoke-static {p1, v2, v8, v7}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v9, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    const-string v10, "id"

    invoke-static {v7, v10, v8, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/applovin/impl/sdk/ad/e;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v8, v7, v9}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v7

    invoke-virtual {v7}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v8

    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_60

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_60
    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_68

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_68
    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_70

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_70
    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_78

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_78
    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_80

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_80
    sget-object v9, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_87

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_87
    :goto_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_8a
    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v4}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v5}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/ad/e;->d:Ljava/util/Map;

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/f;

    invoke-virtual {p1, v6}, Lcom/applovin/impl/sdk/ad/f;->a(Ljava/util/List;)V

    :cond_d8
    return-void
.end method

.method public b(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lcom/applovin/impl/sdk/ad/d;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    :cond_8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/e;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_14
    iget-boolean v2, p0, Lcom/applovin/impl/sdk/ad/e;->g:Z

    if-nez v2, :cond_42

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "AdZoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " zone(s)..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ad/e;->c(Lorg/json/JSONArray;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/e;->e:Ljava/util/LinkedHashSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/ad/e;->g:Z

    :cond_42
    monitor-exit v1

    return-object v0

    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_44

    throw p1
.end method
