.class Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;
.super Landroid/content/BroadcastReceiver;
.source "HSBelowNConnectivityManager.java"

# interfaces
.implements Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_BelowNConnMan"


# instance fields
.field private context:Landroid/content/Context;

.field private networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 4

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "Helpshift_BelowNConnMan"

    const-string v2, "Exception while getting connectivity manager"

    .line 116
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "Helpshift_BelowNConnMan"

    const-string v2, "Exception while getting telephony manager"

    .line 127
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method


# virtual methods
.method public getConnectivityStatus()Lcom/helpshift/network/connectivity/HSConnectivityStatus;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    .line 71
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 73
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 74
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 75
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    goto :goto_19

    .line 78
    :cond_17
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    :cond_19
    :goto_19
    return-object v0
.end method

.method public getConnectivityType()Lcom/helpshift/network/connectivity/HSConnectivityType;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 90
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    .line 94
    :cond_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_12

    .line 96
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    .line 99
    :cond_12
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    .line 100
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e

    .line 102
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityType;->WIFI:Lcom/helpshift/network/connectivity/HSConnectivityType;

    goto :goto_22

    :cond_1e
    if-nez v0, :cond_22

    .line 105
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityType;->MOBILE_DATA:Lcom/helpshift/network/connectivity/HSConnectivityType;

    :cond_22
    :goto_22
    return-object v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_2b

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_2b

    .line 32
    :cond_9
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    if-eqz p1, :cond_2b

    .line 33
    invoke-virtual {p0}, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->getConnectivityStatus()Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    move-result-object p1

    .line 34
    sget-object p2, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager$1;->$SwitchMap$com$helpshift$network$connectivity$HSConnectivityStatus:[I

    invoke-virtual {p1}, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_26

    const/4 p2, 0x2

    if-eq p1, p2, :cond_20

    goto :goto_2b

    .line 39
    :cond_20
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    goto :goto_2b

    .line 36
    :cond_26
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkAvailable()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public startListeningConnectivityChange(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V
    .registers 4

    .line 47
    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    .line 49
    :try_start_2
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->context:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p1

    const-string v0, "Helpshift_BelowNConnMan"

    const-string v1, "Exception while registering network receiver"

    .line 53
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17
    return-void
.end method

.method public stopListeningConnectivityChange()V
    .registers 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSBelowNConnectivityManager;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "Helpshift_BelowNConnMan"

    const-string v2, "Exception while unregistering network receiver"

    .line 63
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method
