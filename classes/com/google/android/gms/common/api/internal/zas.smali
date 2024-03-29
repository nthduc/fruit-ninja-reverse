.class final Lcom/google/android/gms/common/api/internal/zas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabs;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zabm:Landroid/os/Looper;

.field private final zaej:Lcom/google/android/gms/common/api/internal/zaau;

.field private final zaek:Lcom/google/android/gms/common/api/internal/zabc;

.field private final zael:Lcom/google/android/gms/common/api/internal/zabc;

.field private final zaem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/zabc;",
            ">;"
        }
    .end annotation
.end field

.field private final zaen:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/internal/SignInConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zaeo:Lcom/google/android/gms/common/api/Api$Client;

.field private zaep:Landroid/os/Bundle;

.field private zaeq:Lcom/google/android/gms/common/ConnectionResult;

.field private zaer:Lcom/google/android/gms/common/ConnectionResult;

.field private zaes:Z

.field private final zaet:Ljava/util/concurrent/locks/Lock;

.field private zaeu:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaau;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    .line 35
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zaen:Ljava/util/Set;

    const/4 v1, 0x0

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x0

    .line 38
    iput-boolean v2, v0, Lcom/google/android/gms/common/api/internal/zas;->zaes:Z

    .line 39
    iput v2, v0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    move-object/from16 v2, p1

    .line 40
    iput-object v2, v0, Lcom/google/android/gms/common/api/internal/zas;->mContext:Landroid/content/Context;

    move-object/from16 v3, p2

    .line 41
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    move-object/from16 v15, p3

    .line 42
    iput-object v15, v0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v14, p4

    .line 43
    iput-object v14, v0, Lcom/google/android/gms/common/api/internal/zas;->zabm:Landroid/os/Looper;

    move-object/from16 v3, p10

    .line 44
    iput-object v3, v0, Lcom/google/android/gms/common/api/internal/zas;->zaeo:Lcom/google/android/gms/common/api/Api$Client;

    .line 45
    new-instance v13, Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    new-instance v12, Lcom/google/android/gms/common/api/internal/zau;

    invoke-direct {v12, v0, v1}, Lcom/google/android/gms/common/api/internal/zau;-><init>(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/api/internal/zar;)V

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v3, v13

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v11, p14

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object v1, v13

    move-object/from16 v13, p12

    move-object/from16 v14, v17

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabr;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    .line 46
    new-instance v1, Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v5, v0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    new-instance v14, Lcom/google/android/gms/common/api/internal/zat;

    const/4 v3, 0x0

    invoke-direct {v14, v0, v3}, Lcom/google/android/gms/common/api/internal/zat;-><init>(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/api/internal/zar;)V

    move-object v3, v1

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    move-object/from16 v11, p13

    move-object/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/common/api/internal/zabc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabr;)V

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    .line 47
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    .line 48
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 49
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7c

    .line 51
    :cond_8e
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_96
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    .line 52
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v1, v3, v4}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    .line 54
    :cond_a8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/api/internal/zas;->zaem:Ljava/util/Map;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method public static zaa(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;)Lcom/google/android/gms/common/api/internal/zas;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/internal/zaau;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/GoogleApiAvailabilityLight;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$Client;",
            ">;",
            "Lcom/google/android/gms/common/internal/ClientSettings;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "+",
            "Lcom/google/android/gms/signin/zad;",
            "Lcom/google/android/gms/signin/SignInOptions;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/internal/zaq;",
            ">;)",
            "Lcom/google/android/gms/common/api/internal/zas;"
        }
    .end annotation

    move-object/from16 v0, p7

    .line 2
    new-instance v6, Landroidx/collection/ArrayMap;

    invoke-direct {v6}, Landroidx/collection/ArrayMap;-><init>()V

    .line 3
    new-instance v7, Landroidx/collection/ArrayMap;

    invoke-direct {v7}, Landroidx/collection/ArrayMap;-><init>()V

    .line 4
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v10, v2

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/api/Api$Client;

    .line 6
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->providesSignIn()Z

    move-result v4

    if-eqz v4, :cond_2f

    move-object v10, v3

    .line 8
    :cond_2f
    invoke-interface {v3}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 10
    :cond_3f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$AnyClientKey;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 13
    :cond_49
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "CompositeGoogleApiClient should not be used without any APIs that require sign-in."

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 15
    new-instance v13, Landroidx/collection/ArrayMap;

    invoke-direct {v13}, Landroidx/collection/ArrayMap;-><init>()V

    .line 16
    new-instance v14, Landroidx/collection/ArrayMap;

    invoke-direct {v14}, Landroidx/collection/ArrayMap;-><init>()V

    .line 17
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v3

    .line 19
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v13, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 21
    :cond_86
    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_66

    .line 23
    :cond_96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each API in the isOptionalMap must have a corresponding client in the clients map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_9e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26
    move-object/from16 v0, p9

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v1, :cond_db

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/common/api/internal/zaq;

    .line 27
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaq;->mApi:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v13, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c7

    .line 28
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 29
    :cond_c7
    iget-object v4, v3, Lcom/google/android/gms/common/api/internal/zaq;->mApi:Lcom/google/android/gms/common/api/Api;

    invoke-interface {v14, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 30
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    .line 31
    :cond_d3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each ClientCallbacks must have a corresponding API in the isOptionalMap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_db
    new-instance v15, Lcom/google/android/gms/common/api/internal/zas;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/api/internal/zas;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$Client;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;)V

    return-object v15
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zas;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private final zaa(IZ)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/zaau;->zab(IZ)V

    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    .line 179
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method private final zaa(Landroid/os/Bundle;)V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaep:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 195
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaep:Landroid/os/Bundle;

    return-void

    :cond_7
    if-eqz p1, :cond_c

    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_c
    return-void
.end method

.method private final zaa(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 165
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    .line 169
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "CompositeGAC"

    const-string v1, "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 166
    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zaau;->zac(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 167
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zaw()V

    :goto_1d
    const/4 p1, 0x0

    .line 170
    iput p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zas;IZ)V
    .registers 3

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/zas;->zaa(IZ)V

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zas;Landroid/os/Bundle;)V
    .registers 2

    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Landroid/os/Bundle;)V

    return-void
.end method

.method private final zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "+",
            "Lcom/google/android/gms/common/api/Api$AnyClient;",
            ">;)Z"
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaem:Ljava/util/Map;

    .line 184
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    .line 185
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zas;Z)Z
    .registers 2

    .line 211
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaes:Z

    return p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zas;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zas;)V
    .registers 1

    .line 206
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zav()V

    return-void
.end method

.method private static zab(Lcom/google/android/gms/common/ConnectionResult;)Z
    .registers 1

    if-eqz p0, :cond_a

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic zac(Lcom/google/android/gms/common/api/internal/zas;)Z
    .registers 1

    .line 209
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaes:Z

    return p0
.end method

.method static synthetic zad(Lcom/google/android/gms/common/api/internal/zas;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    return-object p0
.end method

.method static synthetic zae(Lcom/google/android/gms/common/api/internal/zas;)Lcom/google/android/gms/common/api/internal/zabc;
    .registers 1

    .line 213
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    return-object p0
.end method

.method static synthetic zaf(Lcom/google/android/gms/common/api/internal/zas;)Lcom/google/android/gms/common/api/internal/zabc;
    .registers 1

    .line 215
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    return-object p0
.end method

.method private final zav()V
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zax()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_2d

    .line 151
    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_7d

    .line 152
    iget v2, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    if-ne v2, v1, :cond_24

    .line 153
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zaw()V

    return-void

    .line 154
    :cond_24
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    return-void

    .line 144
    :cond_2d
    :goto_2d
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    if-eq v0, v1, :cond_48

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    const-string v1, "CompositeGAC"

    const-string v2, "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 145
    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaep:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zaau;->zab(Landroid/os/Bundle;)V

    .line 146
    :cond_48
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zaw()V

    :goto_4b
    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    return-void

    .line 156
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zas;->zab(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 159
    :cond_66
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_7d

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_7d

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    iget v1, v1, Lcom/google/android/gms/common/api/internal/zabc;->zahw:I

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    iget v2, v2, Lcom/google/android/gms/common/api/internal/zabc;->zahw:I

    if-ge v1, v2, :cond_7a

    .line 162
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    .line 163
    :cond_7a
    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_7d
    return-void
.end method

.method private final zaw()V
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaen:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;

    .line 173
    invoke-interface {v1}, Lcom/google/android/gms/common/api/internal/SignInConnectionListener;->onComplete()V

    goto :goto_6

    .line 175
    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaen:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final zax()Z
    .registers 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private final zay()Landroid/app/PendingIntent;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeo:Lcom/google/android/gms/common/api/Api$Client;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    .line 190
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeo:Lcom/google/android/gms/common/api/Api$Client;

    .line 192
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->getSignInIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 193
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 86
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final connect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x2

    .line 77
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaes:Z

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    .line 81
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V

    return-void
.end method

.method public final disconnect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    .line 88
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeq:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 92
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zaw()V

    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 200
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "authClient"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabc;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 202
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v2, "anonClient"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/zabc;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

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

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zax()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zay()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 62
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 63
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
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

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zas;->zaa(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zax()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 66
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zay()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;->setFailedResult(Lcom/google/android/gms/common/api/Status;)V

    return-object p1

    .line 70
    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1

    .line 71
    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaem:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zabc;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zax()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 74
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zay()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 75
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1

    .line 76
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabc;->getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public final isConnected()Z
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 95
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    if-nez v0, :cond_22

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zax()Z

    move-result v0

    if-nez v0, :cond_22

    iget v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_28

    if-ne v0, v1, :cond_21

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 99
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_28
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    throw v0
.end method

.method public final isConnecting()Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 105
    :goto_d
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_13
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    throw v0
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 110
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zas;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zas;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 111
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    if-nez v0, :cond_33

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaen:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    iget p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    const/4 v0, 0x1

    if-nez p1, :cond_25

    .line 115
    iput v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaeu:I

    :cond_25
    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    .line 117
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_3a

    .line 118
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    .line 120
    :cond_33
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p1, 0x0

    return p1

    :catchall_3a
    move-exception p1

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    throw p1
.end method

.method public final maybeSignOut()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 129
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zas;->isConnecting()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 131
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaer:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_28

    .line 133
    new-instance v0, Lcom/google/android/gms/internal/base/zap;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zabm:Landroid/os/Looper;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    .line 134
    new-instance v1, Lcom/google/android/gms/common/api/internal/zar;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/internal/zar;-><init>(Lcom/google/android/gms/common/api/internal/zas;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 136
    :cond_28
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/zas;->zaw()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 137
    :goto_2b
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_31
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zas;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    throw v0
.end method

.method public final zau()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zaek:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->zau()V

    .line 126
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zas;->zael:Lcom/google/android/gms/common/api/internal/zabc;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zabc;->zau()V

    return-void
.end method
