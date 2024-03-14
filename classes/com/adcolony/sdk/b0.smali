.class Lcom/adcolony/sdk/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/adcolony/sdk/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "wifi"

    return-object v0

    .line 4
    :cond_9
    invoke-virtual {p0}, Lcom/adcolony/sdk/b0;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "cell"

    return-object v0

    :cond_12
    const-string v0, "none"

    return-object v0
.end method

.method b()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 7
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    .line 8
    :cond_18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_1f

    return v1

    .line 12
    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_23} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_2a

    if-eqz v0, :cond_28

    const/4 v2, 0x2

    if-lt v0, v2, :cond_29

    :cond_28
    const/4 v1, 0x1

    :cond_29
    return v1

    :catch_2a
    move-exception v0

    .line 23
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "Exception occurred when retrieving activeNetworkInfo in "

    .line 24
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    const-string v3, "ADCNetwork.using_mobile(): "

    .line 25
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 26
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 27
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    :catch_4a
    move-exception v0

    .line 28
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "SecurityException - please ensure you added the "

    .line 29
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    const-string v3, "ACCESS_NETWORK_STATE permission: "

    .line 30
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 31
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 32
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method c()Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 7
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_18

    const/4 v0, 0x0

    goto :goto_1c

    .line 8
    :cond_18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_1c
    if-nez v0, :cond_1f

    return v1

    .line 12
    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_23} :catch_48
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_23} :catch_28

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    const/4 v1, 0x1

    :cond_27
    return v1

    :catch_28
    move-exception v0

    .line 21
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "Exception occurred when retrieving activeNetworkInfo in "

    .line 22
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    const-string v3, "ADCNetwork.using_wifi(): "

    .line 23
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 25
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    :catch_48
    move-exception v0

    .line 26
    new-instance v2, Lcom/adcolony/sdk/u$a;

    invoke-direct {v2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v3, "SecurityException - please ensure you added the "

    .line 27
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    const-string v3, "ACCESS_NETWORK_STATE permission: "

    .line 28
    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 30
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method
