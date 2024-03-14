.class public Lcom/chartboost/sdk/impl/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Z


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/impl/a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/chartboost/sdk/impl/a;->f:Ljava/lang/String;

    .line 8
    iput-boolean p7, p0, Lcom/chartboost/sdk/impl/a;->g:Z

    .line 9
    iput-boolean p8, p0, Lcom/chartboost/sdk/impl/a;->h:Z

    return-void
.end method

.method public static a()Lcom/chartboost/sdk/impl/a;
    .registers 10

    .line 1
    new-instance v9, Lcom/chartboost/sdk/impl/a;

    const/4 v1, 0x2

    const-string v2, "inplay"

    const/4 v3, 0x0

    const-string v4, "/inplay/get"

    const-string v5, "no webview endpoint"

    const-string v6, "/inplay/show"

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v9
.end method

.method public static b()Lcom/chartboost/sdk/impl/a;
    .registers 10

    .line 1
    new-instance v9, Lcom/chartboost/sdk/impl/a;

    const/4 v1, 0x0

    const-string v2, "interstitial"

    const-string v3, "interstitial"

    const-string v4, "/interstitial/get"

    const-string v5, "webview/%s/interstitial/get"

    const-string v6, "/interstitial/show"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v9
.end method

.method public static c()Lcom/chartboost/sdk/impl/a;
    .registers 10

    .line 1
    new-instance v9, Lcom/chartboost/sdk/impl/a;

    const/4 v1, 0x1

    const-string v2, "rewarded"

    const-string v3, "rewarded-video"

    const-string v4, "/reward/get"

    const-string v5, "webview/%s/reward/get"

    const-string v6, "/reward/show"

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/chartboost/sdk/impl/a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v9
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    const-string p1, "web"

    goto :goto_10

    :cond_e
    const-string p1, "native"

    :goto_10
    aput-object p1, v0, v1

    const-string p1, "%s-%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    .line 3
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1a

    .line 4
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    goto :goto_1a

    .line 14
    :cond_f
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheInPlay(Ljava/lang/String;)V

    goto :goto_1a

    .line 15
    :cond_13
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheRewardedVideo(Ljava/lang/String;)V

    goto :goto_1a

    .line 16
    :cond_17
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCacheInterstitial(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .registers 6

    .line 17
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_1a

    .line 18
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_17

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    goto :goto_1a

    .line 28
    :cond_f
    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInPlay(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_1a

    .line 29
    :cond_13
    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_1a

    .line 30
    :cond_17
    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_13

    .line 3
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    goto :goto_13

    .line 9
    :cond_c
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didClickRewardedVideo(Ljava/lang/String;)V

    goto :goto_13

    .line 10
    :cond_10
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didClickInterstitial(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 5

    .line 2
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_13

    .line 3
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    goto :goto_13

    .line 9
    :cond_c
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCloseRewardedVideo(Ljava/lang/String;)V

    goto :goto_13

    .line 10
    :cond_10
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didCloseInterstitial(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_13

    .line 2
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    goto :goto_13

    .line 8
    :cond_c
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDismissRewardedVideo(Ljava/lang/String;)V

    goto :goto_13

    .line 9
    :cond_10
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDismissInterstitial(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_13

    .line 2
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    goto :goto_13

    .line 8
    :cond_c
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDisplayRewardedVideo(Ljava/lang/String;)V

    goto :goto_13

    .line 9
    :cond_10
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->didDisplayInterstitial(Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public f(Ljava/lang/String;)Z
    .registers 5

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 2
    iget v2, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v2, :cond_11

    if-eq v2, v1, :cond_c

    goto :goto_15

    .line 8
    :cond_c
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldDisplayRewardedVideo(Ljava/lang/String;)Z

    move-result v1

    goto :goto_15

    .line 9
    :cond_11
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result v1

    :cond_15
    :goto_15
    return v1
.end method

.method public g(Ljava/lang/String;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz v0, :cond_e

    .line 2
    iget v1, p0, Lcom/chartboost/sdk/impl/a;->a:I

    if-eqz v1, :cond_9

    goto :goto_e

    .line 4
    :cond_9
    invoke-interface {v0, p1}, Lcom/chartboost/sdk/a;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result p1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p1, 0x1

    :goto_f
    return p1
.end method
