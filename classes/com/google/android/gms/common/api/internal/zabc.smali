.class public final Lcom/google/android/gms/common/api/internal/zabc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.2.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zabs;
.implements Lcom/google/android/gms/common/api/internal/zap;


# instance fields
.field private final mContext:Landroid/content/Context;

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

.field final zaej:Lcom/google/android/gms/common/api/internal/zaau;

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

.field private final zafc:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

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

.field private final zahr:Ljava/util/concurrent/locks/Condition;

.field private final zahs:Lcom/google/android/gms/common/api/internal/zabe;

.field final zaht:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$AnyClientKey<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zahu:Lcom/google/android/gms/common/api/internal/zabd;

.field private zahv:Lcom/google/android/gms/common/ConnectionResult;

.field zahw:I

.field final zahx:Lcom/google/android/gms/common/api/internal/zabr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/zaau;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Ljava/util/Map;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/ArrayList;Lcom/google/android/gms/common/api/internal/zabr;)V
    .registers 13
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
            ">;",
            "Lcom/google/android/gms/common/api/internal/zabr;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaht:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahv:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/zabc;->zafc:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahd:Ljava/util/Map;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/common/api/internal/zabc;->zafa:Ljava/util/Map;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    .line 12
    iput-object p11, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahx:Lcom/google/android/gms/common/api/internal/zabr;

    .line 13
    check-cast p10, Ljava/util/ArrayList;

    invoke-virtual {p10}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_26
    if-ge p2, p1, :cond_34

    invoke-virtual {p10, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    add-int/lit8 p2, p2, 0x1

    check-cast p5, Lcom/google/android/gms/common/api/internal/zaq;

    .line 14
    invoke-virtual {p5, p0}, Lcom/google/android/gms/common/api/internal/zaq;->zaa(Lcom/google/android/gms/common/api/internal/zap;)V

    goto :goto_26

    .line 16
    :cond_34
    new-instance p1, Lcom/google/android/gms/common/api/internal/zabe;

    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/common/api/internal/zabe;-><init>(Lcom/google/android/gms/common/api/internal/zabc;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahs:Lcom/google/android/gms/common/api/internal/zabe;

    .line 17
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    .line 18
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zabc;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    return-void
.end method

.method static synthetic zaa(Lcom/google/android/gms/common/api/internal/zabc;)Ljava/util/concurrent/locks/Lock;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic zab(Lcom/google/android/gms/common/api/internal/zabc;)Lcom/google/android/gms/common/api/internal/zabd;
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    return-object p0
.end method


# virtual methods
.method public final blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .registers 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V

    .line 27
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnecting()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 28
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_3

    .line 31
    :catch_10
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0

    .line 33
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 34
    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0

    .line 35
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahv:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_2d

    return-object v0

    .line 37
    :cond_2d
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->connect()V

    .line 39
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 40
    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnecting()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_35

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_1f

    .line 42
    :try_start_14
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->disconnect()V

    .line 43
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 44
    :cond_1f
    iget-object p3, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_25} :catch_26

    goto :goto_7

    .line 47
    :catch_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 48
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 49
    :cond_35
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 50
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    .line 51
    :cond_3e
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahv:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_43

    return-object p1

    .line 53
    :cond_43
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public final connect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->connect()V

    return-void
.end method

.method public final disconnect()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->disconnect()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaht:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_d
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "mState="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zafa:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    .line 125
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahd:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$Client;

    .line 127
    invoke-interface {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$Client;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_23

    :cond_50
    return-void
.end method

.method public final enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
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

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zas()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->enqueue(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;
    .registers 3
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

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zas()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->execute(Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;)Lcom/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 3
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

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getClientKey()Lcom/google/android/gms/common/api/Api$AnyClientKey;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahd:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$Client;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$Client;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 61
    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->RESULT_SUCCESS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    .line 62
    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaht:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaht:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final isConnected()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaah;

    return v0
.end method

.method public final isConnecting()Z
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    instance-of v0, v0, Lcom/google/android/gms/common/api/internal/zaai;

    return v0
.end method

.method public final maybeSignIn(Lcom/google/android/gms/common/api/internal/SignInConnectionListener;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final maybeSignOut()V
    .registers 1

    return-void
.end method

.method public final onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 105
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnected(Landroid/os/Bundle;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 106
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 109
    throw p1
.end method

.method public final onConnectionSuspended(I)V
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/zabd;->onConnectionSuspended(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 115
    throw p1
.end method

.method public final zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .registers 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/Api;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;Z)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/zabd;->zaa(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 100
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception p1

    .line 102
    iget-object p2, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    throw p1
.end method

.method final zaa(Lcom/google/android/gms/common/api/internal/zabf;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahs:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabe;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahs:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zaa(Ljava/lang/RuntimeException;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahs:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/api/internal/zabe;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahs:Lcom/google/android/gms/common/api/internal/zabe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zabe;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final zaax()V
    .registers 10

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    :try_start_5
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaai;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaex:Lcom/google/android/gms/common/internal/ClientSettings;

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zabc;->zafa:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/zabc;->zafc:Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaci:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    iget-object v7, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/zabc;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/common/api/internal/zaai;-><init>(Lcom/google/android/gms/common/api/internal/zabc;Lcom/google/android/gms/common/internal/ClientSettings;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailabilityLight;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_2a

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_2a
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 72
    throw v0
.end method

.method final zaay()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 74
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaej:Lcom/google/android/gms/common/api/internal/zaau;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaau;->zaau()Z

    .line 75
    new-instance v0, Lcom/google/android/gms/common/api/internal/zaah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zaah;-><init>(Lcom/google/android/gms/common/api/internal/zabc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_21

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    throw v0
.end method

.method final zaf(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 83
    :try_start_5
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahv:Lcom/google/android/gms/common/ConnectionResult;

    .line 84
    new-instance p1, Lcom/google/android/gms/common/api/internal/zaav;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/zaav;-><init>(Lcom/google/android/gms/common/api/internal/zabc;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zabd;->begin()V

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahr:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 87
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1e
    move-exception p1

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zaet:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 90
    throw p1
.end method

.method public final zau()V
    .registers 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zabc;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabc;->zahu:Lcom/google/android/gms/common/api/internal/zabd;

    check-cast v0, Lcom/google/android/gms/common/api/internal/zaah;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zaah;->zaal()V

    :cond_d
    return-void
.end method
