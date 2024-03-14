.class Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "HSOnAndAboveNConnectivityManager.java"

# interfaces
.implements Lcom/helpshift/network/connectivity/HSAndroidConnectivityManager;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_AboveNConnMan"


# instance fields
.field private context:Landroid/content/Context;

.field private networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->context:Landroid/content/Context;

    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 4

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "Helpshift_AboveNConnMan"

    const-string v2, "Exception while getting connectivity manager"

    .line 146
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 4

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_14

    :catch_b
    move-exception v0

    const-string v1, "Helpshift_AboveNConnMan"

    const-string v2, "Exception while getting telephony manager"

    .line 157
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

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 73
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    .line 74
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 76
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 78
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    goto :goto_13

    .line 81
    :cond_11
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    :cond_13
    :goto_13
    return-object v0
.end method

.method public getConnectivityType()Lcom/helpshift/network/connectivity/HSConnectivityType;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_9

    .line 93
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    .line 97
    :cond_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    if-nez v1, :cond_12

    .line 99
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    .line 103
    :cond_12
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 105
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    .line 108
    :cond_1b
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityType;->UNKNOWN:Lcom/helpshift/network/connectivity/HSConnectivityType;

    const/4 v2, 0x1

    .line 110
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 111
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->WIFI:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    :cond_27
    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 114
    sget-object v0, Lcom/helpshift/network/connectivity/HSConnectivityType;->MOBILE_DATA:Lcom/helpshift/network/connectivity/HSConnectivityType;

    return-object v0

    :cond_31
    return-object v1
.end method

.method public onAvailable(Landroid/net/Network;)V
    .registers 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    if-eqz p1, :cond_7

    .line 122
    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkAvailable()V

    :cond_7
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 128
    iget-object p1, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    if-eqz p1, :cond_7

    .line 129
    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    :cond_7
    return-void
.end method

.method public onUnavailable()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    if-eqz v0, :cond_7

    .line 136
    invoke-interface {v0}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    :cond_7
    return-void
.end method

.method public startListeningConnectivityChange(Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;)V
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    .line 33
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 36
    :try_start_8
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "Helpshift_AboveNConnMan"

    const-string v2, "Exception while registering network callback"

    .line 39
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :cond_14
    :goto_14
    invoke-virtual {p0}, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->getConnectivityStatus()Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/helpshift/network/connectivity/HSConnectivityStatus;->NOT_CONNECTED:Lcom/helpshift/network/connectivity/HSConnectivityStatus;

    if-ne v0, v1, :cond_1f

    .line 50
    invoke-interface {p1}, Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;->onNetworkUnavailable()V

    :cond_1f
    return-void
.end method

.method public stopListeningConnectivityChange()V
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 60
    :try_start_6
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "Helpshift_AboveNConnMan"

    const-string v2, "Exception while unregistering network callback"

    .line 63
    invoke-static {v1, v2, v0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/helpshift/network/connectivity/HSOnAndAboveNConnectivityManager;->networkListener:Lcom/helpshift/network/connectivity/HSNetworkConnectivityCallback;

    return-void
.end method
