.class final Lcom/vungle/warren/Vungle$1;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->init(Ljava/lang/String;Landroid/content/Context;Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/VungleSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

.field final synthetic val$serviceLocator:Lcom/vungle/warren/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ServiceLocator;Lcom/vungle/warren/RuntimeValues;Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 248
    iput-object p1, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 251
    # getter for: Lcom/vungle/warren/Vungle;->isDepInit:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_165

    .line 252
    iget-object v0, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v1, Lcom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/CacheManager;

    .line 253
    iget-object v1, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->settings:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/VungleSettings;

    .line 254
    iget-object v2, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v2, v2, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/InitCallback;

    const/16 v3, 0x10

    if-eqz v1, :cond_45

    .line 256
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/CacheManager;->getBytesAvailable()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/vungle/warren/VungleSettings;->getMinimumSpaceForInit()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_45

    .line 257
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    # invokes: Lcom/vungle/warren/Vungle;->onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 258
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 262
    :cond_45
    # getter for: Lcom/vungle/warren/Vungle;->cacheListener:Lcom/vungle/warren/persistence/CacheManager$Listener;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$200()Lcom/vungle/warren/persistence/CacheManager$Listener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/vungle/warren/persistence/CacheManager;->addListener(Lcom/vungle/warren/persistence/CacheManager$Listener;)V

    .line 265
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$context:Landroid/content/Context;

    # setter for: Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;
    invoke-static {v0, v4}, Lcom/vungle/warren/Vungle;->access$302(Lcom/vungle/warren/Vungle;Landroid/content/Context;)Landroid/content/Context;

    .line 266
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    # setter for: Lcom/vungle/warren/Vungle;->appID:Ljava/lang/String;
    invoke-static {v0, v4}, Lcom/vungle/warren/Vungle;->access$402(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v4}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 271
    :try_start_64
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/Repository;->init()V
    :try_end_67
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_64 .. :try_end_67} :catch_157

    .line 278
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v4, v5}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/VungleApiClient;

    .line 279
    invoke-virtual {v4}, Lcom/vungle/warren/VungleApiClient;->platformIsNotSupported()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 280
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    # invokes: Lcom/vungle/warren/Vungle;->onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 281
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 284
    :cond_85
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vungle/warren/VungleApiClient;->init(Ljava/lang/String;)V

    if-eqz v1, :cond_93

    .line 288
    invoke-virtual {v1}, Lcom/vungle/warren/VungleSettings;->getAndroidIdOptOut()Z

    move-result v1

    invoke-virtual {v4, v1}, Lcom/vungle/warren/VungleApiClient;->setDefaultIdFallbackDisabled(Z)V

    .line 291
    :cond_93
    iget-object v1, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v4, Lcom/vungle/warren/tasks/JobRunner;

    invoke-virtual {v1, v4}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/tasks/JobRunner;

    .line 292
    iget-object v4, p0, Lcom/vungle/warren/Vungle$1;->val$serviceLocator:Lcom/vungle/warren/ServiceLocator;

    const-class v5, Lcom/vungle/warren/AdLoader;

    invoke-virtual {v4, v5}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vungle/warren/AdLoader;

    .line 293
    invoke-virtual {v4, v1}, Lcom/vungle/warren/AdLoader;->init(Lcom/vungle/warren/tasks/JobRunner;)V

    .line 296
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 297
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/Vungle$Consent;

    sget-object v4, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;
    invoke-static {v4}, Lcom/vungle/warren/Vungle;->access$600(Lcom/vungle/warren/Vungle;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/vungle/warren/Vungle;->saveGDPRConsent(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V
    invoke-static {v0, v1, v4}, Lcom/vungle/warren/Vungle;->access$700(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;Ljava/lang/String;)V

    goto :goto_102

    .line 300
    :cond_cc
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v4, "consentIsImportantToVungle"

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_ec

    .line 302
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 303
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # setter for: Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_102

    .line 305
    :cond_ec
    sget-object v4, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->consent:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v4}, Lcom/vungle/warren/Vungle;->access$500(Lcom/vungle/warren/Vungle;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    # invokes: Lcom/vungle/warren/Vungle;->getConsent(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$800(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 306
    sget-object v4, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # invokes: Lcom/vungle/warren/Vungle;->getConsentMessageVersion(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$900(Lcom/vungle/warren/model/Cookie;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/vungle/warren/Vungle;->consentVersion:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/vungle/warren/Vungle;->access$602(Lcom/vungle/warren/Vungle;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    :goto_102
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->ccpaStatus:Lcom/vungle/warren/Vungle$Consent;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v1

    if-eqz v1, :cond_114

    .line 312
    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->ccpaStatus:Lcom/vungle/warren/Vungle$Consent;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1000(Lcom/vungle/warren/Vungle;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v1

    # invokes: Lcom/vungle/warren/Vungle;->updateCCPAStatus(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V
    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$1100(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/Vungle$Consent;)V

    goto :goto_12b

    .line 315
    :cond_114
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v4, "ccpaIsImportantToVungle"

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    .line 316
    sget-object v4, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # invokes: Lcom/vungle/warren/Vungle;->getCCPAStatus(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1200(Lcom/vungle/warren/model/Cookie;)Lcom/vungle/warren/Vungle$Consent;

    move-result-object v1

    # setter for: Lcom/vungle/warren/Vungle;->ccpaStatus:Lcom/vungle/warren/Vungle$Consent;
    invoke-static {v4, v1}, Lcom/vungle/warren/Vungle;->access$1002(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/Vungle$Consent;)Lcom/vungle/warren/Vungle$Consent;

    .line 319
    :goto_12b
    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v4, "appId"

    invoke-virtual {v0, v4, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/model/Cookie;

    if-nez v1, :cond_140

    .line 321
    new-instance v1, Lcom/vungle/warren/model/Cookie;

    invoke-direct {v1, v4}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    .line 323
    :cond_140
    iget-object v5, p0, Lcom/vungle/warren/Vungle$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    :try_start_145
    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_148
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_165

    :catch_149
    if-eqz v2, :cond_153

    .line 328
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v0, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    # invokes: Lcom/vungle/warren/Vungle;->onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 330
    :cond_153
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 273
    :catch_157
    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    # invokes: Lcom/vungle/warren/Vungle;->onError(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V
    invoke-static {v2, v0}, Lcom/vungle/warren/Vungle;->access$100(Lcom/vungle/warren/InitCallback;Lcom/vungle/warren/error/VungleException;)V

    .line 274
    invoke-static {}, Lcom/vungle/warren/Vungle;->deInit()V

    return-void

    .line 335
    :cond_165
    :goto_165
    sget-object v0, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$1;->val$runtimeValues:Lcom/vungle/warren/RuntimeValues;

    iget-object v1, v1, Lcom/vungle/warren/RuntimeValues;->initCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/warren/InitCallback;

    # invokes: Lcom/vungle/warren/Vungle;->configure(Lcom/vungle/warren/InitCallback;)V
    invoke-static {v0, v1}, Lcom/vungle/warren/Vungle;->access$1300(Lcom/vungle/warren/Vungle;Lcom/vungle/warren/InitCallback;)V

    return-void
.end method
