.class public Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;,
        Lcom/chartboost/sdk/Chartboost$CBMediation;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V
    .registers 3

    if-eqz p0, :cond_12

    .line 1
    instance-of v0, p1, Lcom/chartboost/sdk/Privacy/model/GDPR;

    if-nez v0, :cond_e

    instance-of v0, p1, Lcom/chartboost/sdk/Privacy/model/CCPA;

    if-nez v0, :cond_e

    instance-of v0, p1, Lcom/chartboost/sdk/Privacy/model/Custom;

    if-eqz v0, :cond_12

    .line 4
    :cond_e
    invoke-static {p0, p1}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    goto :goto_19

    :cond_12
    const-string p0, "Chartboost"

    const-string p1, "Attempt to addDataUseConsent. Context and DataUseConsent cannot be null."

    .line 6
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .registers 10

    const-string v0, "Chartboost.cacheInterstitial"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Chartboost"

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1e

    const-string v0, "Interstitial not supported for this Android version"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_1d
    return-void

    .line 11
    :cond_1e
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 12
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_9a

    .line 14
    :cond_2c
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v2

    if-nez v2, :cond_33

    return-void

    .line 17
    :cond_33
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "cacheInterstitial location cannot be empty"

    .line 18
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 27
    :cond_58
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->g()Lcom/chartboost/sdk/Model/h;

    move-result-object v1

    .line 29
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v2, :cond_64

    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->y:Z

    if-nez v2, :cond_6c

    :cond_64
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v2, :cond_81

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->g:Z

    if-eqz v1, :cond_81

    .line 31
    :cond_6c
    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 32
    iget-object p0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9a

    .line 34
    :cond_81
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->h()Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    .line 35
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->d()Lcom/chartboost/sdk/impl/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 36
    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static cacheInterstitial(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "Chartboost.cacheHeliumInterstitial"

    .line 37
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_26

    .line 4
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    .line 7
    :cond_14
    new-instance v1, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    .line 8
    iput-object p0, v1, Lcom/chartboost/sdk/i$b;->b:Ljava/lang/String;

    .line 9
    iget-object p0, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    sget-wide v2, Lcom/chartboost/sdk/Libraries/b;->b:J

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    :goto_26
    return-void
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .registers 10

    const-string v0, "Chartboost.cacheRewardedVideo"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Chartboost"

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1e

    const-string v0, "Rewarded video not supported for this Android version"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_1d
    return-void

    .line 11
    :cond_1e
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 12
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_9a

    .line 14
    :cond_2c
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v2

    if-nez v2, :cond_33

    return-void

    .line 16
    :cond_33
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "cacheRewardedVideo location cannot be empty"

    .line 17
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 26
    :cond_58
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->g()Lcom/chartboost/sdk/Model/h;

    move-result-object v1

    .line 27
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v2, :cond_64

    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->B:Z

    if-nez v2, :cond_6c

    :cond_64
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v2, :cond_81

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->j:Z

    if-eqz v1, :cond_81

    .line 29
    :cond_6c
    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 30
    iget-object p0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9a

    .line 32
    :cond_81
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->h()Landroid/os/Handler;

    move-result-object v1

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    .line 33
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->f()Lcom/chartboost/sdk/impl/a;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    .line 34
    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const-string v0, "Chartboost.cacheHeliumRewardedVideo"

    .line 35
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 36
    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/impl/z;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static clearDataUseConsent(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p0, p1}, Lcom/chartboost/sdk/i;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Chartboost"

    const-string p1, "Attempt to removeDataUseConsent. Context and privacyStandard cannot be null."

    .line 4
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static closeImpression()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static forwardTouchEventsAIR(Z)V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static getAutoCacheAds()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/chartboost/sdk/j;->o:Z

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 3
    :cond_9
    sget-object v0, Lcom/chartboost/sdk/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDataUseConsent(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 2
    invoke-static {p0, p1}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, "Chartboost"

    const-string p1, "Attempt to getDataUseConsent. Context and privacyStandard cannot be null."

    .line 4
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .registers 1

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    .line 2
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static getPIDataUseConsent()Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/impl/t0;->a:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "8.1.0"

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "Chartboost.hasInterstitial"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_1c

    .line 5
    :cond_13
    iget-object v0, v0, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    :goto_1c
    return v1
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "Chartboost.hasRewardedVideo"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_1c

    .line 5
    :cond_13
    iget-object v0, v0, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/g;->d(Ljava/lang/String;)Lcom/chartboost/sdk/Model/a;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    :goto_1c
    return v1
.end method

.method public static isAnyViewVisible()Z
    .registers 1

    const-string v0, "Chartboost.isAnyViewVisible"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 4
    iget-object v0, v0, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public static isWebViewEnabled()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 2
    iget-object v0, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public static onBackPressed()Z
    .registers 1

    const-string v0, "Chartboost.onBackPressed"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_d
    iget-object v0, v0, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->g()Z

    move-result v0

    return v0
.end method

.method public static setActivityAttrs(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1c
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2
    sget-boolean v0, Lcom/chartboost/sdk/j;->h:Z

    if-nez v0, :cond_1d

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_1c

    const-string p0, "Chartboost"

    const-string v0, "Attempting to show Status and Navigation bars on a fullscreen activity. Please change your Chartboost activity theme to: \"@android:style/Theme.Translucent\"` in your Manifest file"

    .line 4
    invoke-static {p0, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void

    :cond_1d
    const/16 v0, 0x1706

    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2f

    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x1

    .line 18
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 22
    :cond_2f
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static setAutoCacheAds(Z)V
    .registers 4

    const-string v0, "Chartboost.setAutoCacheAds"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 4
    new-instance v1, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    .line 5
    iput-boolean p0, v1, Lcom/chartboost/sdk/i$b;->c:Z

    .line 6
    invoke-static {v1}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method public static setChartboostWrapperVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Chartboost.setChartboostWrapperVersion"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Chartboost.setCustomId"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->f:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .registers 3

    const-string v0, "Chartboost.setDelegate"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->h:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Chartboost.setFramework"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->c:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 4
    iput-object p1, v0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setFrameworkVersion(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Chartboost.setFrameworkVersion"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chartboost.setLoggingLevel"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 3
    iput-object p0, v0, Lcom/chartboost/sdk/g;->g:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 4
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Chartboost.setMediation.deprecated"

    .line 1
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/chartboost/sdk/Chartboost;->setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setMediation(Lcom/chartboost/sdk/Chartboost$CBMediation;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Chartboost.setMediation"

    .line 3
    invoke-static {v0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost$CBMediation;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 6
    iput-object p1, v0, Lcom/chartboost/sdk/g;->d:Ljava/lang/String;

    .line 7
    new-instance v1, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/Networking/requests/models/MediationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/chartboost/sdk/g;->e:Lcom/chartboost/sdk/Networking/requests/models/MediationModel;

    .line 8
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setPIDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->UNKNOWN:Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;

    if-ne p1, v0, :cond_a

    const-string p1, "gdpr"

    .line 2
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->clearDataUseConsent(Landroid/content/Context;Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/DataUseConsent;

    goto :goto_1e

    .line 4
    :cond_a
    new-instance v0, Lcom/chartboost/sdk/Privacy/model/GDPR;

    invoke-static {p1}, Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;->a(Lcom/chartboost/sdk/Chartboost$CBPIDataUseConsent;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;->fromValue(Ljava/lang/String;)Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Privacy/model/GDPR;-><init>(Lcom/chartboost/sdk/Privacy/model/GDPR$GDPR_CONSENT;)V

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Chartboost;->addDataUseConsent(Landroid/content/Context;Lcom/chartboost/sdk/Privacy/model/DataUseConsent;)V

    :goto_1e
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .registers 1

    return-void
.end method

.method public static setShouldHideSystemUI(Ljava/lang/Boolean;)V
    .registers 2

    const-string v0, "Chartboost.setHideSystemUI"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput-boolean p0, Lcom/chartboost/sdk/j;->h:Z

    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .registers 4

    const-string v0, "Chartboost.setShouldPrefetchVideoContent"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_20

    .line 6
    :cond_12
    new-instance v1, Lcom/chartboost/sdk/i$b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/chartboost/sdk/i$b;-><init>(Lcom/chartboost/sdk/i;I)V

    .line 7
    iput-boolean p0, v1, Lcom/chartboost/sdk/i$b;->d:Z

    .line 8
    invoke-static {v1}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .registers 3

    const-string v0, "Chartboost.setShouldRequestInterstitialsInFirstSession"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Z)V

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 4
    iput-boolean p0, v0, Lcom/chartboost/sdk/g;->b:Z

    .line 5
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .registers 10

    const-string v0, "Chartboost.showInterstitial"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Chartboost"

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1e

    const-string v0, "Interstitial not supported for this Android version"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_1d
    return-void

    .line 11
    :cond_1e
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 12
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_9a

    .line 14
    :cond_2c
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v2

    if-nez v2, :cond_33

    return-void

    .line 17
    :cond_33
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "showInterstitial location cannot be empty"

    .line 18
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 27
    :cond_58
    iget-object v1, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    .line 28
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v2, :cond_68

    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->y:Z

    if-nez v2, :cond_70

    :cond_68
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v2, :cond_85

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->g:Z

    if-eqz v1, :cond_85

    .line 30
    :cond_70
    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->q:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 31
    iget-object p0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9a

    .line 33
    :cond_85
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9a
    :goto_9a
    return-void
.end method

.method private static showInterstitialAIR(Ljava/lang/String;Z)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_49

    .line 4
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 7
    :cond_14
    iget-object v0, p1, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    .line 8
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->y:Z

    if-nez v1, :cond_2c

    :cond_24
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v1, :cond_42

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->g:Z

    if-eqz v0, :cond_42

    .line 10
    :cond_2c
    iget-object v0, p1, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p1, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_49

    .line 12
    :cond_42
    sget-object p1, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {p1, p0, v0}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method private static showMoreAppsAIR(Ljava/lang/String;Z)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->cacheMoreApps(Ljava/lang/String;)V

    return-void
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .registers 10

    const-string v0, "Chartboost.showRewardedVideo"

    .line 1
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Chartboost"

    const/16 v2, 0x15

    if-ge v0, v2, :cond_1e

    const-string v0, "Rewarded video not supported for this Android version"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 6
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_1d
    return-void

    .line 11
    :cond_1e
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 12
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v2

    if-nez v2, :cond_2c

    goto/16 :goto_9a

    .line 14
    :cond_2c
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v2

    if-nez v2, :cond_33

    return-void

    .line 16
    :cond_33
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    const-string v2, "showRewardedVideo location cannot be empty"

    .line 17
    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 25
    :cond_58
    iget-object v1, v0, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/Model/h;

    .line 26
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v2, :cond_68

    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->B:Z

    if-nez v2, :cond_70

    :cond_68
    iget-boolean v2, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v2, :cond_85

    iget-boolean v1, v1, Lcom/chartboost/sdk/Model/h;->j:Z

    if-eqz v1, :cond_85

    .line 28
    :cond_70
    new-instance v1, Lcom/chartboost/sdk/impl/g$b;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->u:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/g$b;-><init>(Lcom/chartboost/sdk/impl/g;ILjava/lang/String;Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 29
    iget-object p0, v0, Lcom/chartboost/sdk/i;->m:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9a

    .line 31
    :cond_85
    iget-object v1, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v8, Lcom/chartboost/sdk/impl/a$a;

    iget-object v3, v0, Lcom/chartboost/sdk/i;->v:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v4, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9a
    :goto_9a
    return-void
.end method

.method private static showRewardedVideoAIR(Ljava/lang/String;Z)V
    .registers 10

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/c;->c()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4b

    .line 4
    :cond_d
    invoke-static {}, Lcom/chartboost/sdk/i;->o()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 6
    :cond_14
    iget-object v0, p1, Lcom/chartboost/sdk/i;->w:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/h;

    .line 7
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->w:Z

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->B:Z

    if-nez v1, :cond_2c

    :cond_24
    iget-boolean v1, v0, Lcom/chartboost/sdk/Model/h;->e:Z

    if-eqz v1, :cond_42

    iget-boolean v0, v0, Lcom/chartboost/sdk/Model/h;->j:Z

    if-eqz v0, :cond_42

    .line 9
    :cond_2c
    iget-object v0, p1, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    new-instance v7, Lcom/chartboost/sdk/impl/a$a;

    iget-object v2, p1, Lcom/chartboost/sdk/i;->r:Lcom/chartboost/sdk/impl/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const/4 v3, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lcom/chartboost/sdk/impl/a$a;-><init>(Lcom/chartboost/sdk/impl/a;ILjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;Lcom/chartboost/sdk/Events/ChartboostError;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4b

    .line 11
    :cond_42
    sget-object p1, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz p1, :cond_4b

    .line 12
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {p1, p0, v0}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_a

    const-string p0, "Chartboost"

    const-string p1, "Can\'t start SDK with null activity"

    .line 1
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startWithAppId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "\u200b!SDK-VERSION-STRING!:\u200bcom.chartboost.sdk:android-sdk:8.1.0"

    .line 6
    sput-object v0, Lcom/chartboost/sdk/j;->a:Ljava/lang/String;

    const-string v0, "Chartboost.startWithAppId"

    .line 7
    invoke-static {v0, p0}, Lcom/chartboost/sdk/impl/f1;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    new-instance v0, Lcom/chartboost/sdk/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/g;-><init>(I)V

    .line 9
    iput-object p0, v0, Lcom/chartboost/sdk/g;->i:Landroid/content/Context;

    .line 10
    iput-object p1, v0, Lcom/chartboost/sdk/g;->j:Ljava/lang/String;

    .line 11
    iput-object p2, v0, Lcom/chartboost/sdk/g;->k:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    return-void
.end method
