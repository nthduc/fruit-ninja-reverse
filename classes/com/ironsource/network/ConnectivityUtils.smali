.class public Lcom/ironsource/network/ConnectivityUtils;
.super Ljava/lang/Object;
.source "ConnectivityUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetwork(Landroid/content/Context;)Landroid/net/Network;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-string v1, "connectivity"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 100
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1a

    if-nez p0, :cond_15

    goto :goto_1a

    .line 104
    :cond_15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    return-object v0
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_f

    .line 25
    invoke-static {p0}, Lcom/ironsource/network/ConnectivityUtils;->getActiveNetwork(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionType(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 28
    :cond_f
    invoke-static {p0}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionTypePreMOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionType(Landroid/net/Network;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "none"

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    const-string v1, "connectivity"

    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_45

    if-eqz v1, :cond_45

    .line 53
    :try_start_11
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3c

    .line 55
    invoke-virtual {v1, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_22

    .line 59
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionTypePreMOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p0, "wifi"

    :goto_2b
    move-object v0, p0

    goto :goto_45

    :cond_2d
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "3g"

    goto :goto_2b

    .line 69
    :cond_37
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionTypePreMOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2b

    .line 73
    :cond_3c
    invoke-static {p1}, Lcom/ironsource/network/ConnectivityUtils;->getConnectionTypePreMOSVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_45
    :goto_45
    return-object v0
.end method

.method private static getConnectionTypePreMOSVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 148
    invoke-static {p0}, Lcom/ironsource/network/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "none"

    :cond_c
    return-object p0
.end method

.method public static getNetworkData(Landroid/content/Context;Landroid/net/Network;)Lorg/json/JSONObject;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-nez p0, :cond_8

    .line 119
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 122
    :cond_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4e

    if-eqz p1, :cond_4e

    :try_start_15
    const-string v1, "connectivity"

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_4e

    .line 131
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_4e

    const-string v1, "networkCapabilities"

    .line 133
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "downloadSpeed"

    .line 134
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "uploadSpeed"

    .line 135
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "hasVPN"

    .line 136
    invoke-static {p0}, Lcom/ironsource/network/ConnectivityUtils;->hasVPN(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception p0

    .line 140
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4e
    :goto_4e
    return-object v0
.end method

.method private static getNetworkTransport(Landroid/content/Context;Landroid/net/Network;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x17

    if-lt v0, v2, :cond_68

    if-eqz p1, :cond_68

    if-nez p0, :cond_d

    goto :goto_68

    :cond_d
    :try_start_d
    const-string v0, "connectivity"

    .line 172
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_68

    .line 175
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1e

    return-object v1

    :cond_1e
    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_28

    const-string p0, "wifi"

    return-object p0

    :cond_28
    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_32

    const-string p0, "cellular"

    return-object p0

    :cond_32
    const/4 p1, 0x4

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p0, "vpn"

    return-object p0

    :cond_3c
    const/4 p1, 0x3

    .line 193
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_46

    const-string p0, "ethernet"

    return-object p0

    :cond_46
    const/4 p1, 0x5

    .line 197
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_50

    const-string p0, "wifiAware"

    return-object p0

    :cond_50
    const/4 p1, 0x6

    .line 201
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p0, "lowpan"

    return-object p0

    :cond_5a
    const/4 p1, 0x2

    .line 205
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_68

    const-string p0, "bluetooth"
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_63} :catch_64

    return-object p0

    :catch_64
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_68
    :goto_68
    return-object v1
.end method

.method public static hasVPN(Landroid/content/Context;)Z
    .registers 2

    .line 158
    invoke-static {p0}, Lcom/ironsource/network/ConnectivityUtils;->getActiveNetwork(Landroid/content/Context;)Landroid/net/Network;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ironsource/network/ConnectivityUtils;->getNetworkTransport(Landroid/content/Context;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "vpn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
