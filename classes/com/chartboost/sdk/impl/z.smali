.class public Lcom/chartboost/sdk/impl/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/chartboost/sdk/i;Ljava/lang/String;)Lcom/chartboost/sdk/impl/g;
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    if-nez v0, :cond_9

    .line 67
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->d(Lcom/chartboost/sdk/i;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_9
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Banner/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/chartboost/sdk/i;ILjava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    goto :goto_16

    .line 55
    :cond_9
    iget-object p0, p0, Lcom/chartboost/sdk/i;->h:Lcom/chartboost/sdk/b;

    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    goto :goto_16

    .line 63
    :cond_f
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->cacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_16

    .line 64
    :cond_13
    invoke-static {p2}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    :goto_16
    return-void
.end method

.method private static a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/impl/y;)V
    .registers 6

    .line 42
    new-instance v0, Lcom/chartboost/sdk/impl/-$$Lambda$z$hItoVYp9wzezqHsVUEMPsX0hz0s;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/chartboost/sdk/impl/-$$Lambda$z$hItoVYp9wzezqHsVUEMPsX0hz0s;-><init>(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;)V

    invoke-static {p3, p4, v0}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/impl/y;Lcom/chartboost/sdk/impl/j;)V

    return-void
.end method

.method static a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;)V
    .registers 5

    .line 46
    invoke-static {p0, p1, p2}, Lcom/chartboost/sdk/impl/z;->b(Lcom/chartboost/sdk/i;ILjava/lang/String;)Lcom/chartboost/sdk/impl/g;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 48
    invoke-static {v0, p2, p3}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/impl/g;Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)V

    .line 49
    invoke-static {p0, p1, p2}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/i;ILjava/lang/String;)V

    goto :goto_10

    .line 51
    :cond_d
    invoke-static {p0, p2, p1}, Lcom/chartboost/sdk/impl/a0;->b(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V

    :goto_10
    return-void
.end method

.method private static synthetic a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;ZII)V
    .registers 7

    if-eqz p4, :cond_6

    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;)V

    goto :goto_9

    .line 45
    :cond_6
    invoke-static {p0, p2, p1}, Lcom/chartboost/sdk/impl/a0;->a(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V

    :goto_9
    return-void
.end method

.method private static a(Lcom/chartboost/sdk/impl/g;Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)V
    .registers 4

    .line 71
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    if-nez v0, :cond_9

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/impl/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/y;)Z

    :cond_9
    return-void
.end method

.method private static a(Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/impl/y;Lcom/chartboost/sdk/impl/j;)V
    .registers 5

    .line 52
    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/y;->a()Lcom/chartboost/sdk/impl/e0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/e0;->b()Ljava/util/HashMap;

    move-result-object p1

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/chartboost/sdk/impl/n;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/j;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "OpenRTBCache"

    const/16 v2, 0x15

    if-ge v0, v2, :cond_17

    const-string p1, "OpenRTBCache not supported for this Android version"

    .line 2
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz p1, :cond_16

    .line 5
    sget-object p2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {p1, p0, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_16
    return-void

    .line 10
    :cond_17
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-nez v0, :cond_23

    const-string p0, "OpenRTBCache cache: SDK is null"

    .line 12
    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_23
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/a0;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 18
    invoke-static {v0, p0, p2}, Lcom/chartboost/sdk/impl/a0;->b(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_2d
    iget-object v1, v0, Lcom/chartboost/sdk/i;->j:Lcom/chartboost/sdk/impl/o;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/n;

    if-nez v1, :cond_37

    .line 25
    invoke-static {v0, p0, p2}, Lcom/chartboost/sdk/impl/a0;->b(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V

    return-void

    .line 32
    :cond_37
    :try_start_37
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/chartboost/sdk/impl/y;

    invoke-direct {p1, p2, v2}, Lcom/chartboost/sdk/impl/y;-><init>(ILorg/json/JSONObject;)V
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_41} :catch_48

    const/4 v2, 0x0

    .line 39
    sput-boolean v2, Lcom/chartboost/sdk/j;->o:Z

    .line 40
    invoke-static {v0, p2, p0, v1, p1}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/n;Lcom/chartboost/sdk/impl/y;)V

    return-void

    .line 41
    :catch_48
    invoke-static {v0, p0, p2}, Lcom/chartboost/sdk/impl/a0;->b(Lcom/chartboost/sdk/i;Ljava/lang/String;I)V

    return-void
.end method

.method private static b(Lcom/chartboost/sdk/i;ILjava/lang/String;)Lcom/chartboost/sdk/impl/g;
    .registers 4

    if-eqz p1, :cond_14

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_18

    .line 1
    :cond_a
    invoke-static {p0, p2}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/i;Ljava/lang/String;)Lcom/chartboost/sdk/impl/g;

    move-result-object p0

    goto :goto_18

    .line 9
    :cond_f
    invoke-virtual {p0}, Lcom/chartboost/sdk/i;->e()Lcom/chartboost/sdk/impl/g;

    move-result-object p0

    goto :goto_18

    .line 10
    :cond_14
    invoke-virtual {p0}, Lcom/chartboost/sdk/i;->c()Lcom/chartboost/sdk/impl/g;

    move-result-object p0

    :goto_18
    return-object p0
.end method

.method public static synthetic lambda$hItoVYp9wzezqHsVUEMPsX0hz0s(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;ZII)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/chartboost/sdk/impl/z;->a(Lcom/chartboost/sdk/i;ILjava/lang/String;Lcom/chartboost/sdk/impl/y;ZII)V

    return-void
.end method
