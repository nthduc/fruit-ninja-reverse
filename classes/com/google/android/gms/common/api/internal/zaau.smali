.class public final Lcom/google/android/gms/common/api/internal/zaau;
.super Lcom/google/android/gms/common/api/GoogleApiClient;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabr;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zabm:Landroid/os/Looper;

.field private final zacf:I

.field private final zach:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;"
        }
    .end annotation
.end field

.field private zacl:Z

.field private final zaet:Ljava/util/concurrent/locks/Lock;

.field private final zaex:Lcom/google/android/gms/common/internal/ClientSettings;

.field private final zafa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final zafg:Ljava/util/Queue;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

.field private zagx:Lcom/google/android/gms/common/api/internal/zabs;

.field private volatile zagy:Z

.field private zagz:J

.field private zaha:J

.field private final zahb:Lcom/google/android/gms/common/api/internal/zabb;

.field private zahc:Lcom/google/android/gms/common/api/internal/zabo;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field final zahd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;"
        }
    .end annotation
.end field

.field zahe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zahf:Lcom/google/android/gms/common/api/internal/ListenerHolders;

.field private final zahg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;"
        }
    .end annotation
.end field

.field private zahh:Ljava/lang/Integer;

.field zahi:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/zacn;",
            ">;"
        }
    .end annotation
.end field

.field final zahj:Lcom/google/android/gms/common/api/internal/zaco;

.field private final zahk:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;II",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    .line 3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v3

    if-eqz v3, :cond_18

    const-wide/16 v3, 0x2710

    goto :goto_1b

    :cond_18
    const-wide/32 v3, 0x1d4c0

    :goto_1b
    iput-wide v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zagz:J

    const-wide/16 v3, 0x1388

    .line 6
    iput-wide v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zaha:J

    .line 7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahe:Ljava/util/Set;

    .line 8
    new-instance v3, Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-direct {v3}, Lcom/google/android/gms/common/api/internal/ListenerHolders;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahf:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    .line 9
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    .line 10
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    .line 11
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaax;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/internal/zaax;-><init>(Lcom/google/android/gms/common/api/internal/zaau;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahk:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;

    move-object v2, p1

    .line 12
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 13
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    .line 14
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zacl:Z

    .line 15
    new-instance v2, Lcom/google/android/gms/common/internal/GmsClientEventManager;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahk:Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;

    invoke-direct {v2, p3, v3}, Lcom/google/android/gms/common/internal/GmsClientEventManager;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    .line 16
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    .line 17
    new-instance v2, Lcom/google/android/gms/common/api/internal/zabb;

    invoke-direct {v2, p0, p3}, Lcom/google/android/gms/common/api/internal/zabb;-><init>(Lcom/google/android/gms/common/api/internal/zaau;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v1, p11

    .line 19
    iput v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    .line 20
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    if-ltz v1, :cond_66

    .line 21
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    :cond_66
    move-object v1, p7

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zafa:Ljava/util/Map;

    move-object v1, p10

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    move-object/from16 v1, p13

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahg:Ljava/util/ArrayList;

    .line 25
    new-instance v1, Lcom/google/android/gms/common/api/internal/zaco;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/internal/zaco;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zahj:Lcom/google/android/gms/common/api/internal/zaco;

    .line 26
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .line 27
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_7d

    .line 29
    :cond_8f
    invoke-interface {p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .line 30
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_93

    :cond_a5
    move-object v2, p4

    .line 32
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zaau;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    move-object v1, p6

    .line 33
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zaau;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    return-void
.end method

.method private final resume()V
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 265
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-eqz v0, :cond_c

    .line 267
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaas()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    .line 268
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_12
    move-exception v0

    .line 270
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 271
    throw v0
.end method

.method public static zaa(Ljava/lang/Iterable;Z)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;Z)I"
        }
    .end annotation

    .line 385
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 386
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    .line 388
    :cond_1a
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_22
    if-eqz v0, :cond_2b

    if-eqz v1, :cond_2a

    if-eqz p1, :cond_2a

    const/4 p0, 0x2

    return p0

    :cond_2a
    return v3

    :cond_2b
    const/4 p0, 0x3

    return p0
.end method

.method private final zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .registers 6

    .line 219
    sget-object v0, Lcom/google/android/gms/common/internal/service/Common;->zapy:Lcom/google/android/gms/common/internal/service/zad;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/service/zad;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/internal/zaay;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/common/api/internal/zaay;-><init>(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/api/internal/StatusPendingResult;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 220
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaau;)V
    .registers 1

    .line 401
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->resume()V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V
    .registers 4

    const/4 p3, 0x1

    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method private final zaas()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->connect()V

    return-void
.end method

.method private final zaat()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 273
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaau()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaas()V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_14

    .line 276
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 279
    throw v0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zaau;)V
    .registers 1

    .line 402
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaat()V

    return-void
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zaau;)Landroid/content/Context;
    .registers 1

    .line 404
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private final zae(I)V
    .registers 15

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-nez v0, :cond_b

    .line 229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    goto :goto_11

    .line 230
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_dc

    .line 234
    :goto_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_16

    return-void

    .line 238
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 239
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v1, 0x1

    .line 241
    :cond_36
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    goto :goto_22

    .line 244
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v4, :cond_88

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4b

    const/4 v1, 0x3

    goto :goto_8c

    :cond_4b
    if-eqz v1, :cond_8c

    .line 251
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacl:Z

    if-eqz v0, :cond_6e

    .line 252
    new-instance v12, Lcom/google/android/gms/common/api/internal/zax;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafa:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahg:Ljava/util/ArrayList;

    const/4 v11, 0x1

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zaau;Z)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    .line 253
    :cond_6e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafa:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahg:Ljava/util/ArrayList;

    move-object v1, p0

    .line 254
    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    :cond_88
    if-eqz v1, :cond_d4

    if-nez v2, :cond_cc

    .line 256
    :cond_8c
    :goto_8c
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacl:Z

    if-eqz v0, :cond_af

    if-nez v2, :cond_af

    .line 257
    new-instance v12, Lcom/google/android/gms/common/api/internal/zax;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafa:Ljava/util/Map;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahg:Ljava/util/ArrayList;

    const/4 v11, 0x0

    move-object v0, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zax;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zaau;Z)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    .line 258
    :cond_af
    new-instance v12, Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafa:Ljava/util/Map;

    iget-object v9, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v10, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahg:Ljava/util/ArrayList;

    move-object v0, v12

    move-object v2, p0

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabr;)V

    iput-object v12, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    return-void

    .line 249
    :cond_cc
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_d4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_dc
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 232
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/zaau;->zaf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    .line 233
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/api/internal/zaau;->zaf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot use sign-in mode: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Mode was already set to "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method private static zaf(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_c
    const-string p0, "SIGN_IN_MODE_NONE"

    return-object p0

    :cond_f
    const-string p0, "SIGN_IN_MODE_OPTIONAL"

    return-object p0

    :cond_12
    const-string p0, "SIGN_IN_MODE_REQUIRED"

    return-object p0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 5

    .line 145
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    const-string v1, "blockingConnect must not be called on the UI thread"

    .line 146
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 148
    :try_start_19
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    if-ltz v0, :cond_29

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_47

    .line 150
    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-nez v0, :cond_3e

    .line 151
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    goto :goto_47

    .line 153
    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_61

    .line 155
    :goto_47
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaau;->zae(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->blockingConnect()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_19 .. :try_end_5b} :catchall_69

    .line 158
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 154
    :cond_61
    :try_start_61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    .line 160
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 161
    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 162
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    const-string v1, "blockingConnect must not be called on the UI thread"

    .line 163
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    .line 164
    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-nez v0, :cond_32

    .line 167
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    goto :goto_3b

    .line 169
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_55

    .line 171
    :goto_3b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zaau;->zae(I)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->enableCallbacks()V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabs;->blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_5d

    .line 174
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 170
    :cond_55
    :try_start_55
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p1

    .line 176
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 177
    throw p1
.end method

.method public final clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const-string v2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API"

    .line 203
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 204
    new-instance v0, Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/StatusPendingResult;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    .line 205
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    sget-object v3, Lcom/google/android/gms/common/internal/service/Common;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 206
    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    goto :goto_62

    .line 207
    :cond_2e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 208
    new-instance v2, Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/common/api/internal/zaaw;-><init>(Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    .line 209
    new-instance v3, Lcom/google/android/gms/common/api/internal/zaaz;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/common/api/internal/zaaz;-><init>(Lcom/google/android/gms/common/api/internal/zaau;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V

    .line 210
    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/common/internal/service/Common;->API:Lcom/google/android/gms/common/api/Api;

    .line 211
    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    .line 212
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    .line 214
    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    .line 215
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :goto_62
    return-object v0
.end method

.method public final connect()V
    .registers 3

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 125
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    const/4 v1, 0x0

    if-ltz v0, :cond_15

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    const-string v0, "Sign-in mode should have been set explicitly by auto-manage."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_33

    .line 127
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    if-nez v0, :cond_2a

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->zaa(Ljava/lang/Iterable;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    goto :goto_33

    .line 130
    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_42

    .line 132
    :goto_33
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahh:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect(I)V
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_4a

    .line 133
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 131
    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception v0

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 136
    throw v0
.end method

.method public final connect(I)V
    .registers 5

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_10

    if-eq p1, v1, :cond_10

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    const/16 v0, 0x21

    .line 138
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Illegal sign-in mode: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zaau;->zae(I)V

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaas()V
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_32

    .line 141
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_32
    move-exception p1

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 144
    throw p1
.end method

.method public final disconnect()V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahj:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaco;->release()V

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_13

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->disconnect()V

    .line 182
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahf:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->release()V

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    const/4 v2, 0x0

    .line 184
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zaa(Lcom/google/android/gms/common/api/internal/zacs;)V

    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    goto :goto_1e

    .line 187
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_4f

    if-nez v0, :cond_41

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 191
    :cond_41
    :try_start_41
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaau()Z

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_4f

    .line 193
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_4f
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    throw v0

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 375
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mContext="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mResuming="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    .line 377
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 378
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahj:Lcom/google/android/gms/common/api/internal/zaco;

    const-string v1, " mUnconsumedApiCalls.size()="

    .line 379
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zaco;->zale:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_45

    .line 381
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabs;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_45
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    .line 37
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, "the API"

    :goto_29
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 43
    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-nez v0, :cond_60

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_6c

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 48
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_6c

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_6c
    move-exception p1

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    throw p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 6
    .param p1    # Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    .line 55
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getApi()Lcom/google/android/gms/common/api/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    :cond_27
    const-string v1, "the API"

    :goto_29
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x41

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GoogleApiClient is not configured to use "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " required for this call."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 61
    :try_start_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_8b

    .line 64
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-eqz v0, :cond_7f

    .line 66
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahj:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/api/internal/zaco;->zab(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    .line 70
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V
    :try_end_78
    .catchall {:try_start_51 .. :try_end_78} :catchall_93

    goto :goto_5e

    .line 73
    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 75
    :cond_7f
    :try_start_7f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_93

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 62
    :cond_8b
    :try_start_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw p1

    return-void
.end method

.method public final getClient(Lcom/google/android/gms/common/api/Api$AnyClientKey;)Lcom/google/android/gms/common/api/Api$Client;
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Api$AnyClientKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "TC;>;)TC;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Appropriate Api was not requested."

    .line 89
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 5
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    const-string v0, "GoogleApiClientImpl"

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 98
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-eqz v1, :cond_12

    goto :goto_1a

    .line 100
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/api/internal/zabs;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    if-nez v1, :cond_65

    .line 105
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-eqz v1, :cond_3a

    .line 107
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_7f

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 110
    :cond_3a
    :try_start_3a
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaaw()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " requested in getConnectionResult is not connected but is not present in the failed  connections map"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 113
    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5f
    .catchall {:try_start_3a .. :try_end_5f} :catchall_7f

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 118
    :cond_65
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 120
    :cond_6b
    :try_start_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " was never registered with GoogleApiClient"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    throw p1
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 337
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    return-object v0
.end method

.method public final hasApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 94
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahd:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Api$Client;

    if-eqz p1, :cond_1e

    .line 95
    invoke-interface {p1}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    return v1
.end method

.method public final isConnected()Z
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnecting()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result p1

    return p1
.end method

.method public final isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result p1

    return p1
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 3

    .line 339
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabs;->maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method public final maybeSignOut()V
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    if-eqz v0, :cond_7

    .line 341
    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabs;->maybeSignOut()V

    :cond_7
    return-void
.end method

.method public final reconnect()V
    .registers 1

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void
.end method

.method public final registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 296
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final registerListener(Ljava/lang/Object;)Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 81
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahf:Lcom/google/android/gms/common/api/internal/ListenerHolders;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zabm:Landroid/os/Looper;

    const-string v2, "NO_TYPE"

    .line 82
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/ListenerHolders;->zaa(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_15

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_15
    move-exception p1

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 87
    throw p1
.end method

.method public final stopAutoManage(Landroidx/fragment/app/FragmentActivity;)V
    .registers 3
    .param p1    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 222
    new-instance v0, Lcom/google/android/gms/common/api/internal/LifecycleActivity;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleActivity;-><init>(Landroid/app/Activity;)V

    .line 223
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    if-ltz p1, :cond_13

    .line 224
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zai;->zaa(Lcom/google/android/gms/common/api/internal/LifecycleActivity;)Lcom/google/android/gms/common/api/internal/zai;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zacf:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/zai;->zaa(I)V

    return-void

    .line 225
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public final unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public final zaa(Lcom/google/android/gms/common/api/internal/zacn;)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 344
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 345
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    .line 346
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1b

    .line 347
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1b
    move-exception p1

    .line 349
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 350
    throw p1
.end method

.method final zaau()Z
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 281
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 284
    :cond_6
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabb;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zabb;->removeMessages(I)V

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahc:Lcom/google/android/gms/common/api/internal/zabo;

    if-eqz v0, :cond_1e

    .line 288
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabo;->unregister()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahc:Lcom/google/android/gms/common/api/internal/zabo;

    :cond_1e
    return v1
.end method

.method final zaav()Z
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 363
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1e

    if-nez v0, :cond_10

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    return v0

    .line 367
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1e

    xor-int/lit8 v0, v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_1e
    move-exception v0

    .line 370
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 371
    throw v0
.end method

.method final zaaw()Ljava/lang/String;
    .registers 5

    .line 372
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 373
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {p0, v3, v2, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zab(IZ)V
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3f

    if-nez p2, :cond_3f

    .line 316
    iget-boolean p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-nez p2, :cond_3f

    .line 318
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    .line 319
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahc:Lcom/google/android/gms/common/api/internal/zabo;

    if-nez p2, :cond_29

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result p2

    if-nez p2, :cond_29

    .line 320
    :try_start_16
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/common/api/internal/zaba;

    invoke-direct {v3, p0}, Lcom/google/android/gms/common/api/internal/zaba;-><init>(Lcom/google/android/gms/common/api/internal/zaau;)V

    .line 322
    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zabq;)Lcom/google/android/gms/common/api/internal/zabo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahc:Lcom/google/android/gms/common/api/internal/zabo;
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_29} :catch_29

    .line 325
    :catch_29
    :cond_29
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    .line 326
    invoke-virtual {p2, v1}, Lcom/google/android/gms/common/api/internal/zabb;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagz:J

    .line 327
    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zabb;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 328
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahb:Lcom/google/android/gms/common/api/internal/zabb;

    .line 329
    invoke-virtual {p2, v0}, Lcom/google/android/gms/common/api/internal/zabb;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaha:J

    .line 330
    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/zabb;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 331
    :cond_3f
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahj:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/zaco;->zabv()V

    .line 332
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onUnintentionalDisconnection(I)V

    .line 333
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V

    if-ne p1, v0, :cond_53

    .line 335
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaas()V

    :cond_53
    return-void
.end method

.method public final zab(Landroid/os/Bundle;)V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 301
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 302
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zafg:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    goto :goto_0

    .line 303
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public final zab(Lcom/google/android/gms/common/api/internal/zacn;)V
    .registers 4

    .line 351
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 352
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_3a

    const-string v1, "GoogleApiClientImpl"

    if-nez v0, :cond_16

    :try_start_b
    const-string p1, "Attempted to remove pending transform when no transforms are registered."

    .line 353
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 354
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zahi:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    const-string p1, "Failed to remove pending transform - this may lead to memory leaks!"

    .line 355
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 356
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaav()Z

    move-result p1

    if-nez p1, :cond_34

    .line 357
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagx:Lcom/google/android/gms/common/api/internal/zabs;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabs;->zau()V
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_3a

    .line 358
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3a
    move-exception p1

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 361
    throw p1
.end method

.method public final zac(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zach:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaau;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isPlayServicesPossiblyUpdating(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 306
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zaau;->zaau()Z

    .line 308
    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagy:Z

    if-nez v0, :cond_1f

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->onConnectionFailure(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 311
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaau;->zagw:Lcom/google/android/gms/common/internal/GmsClientEventManager;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/GmsClientEventManager;->disableCallbacks()V

    :cond_1f
    return-void
.end method
