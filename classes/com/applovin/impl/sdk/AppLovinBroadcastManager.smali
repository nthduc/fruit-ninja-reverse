.class public Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;,
        Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;,
        Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;
    }
.end annotation


# static fields
.field private static f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

.field private static final g:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;",
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->g:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$1;-><init>(Lcom/applovin/impl/sdk/AppLovinBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Intent;)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    iget-object v3, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v14, 0x0

    if-nez v3, :cond_2e

    monitor-exit v2

    return-object v14

    :cond_2e
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object/from16 v16, v14

    :goto_34
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-boolean v3, v9, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    if-eqz v3, :cond_46

    goto :goto_58

    :cond_46
    iget-object v3, v9, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->a:Landroid/content/IntentFilter;

    const-string v17, "AppLovinBroadcastManager"

    move-object v4, v0

    move-object v5, v10

    move-object v6, v12

    move-object v7, v11

    move-object v8, v13

    move-object v14, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5a

    :goto_58
    const/4 v14, 0x0

    goto :goto_34

    :cond_5a
    if-nez v16, :cond_62

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_64

    :cond_62
    move-object/from16 v3, v16

    :goto_64
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iput-boolean v4, v14, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    move-object/from16 v16, v3

    goto :goto_58

    :cond_6d
    if-nez v16, :cond_72

    monitor-exit v2

    const/4 v0, 0x0

    return-object v0

    :cond_72
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->c:Z

    goto :goto_76

    :cond_86
    monitor-exit v2

    return-object v16

    :catchall_88
    move-exception v0

    monitor-exit v2
    :try_end_8a
    .catchall {:try_start_5 .. :try_end_8a} :catchall_88

    throw v0

    return-void
.end method

.method private a()V
    .registers 10

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    new-array v1, v1, [Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_45

    array-length v0, v1

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_26
    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-boolean v6, v5, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    if-nez v6, :cond_26

    iget-object v5, v5, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    iget-object v6, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    iget-object v7, v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;->a:Landroid/content/Intent;

    iget-object v8, v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;->b:Ljava/util/Map;

    invoke-interface {v5, v6, v7, v8}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    goto :goto_26

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinBroadcastManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/impl/sdk/AppLovinBroadcastManager;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    :cond_12
    sget-object p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->f:Lcom/applovin/impl/sdk/AppLovinBroadcastManager;

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method


# virtual methods
.method public registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    invoke-direct {v1, p2, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;-><init>(Landroid/content/IntentFilter;Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_44

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw p1

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z
    .registers 7
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_c
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->d:Ljava/util/ArrayList;

    new-instance v3, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;

    invoke-direct {v3, p1, p2, v1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$a;-><init>(Landroid/content/Intent;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_24

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->e:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_24
    monitor-exit v0

    return p2

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public sendBroadcastSync(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 6
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-boolean v2, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    if-nez v2, :cond_b

    iget-object v1, v1, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a:Landroid/content/Context;

    invoke-interface {v1, v2, p1, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/util/Map;)V

    goto :goto_b

    :cond_23
    return-void
.end method

.method public sendBroadcastSyncWithPendingBroadcasts(Landroid/content/Intent;Ljava/util/Map;)V
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->a()V

    :cond_9
    return-void
.end method

.method public sendBroadcastWithAdObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "ad"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcast(Landroid/content/Intent;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public unregisterReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V
    .registers 11

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_f

    monitor-exit v0

    return-void

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    iget-object v4, v2, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->a:Landroid/content/IntentFilter;

    invoke-virtual {v4}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_3f

    goto :goto_28

    :cond_3f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_43
    :goto_43
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;

    iget-object v8, v8, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->b:Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;

    if-ne v8, p1, :cond_43

    iput-boolean v3, v2, Lcom/applovin/impl/sdk/AppLovinBroadcastManager$b;->d:Z

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    :cond_59
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_28

    iget-object v6, p0, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p1

    return-void
.end method
