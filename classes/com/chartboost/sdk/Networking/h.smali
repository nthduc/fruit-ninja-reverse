.class public Lcom/chartboost/sdk/Networking/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/chartboost/sdk/Networking/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/chartboost/sdk/Networking/k;

    invoke-direct {v0}, Lcom/chartboost/sdk/Networking/k;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    if-eqz v0, :cond_b

    .line 2
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Networking/k;->b(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Networking/k;->c(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const-string v1, "CBReachability"

    if-nez v0, :cond_13

    const-string v0, "NETWORK TYPE: unknown"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 7
    :cond_13
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    sget-object v2, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Networking/k;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_30

    const-string v0, "NETWORK TYPE: TYPE_WIFI"

    .line 11
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_30
    const-string v0, "NETWORK TYPE: TYPE_MOBILE"

    .line 14
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0

    :cond_37
    const-string v0, "NETWORK TYPE: NO Network"

    .line 18
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    if-eqz v0, :cond_b

    .line 2
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Networking/k;->d(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/h;->a:Lcom/chartboost/sdk/Networking/k;

    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Networking/k;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
