.class public Lcom/ironsource/mediationsdk/AdapterRepository;
.super Ljava/lang/Object;
.source "AdapterRepository.java"


# static fields
.field private static final IRONSOURCE_ADAPTER_PREFIX:Ljava/lang/String; = "IronSource"

.field private static final lock:Ljava/lang/Object;

.field private static mInstance:Lcom/ironsource/mediationsdk/AdapterRepository;


# instance fields
.field private adapters:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterDebug:Ljava/lang/Boolean;

.field private mAge:Ljava/lang/Integer;

.field private mAppKey:Ljava/lang/String;

.field private mConsent:Ljava/lang/Boolean;

.field private mDidIronSourceEarlyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGender:Ljava/lang/String;

.field private mMetaData:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/ironsource/mediationsdk/AdapterRepository;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/AdapterRepository;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->mInstance:Lcom/ironsource/mediationsdk/AdapterRepository;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mDidIronSourceEarlyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mMetaData:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private earlyInitAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;)V
    .registers 7

    const-string v0, "SupersonicAds"

    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "IronSource"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mDidIronSourceEarlyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK5 earlyInit  <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ">"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 136
    iget-object p3, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAppKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mUserId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->earlyInit(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_3a
    return-void
.end method

.method private getAdapterByReflection(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 8

    .line 143
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.ironsource.adapters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Adapter"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "startAdapter"

    const/4 v1, 0x1

    .line 144
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    return-object p1

    :catch_3f
    move-exception p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error while loading adapter - exception = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logErrorInternal(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private getAdapterInternal(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 8

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") - Getting adapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_1f
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was already allocated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 102
    iget-object p2, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    monitor-exit v0

    return-object p1

    .line 106
    :cond_45
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapterByReflection(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    if-nez v1, :cond_62

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " adapter was not loaded"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logErrorInternal(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 109
    monitor-exit v0

    return-object p1

    .line 112
    :cond_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was allocated (adapter version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", sdk version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getCoreSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 116
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setMetaData(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setConsent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 118
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAge(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 119
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setGender(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 120
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAdaptersDebug(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 121
    invoke-direct {p0, p3, v1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->earlyInitAdapter(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/AbstractAdapter;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    monitor-exit v0

    return-object v1

    :catchall_ae
    move-exception p1

    .line 124
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_1f .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method private getAdapterKey(Lcom/ironsource/mediationsdk/model/ProviderSettings;)Ljava/lang/String;
    .registers 3

    .line 256
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_b
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderName()Ljava/lang/String;

    move-result-object p1

    :goto_f
    return-object p1
.end method

.method public static getInstance()Lcom/ironsource/mediationsdk/AdapterRepository;
    .registers 1

    .line 36
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->mInstance:Lcom/ironsource/mediationsdk/AdapterRepository;

    return-object v0
.end method

.method private getUniqueAdapters()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ironsource/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/ironsource/mediationsdk/AdapterRepository$1;

    invoke-direct {v1, p0}, Lcom/ironsource/mediationsdk/AdapterRepository$1;-><init>(Lcom/ironsource/mediationsdk/AdapterRepository;)V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 269
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private logErrorInternal(Ljava/lang/String;)V
    .registers 6

    .line 153
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdapterRepository: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private logInternal(Ljava/lang/String;)V
    .registers 6

    .line 157
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdapterRepository: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    return-void
.end method

.method private setAdaptersDebug(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAdapterDebug:Ljava/lang/Boolean;

    if-eqz v0, :cond_30

    .line 215
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAdapterDebug(Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_30

    :catch_8
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while setting adapterDebug of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method private setAge(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAge:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    .line 172
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setAge(I)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_34

    :catch_c
    move-exception v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while setting age of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_34
    :goto_34
    return-void
.end method

.method private setConsent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 5

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mConsent:Ljava/lang/Boolean;

    if-eqz v0, :cond_36

    .line 61
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mConsent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setConsent(Z)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_36

    :catch_e
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while setting consent of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_36
    :goto_36
    return-void
.end method

.method private setGender(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 5

    .line 191
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mGender:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 193
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_30

    :catch_8
    move-exception v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while setting gender of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_30
    :goto_30
    return-void
.end method

.method private setMetaData(Lcom/ironsource/mediationsdk/AbstractAdapter;)V
    .registers 6

    .line 239
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mMetaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    :try_start_16
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mMetaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_21} :catch_22

    goto :goto_a

    :catch_22
    move-exception v1

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while setting metadata of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :cond_4b
    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 5

    .line 73
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapterKey(Lcom/ironsource/mediationsdk/model/ProviderSettings;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupersonicAds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 77
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    return-object p1

    .line 80
    :cond_19
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapterByReflection(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 4

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter(Lcom/ironsource/mediationsdk/model/ProviderSettings;Lorg/json/JSONObject;Z)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 5

    .line 89
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapterKey(Lcom/ironsource/mediationsdk/model/ProviderSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_9

    const-string p1, "IronSource"

    goto :goto_d

    .line 91
    :cond_9
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object p1

    .line 93
    :goto_d
    invoke-direct {p0, v0, p1, p2}, Lcom/ironsource/mediationsdk/AdapterRepository;->getAdapterInternal(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object p1

    return-object p1
.end method

.method public getMetaData()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mMetaData:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public setAdaptersDebug(Z)V
    .registers 4

    .line 204
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAdapterDebug:Ljava/lang/Boolean;

    .line 206
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 207
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAdaptersDebug(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_13

    .line 209
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1

    return-void
.end method

.method public setAge(I)V
    .registers 4

    .line 161
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAge:Ljava/lang/Integer;

    .line 163
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 164
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setAge(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_13

    .line 166
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1

    return-void
.end method

.method public setConsent(Z)V
    .registers 4

    .line 50
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mConsent:Ljava/lang/Boolean;

    .line 52
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 53
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setConsent(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_13

    .line 55
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 4

    .line 181
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mGender:Ljava/lang/String;

    .line 183
    iget-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 184
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/AdapterRepository;->setGender(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    goto :goto_f

    .line 186
    :cond_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p1

    return-void
.end method

.method public setInitParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mAppKey:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mUserId:Ljava/lang/String;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 225
    sget-object v0, Lcom/ironsource/mediationsdk/AdapterRepository;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->mMetaData:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v1, p0, Lcom/ironsource/mediationsdk/AdapterRepository;->adapters:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_4d

    .line 229
    :try_start_1e
    invoke-virtual {v2, p1, p2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_4d

    goto :goto_12

    :catch_22
    move-exception v3

    .line 231
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error while setting metadata of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/mediationsdk/AdapterRepository;->logInternal(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12

    .line 235
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_23 .. :try_end_4f} :catchall_4d

    throw p1

    return-void
.end method
