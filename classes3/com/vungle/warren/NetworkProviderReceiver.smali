.class public Lcom/vungle/warren/NetworkProviderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkProviderReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkProviderReceiver"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static enableBroadcastReceiver(Landroid/content/Context;Z)V
    .registers 5

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 25
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/vungle/warren/NetworkProviderReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    invoke-static {p0}, Lcom/vungle/warren/NetworkProviderReceiver;->hasReceiver(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x2

    .line 27
    :goto_17
    invoke-virtual {v0, v1, p1, p0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1a
    return-void
.end method

.method public static hasReceiver(Landroid/content/Context;)Z
    .registers 4

    .line 40
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/vungle/warren/NetworkProviderReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x280

    const/4 v2, 0x0

    .line 43
    :try_start_e
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_12} :catch_15

    if-eqz p0, :cond_15

    const/4 v2, 0x1

    :catch_15
    :cond_15
    return v2
.end method

.method public static isEnabledBroadcastReceiver(Landroid/content/Context;)Z
    .registers 4

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/vungle/warren/NetworkProviderReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    invoke-static {p0}, Lcom/vungle/warren/NetworkProviderReceiver;->hasReceiver(Landroid/content/Context;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-ne p0, v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 19
    invoke-static {p1}, Lcom/vungle/warren/utility/NetworkProvider;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/utility/NetworkProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vungle/warren/utility/NetworkProvider;->onNetworkChanged()V

    :cond_15
    return-void
.end method
