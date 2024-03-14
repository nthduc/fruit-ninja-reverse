.class public Lcom/vungle/warren/utility/NetworkProvider;
.super Ljava/lang/Object;
.source "NetworkProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/vungle/warren/utility/NetworkProvider; = null

.field static final NETWORK_CHECK_DELAY:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "NetworkProvider"

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field private final cm:Landroid/net/ConnectivityManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;

.field private currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

.field private enabled:Z

.field private handler:Landroid/os/Handler;

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;",
            ">;"
        }
    .end annotation
.end field

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private typeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/vungle/warren/utility/NetworkProvider$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/NetworkProvider$3;-><init>(Lcom/vungle/warren/utility/NetworkProvider;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->ctx:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->ctx:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;

    .line 44
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_4b

    .line 46
    invoke-static {p1}, Lcom/vungle/warren/NetworkProviderReceiver;->isEnabledBroadcastReceiver(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->enabled:Z

    goto :goto_4f

    :cond_4b
    const/4 v0, 0x0

    .line 49
    invoke-static {p1, v0}, Lcom/vungle/warren/NetworkProviderReceiver;->enableBroadcastReceiver(Landroid/content/Context;Z)V

    :goto_4f
    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/util/Set;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/utility/NetworkProvider;)Ljava/lang/Runnable;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/utility/NetworkProvider;)Landroid/os/Handler;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;
    .registers 3

    const-class v0, Lcom/vungle/warren/utility/NetworkProvider;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lcom/vungle/warren/utility/NetworkProvider;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Lcom/vungle/warren/utility/NetworkProvider;

    invoke-direct {v1, p0}, Lcom/vungle/warren/utility/NetworkProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lcom/vungle/warren/utility/NetworkProvider;

    .line 58
    :cond_e
    sget-object p0, Lcom/vungle/warren/utility/NetworkProvider;->INSTANCE:Lcom/vungle/warren/utility/NetworkProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lcom/vungle/warren/utility/NetworkProvider$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/utility/NetworkProvider$1;-><init>(Lcom/vungle/warren/utility/NetworkProvider;)V

    iput-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_c
    return-object v0
.end method

.method private postToListeners(I)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/vungle/warren/utility/NetworkProvider$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/warren/utility/NetworkProvider$2;-><init>(Lcom/vungle/warren/utility/NetworkProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private declared-synchronized setEnableNetworkListener(Z)V
    .registers 5

    monitor-enter p0

    .line 62
    :try_start_1
    iget-boolean v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->enabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_65

    if-ne v0, p1, :cond_7

    .line 63
    monitor-exit p0

    return-void

    .line 64
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->enabled:Z

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_31

    .line 67
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/NetworkProviderReceiver;->hasReceiver(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 68
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->ctx:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/vungle/warren/NetworkProviderReceiver;->enableBroadcastReceiver(Landroid/content/Context;Z)V

    goto :goto_63

    :cond_1d
    if-eqz p1, :cond_29

    .line 71
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_63

    .line 73
    :cond_29
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->typeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_63

    .line 76
    :cond_31
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_65

    if-eqz v0, :cond_63

    if-eqz p1, :cond_4f

    .line 79
    :try_start_37
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v0, 0xc

    .line 80
    invoke-virtual {p1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 81
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    invoke-direct {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_63

    .line 83
    :cond_4f
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_58} :catch_59
    .catchall {:try_start_37 .. :try_end_58} :catchall_65

    goto :goto_63

    :catch_59
    move-exception p1

    .line 86
    :try_start_5a
    sget-object v0, Lcom/vungle/warren/utility/NetworkProvider;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_65

    .line 89
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 153
    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    return-void
.end method

.method public getCurrentNetworkType()I
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;

    const/4 v1, -0x1

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->ctx:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v2}, Landroidx/core/content/PermissionChecker;->checkCallingOrSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_57

    .line 134
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 136
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 137
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 140
    :cond_22
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-eq v1, v0, :cond_4b

    .line 143
    sget-object v2, Lcom/vungle/warren/utility/NetworkProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "on network changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, v1}, Lcom/vungle/warren/utility/NetworkProvider;->postToListeners(I)V

    .line 147
    :cond_4b
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    return v1

    .line 130
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->currentNetwork:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v1
.end method

.method public onNetworkChanged()V
    .registers 1

    .line 123
    invoke-virtual {p0}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    return-void
.end method

.method public removeListener(Lcom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/vungle/warren/utility/NetworkProvider;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/vungle/warren/utility/NetworkProvider;->setEnableNetworkListener(Z)V

    return-void
.end method
