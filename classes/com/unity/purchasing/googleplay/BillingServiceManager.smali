.class public Lcom/unity/purchasing/googleplay/BillingServiceManager;
.super Ljava/lang/Object;
.source "BillingServiceManager.java"

# interfaces
.implements Lcom/unity/purchasing/googleplay/IBillingServiceManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "UnityIAP"

.field private static logInfoDebugEnabled:Z = false


# instance fields
.field private final callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/unity/purchasing/googleplay/BillingServiceProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private googlePlayBillingServiceIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private volatile mService:Lcom/android/vending/billing/IInAppBillingService;

.field private volatile mServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->executor:Ljava/util/concurrent/ExecutorService;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z

    .line 39
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->context:Landroid/content/Context;

    if-nez p1, :cond_1c

    const-string v0, "Unable to create BillingService Instance, invalid context"

    .line 42
    invoke-direct {p0, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logError(Ljava/lang/String;)V

    .line 45
    :cond_1c
    new-instance v0, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;

    invoke-direct {v0, p0, p1}, Lcom/unity/purchasing/googleplay/BillingServiceManager$1;-><init>(Lcom/unity/purchasing/googleplay/BillingServiceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/unity/purchasing/googleplay/BillingServiceManager;Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logDebug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z

    return p0
.end method

.method static synthetic access$102(Lcom/unity/purchasing/googleplay/BillingServiceManager;Z)Z
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Landroid/content/ServiceConnection;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p0
.end method

.method static synthetic access$302(Lcom/unity/purchasing/googleplay/BillingServiceManager;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/unity/purchasing/googleplay/BillingServiceManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->executor:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$600(Lcom/unity/purchasing/googleplay/BillingServiceManager;)V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->tryPumpCallbacks()V

    return-void
.end method

.method private getGooglePlayServiceIntent()Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/GooglePlayBillingUnAvailableException;
        }
    .end annotation

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.example.iaphack"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 105
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    return-object v0

    .line 109
    :cond_21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to find a single Google Play billing service but found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_30

    const-string v1, "0"

    goto :goto_38

    :cond_30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-direct {p0, v0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logError(Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/unity/purchasing/googleplay/GooglePlayBillingUnAvailableException;

    invoke-direct {v1, v0}, Lcom/unity/purchasing/googleplay/GooglePlayBillingUnAvailableException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 3

    .line 181
    sget-boolean v0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logInfoDebugEnabled:Z

    if-eqz v0, :cond_9

    const-string v0, "UnityIAP"

    .line 182
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private logError(Ljava/lang/String;)V
    .registers 3

    const-string v0, "UnityIAP"

    .line 177
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryPumpCallbacks()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;

    invoke-direct {v1, p0}, Lcom/unity/purchasing/googleplay/BillingServiceManager$2;-><init>(Lcom/unity/purchasing/googleplay/BillingServiceManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public billingAvailable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method bindToGooglePlayService()V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->googlePlayBillingServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public dispose()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->context:Landroid/content/Context;

    if-eqz v0, :cond_10

    iget-boolean v1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z

    if-eqz v1, :cond_10

    .line 135
    iget-object v1, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->mIsBound:Z

    :cond_10
    return-void
.end method

.method public initialise()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity/purchasing/googleplay/GooglePlayBillingUnAvailableException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->googlePlayBillingServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_a

    .line 95
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->getGooglePlayServiceIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->googlePlayBillingServiceIntent:Landroid/content/Intent;

    :cond_a
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2

    if-nez p1, :cond_6

    const/4 p1, 0x1

    .line 147
    sput-boolean p1, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logInfoDebugEnabled:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    .line 151
    sput-boolean p1, Lcom/unity/purchasing/googleplay/BillingServiceManager;->logInfoDebugEnabled:Z

    :goto_9
    return-void
.end method

.method public workWith(Lcom/unity/purchasing/googleplay/BillingServiceProcessor;)V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/unity/purchasing/googleplay/BillingServiceManager;->callbacks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-direct {p0}, Lcom/unity/purchasing/googleplay/BillingServiceManager;->tryPumpCallbacks()V

    return-void
.end method
