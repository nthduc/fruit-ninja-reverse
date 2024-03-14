.class Lcom/facebook/login/LoginManager$LoginLoggerHolder;
.super Ljava/lang/Object;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/LoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoginLoggerHolder"
.end annotation


# static fields
.field private static logger:Lcom/facebook/login/LoginLogger;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 1

    .line 890
    invoke-static {p0}, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getLogger(Landroid/content/Context;)Lcom/facebook/login/LoginLogger;
    .registers 4

    const-class v0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;

    monitor-enter v0

    if-eqz p0, :cond_6

    goto :goto_a

    .line 894
    :cond_6
    :try_start_6
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_22

    :goto_a
    if-nez p0, :cond_f

    const/4 p0, 0x0

    .line 896
    monitor-exit v0

    return-object p0

    .line 898
    :cond_f
    :try_start_f
    sget-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    if-nez v1, :cond_1e

    .line 899
    new-instance v1, Lcom/facebook/login/LoginLogger;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/login/LoginLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;

    .line 901
    :cond_1e
    sget-object p0, Lcom/facebook/login/LoginManager$LoginLoggerHolder;->logger:Lcom/facebook/login/LoginLogger;
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_22

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    monitor-exit v0

    throw p0
.end method
