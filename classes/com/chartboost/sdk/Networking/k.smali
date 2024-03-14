.class public Lcom/chartboost/sdk/Networking/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x2

    return p1

    :cond_5
    if-nez p1, :cond_12

    packed-switch p2, :pswitch_data_14

    const/4 p1, 0x3

    return p1

    :pswitch_c
    const/4 p1, 0x6

    return p1

    :pswitch_e
    const/4 p1, 0x5

    return p1

    :pswitch_10
    const/4 p1, 0x4

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    if-eqz p1, :cond_28

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Networking/k;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 4
    :try_start_8
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot retrieve active network info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chartboost"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Networking/k;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 4

    if-eqz p1, :cond_26

    :try_start_2
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_b

    goto :goto_27

    :catch_b
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot retrieve connectivity manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Chartboost"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return-object p1
.end method

.method public d(Landroid/content/Context;)I
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Networking/k;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/chartboost/sdk/Networking/k;->a(II)I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/content/Context;)Z
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Networking/k;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method
