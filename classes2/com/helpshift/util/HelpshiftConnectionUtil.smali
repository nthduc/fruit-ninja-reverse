.class public final Lcom/helpshift/util/HelpshiftConnectionUtil;
.super Ljava/lang/Object;
.source "HelpshiftConnectionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Helpshift_ConnectUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "Unknown"

    :try_start_2
    const-string v1, "connectivity"

    .line 33
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 36
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_16

    move-object v0, p0

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string v1, "Helpshift_ConnectUtil"

    const-string v2, "Exception while getting system connectivity service"

    .line 40
    invoke-static {v1, v2, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "connectivity"

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 16
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    const/4 v0, 0x1

    goto :goto_20

    :catch_18
    move-exception p0

    const-string v1, "Helpshift_ConnectUtil"

    const-string v2, "Exception while getting system connectivity service"

    .line 19
    invoke-static {v1, v2, p0}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return v0
.end method
