.class final Lcom/helpshift/CoreInternal$3;
.super Ljava/lang/Object;
.source "CoreInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/CoreInternal;->install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$config:Ljava/util/Map;

.field final synthetic val$domain:Ljava/lang/String;

.field final synthetic val$trimApiKey:Ljava/lang/String;

.field final synthetic val$trimAppId:Ljava/lang/String;

.field final synthetic val$trimDomain:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 91
    iput-object p1, p0, Lcom/helpshift/CoreInternal$3;->val$application:Landroid/app/Application;

    iput-object p2, p0, Lcom/helpshift/CoreInternal$3;->val$config:Ljava/util/Map;

    iput-object p3, p0, Lcom/helpshift/CoreInternal$3;->val$domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/helpshift/CoreInternal$3;->val$trimApiKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/helpshift/CoreInternal$3;->val$trimDomain:Ljava/lang/String;

    iput-object p6, p0, Lcom/helpshift/CoreInternal$3;->val$trimAppId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 96
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->installCallSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 100
    :cond_9
    iget-object v0, p0, Lcom/helpshift/CoreInternal$3;->val$application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/CoreInternal$3;->val$config:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/helpshift/CoreInternal;->initLogging(Landroid/content/Context;Ljava/util/Map;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Helpshift install :\n Flavor : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/helpshift/CoreInternal;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/CoreInternal$3;->val$domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Config : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/CoreInternal$3;->val$config:Ljava/util/Map;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n Package Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/helpshift/CoreInternal$3;->val$application:Landroid/app/Application;

    .line 105
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n SDK version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "7.9.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n OS version : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n Device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Helpshift_CoreInternal"

    .line 101
    invoke-static {v1, v0}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v2, Lcom/helpshift/CoreInternal;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    iget-object v3, p0, Lcom/helpshift/CoreInternal$3;->val$application:Landroid/app/Application;

    iget-object v4, p0, Lcom/helpshift/CoreInternal$3;->val$trimApiKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/helpshift/CoreInternal$3;->val$trimDomain:Ljava/lang/String;

    iget-object v6, p0, Lcom/helpshift/CoreInternal$3;->val$trimAppId:Ljava/lang/String;

    iget-object v7, p0, Lcom/helpshift/CoreInternal$3;->val$config:Ljava/util/Map;

    invoke-interface/range {v2 .. v7}, Lcom/helpshift/Core$ApiProvider;->_install(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 111
    sget-object v0, Lcom/helpshift/util/HelpshiftContext;->installCallSuccessful:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 115
    invoke-static {}, Lcom/helpshift/PluginEventBridge;->shouldCallFirstForegroundEvent()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 116
    invoke-static {}, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->getInstance()Lcom/helpshift/applifecycle/HSAppLifeCycleController;

    move-result-object v0

    iget-object v1, p0, Lcom/helpshift/CoreInternal$3;->val$application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/helpshift/applifecycle/HSAppLifeCycleController;->onAppForeground(Landroid/content/Context;)V

    :cond_a1
    return-void
.end method
