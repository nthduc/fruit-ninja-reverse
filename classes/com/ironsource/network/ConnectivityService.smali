.class public Lcom/ironsource/network/ConnectivityService;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# static fields
.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3g"

.field public static final NETWORK_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final NETWORK_TYPE_CELLULAR:Ljava/lang/String; = "cellular"

.field public static final NETWORK_TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final NETWORK_TYPE_LOWPAN:Ljava/lang/String; = "lowpan"

.field public static final NETWORK_TYPE_NONE:Ljava/lang/String; = "none"

.field public static final NETWORK_TYPE_VPN:Ljava/lang/String; = "vpn"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final NETWORK_TYPE_WIFI_AWARE:Ljava/lang/String; = "wifiAware"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectivity"

    .line 37
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_37

    .line 40
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_37

    .line 42
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 43
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-nez p0, :cond_2b

    const-string p0, "3g"

    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_2b
    const/4 v2, 0x1

    if-ne p0, v2, :cond_34

    const-string p0, "wifi"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 52
    :cond_34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_37
    :goto_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkMCC(Landroid/content/Context;)I
    .registers 1

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->mcc:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getNetworkMNC(Landroid/content/Context;)I
    .registers 1

    .line 147
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->mnc:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    move-exception p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 115
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method public static getPhoneType(Landroid/content/Context;)I
    .registers 2

    :try_start_0
    const-string v0, "phone"

    .line 182
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 183
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    :goto_12
    return p0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "phone"

    .line 162
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_13

    .line 164
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    const-string p0, ""

    return-object p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 101
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 102
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static isConnectedMobile(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 87
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public static isConnectedWifi(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 72
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method
