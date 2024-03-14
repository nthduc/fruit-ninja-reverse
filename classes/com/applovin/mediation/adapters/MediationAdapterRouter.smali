.class public abstract Lcom/applovin/mediation/adapters/MediationAdapterRouter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;,
        Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;
    }
.end annotation


# static fields
.field private static final sharedInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/mediation/adapters/MediationAdapterRouter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sharedInstancesLock:Ljava/lang/Object;


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private final listenersLock:Ljava/lang/Object;

.field private final loadedAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/mediation/adapter/MaxAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedAdaptersLock:Ljava/lang/Object;

.field protected mOnCompletionListener:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

.field protected mSdk:Lcom/applovin/impl/sdk/j;

.field protected final mTag:Ljava/lang/String;

.field private final showingAdapters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/mediation/adapter/MaxAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final showingAdaptersLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstancesLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3f
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getMediationProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "max"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v1, v1, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    iput-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lcom/applovin/impl/sdk/j;

    goto :goto_3f

    :cond_5c
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lcom/applovin/impl/sdk/j;

    if-nez v0, :cond_67

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    const-string v1, "Invalid mediation provider detected. Please set AppLovin SDK mediation provider to MAX via AppLovinSdk.getInstance(context).setMediationProvider( AppLovinMediationProvider.MAX )"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    return-void
.end method

.method private addAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Landroid/view/View;)V
    .registers 14

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v7, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;-><init>(Lcom/applovin/mediation/adapters/MediationAdapterRouter;Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Landroid/view/View;)V

    iget-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_25

    :cond_1f
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_25
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private addLoadedAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private getListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return-object v0
.end method

.method private getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_34

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v2}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->isAdLoaded(Lcom/applovin/mediation/adapter/MaxAdapter;)Z

    move-result v3

    if-nez v3, :cond_18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_32
    monitor-exit v1

    return-object v0

    :cond_34
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_37
    move-exception p1

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw p1

    return-void
.end method

.method static getSharedInstance(Ljava/lang/Class;)Lcom/applovin/mediation/adapters/MediationAdapterRouter;
    .registers 6

    sget-object v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2c

    if-nez v2, :cond_2a

    const/4 v3, 0x0

    :try_start_12
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_24} :catch_25
    .catchall {:try_start_12 .. :try_end_24} :catchall_2c

    move-object v2, p0

    :catch_25
    :try_start_25
    sget-object p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->sharedInstances:Ljava/util/Map;

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    monitor-exit v0

    return-object v2

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method private getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_34

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_18
    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v2}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->isAdShowing(Lcom/applovin/mediation/adapter/MaxAdapter;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_32
    monitor-exit v1

    return-object v0

    :cond_34
    monitor-exit v1

    const/4 p1, 0x0

    return-object p1

    :catchall_37
    move-exception p1

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_37

    throw p1

    return-void
.end method

.method private isAdLoaded(Lcom/applovin/mediation/adapter/MaxAdapter;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

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

.method private isAdShowing(Lcom/applovin/mediation/adapter/MaxAdapter;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

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

.method private removeLoadedAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->loadedAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private removeShowingAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method


# virtual methods
.method public addAdViewAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Ljava/lang/String;Landroid/view/View;)V
    .registers 11

    sget-object v4, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Landroid/view/View;)V

    return-void
.end method

.method public addInterstitialAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;Ljava/lang/String;)V
    .registers 10

    sget-object v4, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Landroid/view/View;)V

    return-void
.end method

.method public addRewardedAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Ljava/lang/String;)V
    .registers 10

    sget-object v4, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->addAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Ljava/lang/String;Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;Landroid/view/View;)V

    return-void
.end method

.method public addShowingAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdaptersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->showingAdapters:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method protected getReward(Ljava/lang/String;)Lcom/applovin/mediation/MaxReward;
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object p1

    instance-of v1, p1, Lcom/applovin/mediation/adapters/MediationAdapterBase;

    if-eqz v1, :cond_26

    check-cast p1, Lcom/applovin/mediation/adapters/MediationAdapterBase;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getReward()Lcom/applovin/mediation/MaxReward;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_2c

    invoke-static {}, Lcom/applovin/mediation/MaxReward;->createDefault()Lcom/applovin/mediation/MaxReward;

    move-result-object p1

    return-object p1

    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method abstract initialize(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lcom/applovin/impl/sdk/j;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mSdk:Lcom/applovin/impl/sdk/j;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    return-void
.end method

.method protected onAdClicked(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_33

    const-string v1, "Interstitial clicked"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdClicked()V

    goto :goto_10

    :cond_33
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_42

    const-string v1, "Rewarded clicked"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdClicked()V

    goto :goto_10

    :cond_42
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "AdView clicked"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdClicked()V

    goto :goto_10

    :cond_51
    return-void
.end method

.method protected onAdDisplayFailed(Ljava/lang/String;Lcom/applovin/mediation/adapter/MaxAdapterError;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_46
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_68
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_8a
    return-void
.end method

.method protected onAdDisplayed(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_33

    const-string v1, "Interstitial shown"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayed()V

    goto :goto_10

    :cond_33
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_42

    const-string v1, "Rewarded shown"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayed()V

    goto :goto_10

    :cond_42
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "AdView shown"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdDisplayed()V

    goto :goto_10

    :cond_51
    return-void
.end method

.method protected onAdHidden(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_51

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_33

    const-string v1, "Interstitial hidden"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdHidden()V

    goto :goto_10

    :cond_33
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_42

    const-string v1, "Rewarded hidden"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdHidden()V

    goto :goto_10

    :cond_42
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "AdView hidden"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdHidden()V

    goto :goto_10

    :cond_51
    return-void
.end method

.method protected onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/adapter/MaxAdapterError;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8a

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_46
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_68
    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/adapter/MaxAdapterError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    goto :goto_10

    :cond_8a
    return-void
.end method

.method protected onAdLoaded(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getLoadingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->addLoadedAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v2

    sget-object v3, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->INTERSTITIAL:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_3a

    const-string v0, "Interstitial loaded"

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;

    invoke-interface {v2}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdLoaded()V

    goto :goto_10

    :cond_3a
    sget-object v3, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_49

    const-string v0, "Rewarded loaded"

    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v2}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdLoaded()V

    goto :goto_10

    :cond_49
    sget-object v3, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v3, :cond_10

    const-string v1, "AdView loaded"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v2, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdView()Landroid/view/View;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Landroid/view/View;)V

    goto :goto_10

    :cond_5c
    return-void
.end method

.method protected onAdViewAdCollapsed(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "AdView collapsed"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdCollapsed()V

    goto :goto_10

    :cond_33
    return-void
.end method

.method protected onAdViewAdExpanded(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->ADVIEW:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "AdView expanded"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdExpanded()V

    goto :goto_10

    :cond_33
    return-void
.end method

.method protected onRewardedAdVideoCompleted(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "Rewarded video completed"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdVideoCompleted()V

    goto :goto_10

    :cond_33
    return-void
.end method

.method protected onRewardedAdVideoStarted(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    const-string v1, "Rewarded video started"

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdVideoStarted()V

    goto :goto_10

    :cond_33
    return-void
.end method

.method protected onUserRewarded(Ljava/lang/String;Lcom/applovin/mediation/MaxReward;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getShowingListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_42

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_42

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getLoadType()Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    move-result-object v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getListener()Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    move-result-object v0

    sget-object v2, Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;->REWARDED:Lcom/applovin/mediation/adapters/MediationAdapterRouter$RouterAdLoadType;

    if-ne v1, v2, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded user with reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->log(Ljava/lang/String;)V

    check-cast v0, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;

    invoke-interface {v0, p2}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onUserRewarded(Lcom/applovin/mediation/MaxReward;)V

    goto :goto_10

    :cond_42
    return-void
.end method

.method public removeAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->removeLoadedAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V

    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->removeShowingAdapter(Lcom/applovin/mediation/adapter/MaxAdapter;)V

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listeners:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_36

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_36

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v3}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v4

    if-ne v4, p1, :cond_1e

    move-object v1, v3

    :cond_31
    if-eqz v1, :cond_36

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw p1

    return-void
.end method

.method protected shouldAlwaysRewardUser(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_26

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdapter()Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object p1

    instance-of v2, p1, Lcom/applovin/mediation/adapters/MediationAdapterBase;

    if-eqz v2, :cond_26

    check-cast p1, Lcom/applovin/mediation/adapters/MediationAdapterBase;

    invoke-virtual {p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->shouldAlwaysRewardUser()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_26
    monitor-exit v0

    return v1

    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public updateAdView(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->listenersLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterRouter;->getListenerWrappers(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_28

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_28

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_13
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;

    invoke-virtual {v1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->getAdView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    invoke-virtual {v1, p1}, Lcom/applovin/mediation/adapters/MediationAdapterRouter$MediationAdapterRouterListenerWrapper;->setAdView(Landroid/view/View;)V

    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1

    return-void
.end method
