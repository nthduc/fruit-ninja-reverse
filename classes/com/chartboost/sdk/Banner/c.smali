.class public Lcom/chartboost/sdk/Banner/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/c;
.implements Lcom/chartboost/sdk/impl/r;
.implements Lcom/chartboost/sdk/impl/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Banner/c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/chartboost/sdk/Banner/BannerSize;

.field private c:Lcom/chartboost/sdk/ChartboostBannerListener;

.field private d:Lcom/chartboost/sdk/Banner/e;

.field private e:Lcom/chartboost/sdk/Banner/d;

.field private f:Lcom/chartboost/sdk/b;

.field private g:Lcom/chartboost/sdk/impl/q;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 20
    new-instance p1, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {p1}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    goto :goto_2a

    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 22
    new-instance p1, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {p1}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->BANNER_DISABLED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private b(I)V
    .registers 6

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_2a

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 6
    new-instance p1, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {p1}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    goto :goto_2a

    :cond_17
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2a

    .line 8
    new-instance p1, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {p1}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, p1, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 3
    :cond_c
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->p()Z

    move-result v0

    const-string v1, "BannerPresenter"

    if-eqz v0, :cond_21

    const-string p1, "Chartboost SDK is not initialised"

    .line 3
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_20

    .line 5
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {p1, v0, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    :cond_20
    return-void

    .line 10
    :cond_21
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    if-nez v0, :cond_3e

    const-string p1, "Banner View is not attached, re-create banner."

    .line 11
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_3d

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {p1, v0, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    :cond_3d
    return-void

    .line 18
    :cond_3e
    invoke-interface {v0}, Lcom/chartboost/sdk/Banner/e;->isBelowLollipop()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string p1, "Banner is not supported for this Android version"

    .line 19
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_5c

    .line 21
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v2, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->NO_AD_FOUND:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {p1, v0, v1}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    :cond_5c
    return-void

    .line 26
    :cond_5d
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->n()V

    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Banner/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 29
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Banner/c;->b(Ljava/lang/String;)V

    goto :goto_70

    :cond_6b
    const-string p1, "Banner is currently processing action cache"

    .line 31
    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    return-void
.end method

.method private c(I)Z
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    if-eqz v0, :cond_10

    .line 33
    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_c
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Banner/c;->a(I)V

    goto :goto_13

    .line 39
    :cond_10
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Banner/c;->b(I)V

    :goto_13
    const/4 p1, 0x0

    return p1
.end method

.method private l()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->o()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->e:Lcom/chartboost/sdk/Banner/d;

    iget-object v1, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    iget-object v2, p0, Lcom/chartboost/sdk/Banner/c;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/Banner/d;->a(Lcom/chartboost/sdk/Banner/e;Lcom/chartboost/sdk/Banner/BannerSize;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method private m()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_3b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register refresh for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at intervals of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/q;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/r;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->g()V

    :cond_3b
    return-void
.end method

.method private n()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    if-nez v0, :cond_19

    .line 2
    invoke-static {}, Lcom/chartboost/sdk/i;->n()Lcom/chartboost/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    if-eqz v0, :cond_19

    .line 4
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->q()V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/r;)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/t;)V

    :cond_19
    return-void
.end method

.method private o()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_3b

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register timeout for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at intervals of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/q;->d()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/q;->a(Lcom/chartboost/sdk/impl/t;)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->h()V

    :cond_3b
    return-void
.end method

.method private p()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->i()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private q()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 3
    invoke-interface {v1}, Lcom/chartboost/sdk/Banner/e;->getSdkCommand()Lcom/chartboost/sdk/i$b;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    invoke-interface {v1, v0}, Lcom/chartboost/sdk/Banner/e;->attachBannerToSDKCommand(Lcom/chartboost/sdk/i$b;)Lcom/chartboost/sdk/i$b;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/chartboost/sdk/i;->d(Ljava/lang/Runnable;)V

    goto :goto_21

    :cond_1a
    const-string v0, "BannerPresenter"

    const-string v1, "Please start with Chartboost SDK before creating any ChartboostBanner objects"

    .line 9
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_21
    return-void
.end method

.method private r()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregister refresh for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->k()V

    :cond_23
    return-void
.end method

.method private s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Un-register timeout for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->l()V

    :cond_23
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)Lcom/chartboost/sdk/Banner/c$a;
    .registers 5

    .line 1
    sget-object v0, Lcom/chartboost/sdk/R$styleable;->ChartboostBanner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    sget p2, Lcom/chartboost/sdk/R$styleable;->ChartboostBanner_location:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3
    sget v0, Lcom/chartboost/sdk/R$styleable;->ChartboostBanner_size:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Banner/BannerSize;->fromInteger(I)Lcom/chartboost/sdk/Banner/BannerSize;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5
    new-instance p1, Lcom/chartboost/sdk/Banner/c$a;

    invoke-direct {p1}, Lcom/chartboost/sdk/Banner/c$a;-><init>()V

    .line 6
    iput-object p2, p1, Lcom/chartboost/sdk/Banner/c$a;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p1, Lcom/chartboost/sdk/Banner/c$a;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    return-object p1
.end method

.method public a()V
    .registers 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify refresh finished for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->k()V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Banner/e;Ljava/lang/String;Lcom/chartboost/sdk/Banner/BannerSize;Lcom/chartboost/sdk/ChartboostBannerListener;Lcom/chartboost/sdk/impl/q;)V
    .registers 6

    .line 8
    iput-object p1, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    .line 9
    iput-object p2, p0, Lcom/chartboost/sdk/Banner/c;->a:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/chartboost/sdk/Banner/c;->b:Lcom/chartboost/sdk/Banner/BannerSize;

    .line 11
    iput-object p4, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    .line 12
    iput-object p5, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    .line 13
    new-instance p1, Lcom/chartboost/sdk/Banner/d;

    invoke-direct {p1}, Lcom/chartboost/sdk/Banner/d;-><init>()V

    iput-object p1, p0, Lcom/chartboost/sdk/Banner/c;->e:Lcom/chartboost/sdk/Banner/d;

    return-void
.end method

.method public a(Lcom/chartboost/sdk/ChartboostBannerListener;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Banner/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V
    .registers 5

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerClickFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/chartboost/sdk/Events/ChartboostClickError;->code:Lcom/chartboost/sdk/Events/ChartboostClickError$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->m()V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/q;->a(Z)V

    :cond_7
    return-void
.end method

.method public b()V
    .registers 6

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify timeout finished for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->s()V

    .line 11
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->m()V

    .line 12
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_3d

    .line 13
    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {v1}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v2, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v3, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    .line 14
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 16
    invoke-virtual {v0}, Lcom/chartboost/sdk/i;->k()V

    :cond_3d
    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Banner/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregister refresh and timeout for location: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BannerPresenter"

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->l()V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->k()V

    .line 5
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->a()V

    .line 6
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    .line 8
    :cond_30
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    .line 9
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->a:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    .line 11
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->e:Lcom/chartboost/sdk/Banner/d;

    .line 12
    iput-object v1, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    return-void
.end method

.method public didCacheBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_c

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    :cond_c
    return-void
.end method

.method public didClickBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostClickError;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/q;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->k()V

    .line 5
    :cond_b
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_17

    .line 6
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostClickEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostClickEvent;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdClicked(Lcom/chartboost/sdk/Events/ChartboostClickEvent;Lcom/chartboost/sdk/Events/ChartboostClickError;)V

    :cond_17
    return-void
.end method

.method public didShowBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->s()V

    .line 2
    new-instance v0, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {v0}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/chartboost/sdk/Events/ChartboostShowEvent;->location:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz p1, :cond_1f

    .line 5
    invoke-interface {p1, v0, p2}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    .line 6
    iget-object p1, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/q;->b()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 7
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->c()V

    .line 8
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->m()V

    :cond_1f
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->f:Lcom/chartboost/sdk/b;

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 4
    :cond_11
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_24

    .line 5
    new-instance v1, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;

    invoke-direct {v1}, Lcom/chartboost/sdk/Events/ChartboostCacheEvent;-><init>()V

    new-instance v2, Lcom/chartboost/sdk/Events/ChartboostCacheError;

    sget-object v3, Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;->INTERNAL:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-direct {v2, v3}, Lcom/chartboost/sdk/Events/ChartboostCacheError;-><init>(Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;)V

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdCached(Lcom/chartboost/sdk/Events/ChartboostCacheEvent;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    :cond_24
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pause refresh for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->e()V

    :cond_23
    return-void
.end method

.method public h()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pause timeout for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->f()V

    :cond_23
    return-void
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restart refresh if was paused for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->i()V

    :cond_23
    return-void
.end method

.method public j()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    if-eqz v0, :cond_23

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume timeout if was paused for location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->g:Lcom/chartboost/sdk/impl/q;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/q;->j()V

    :cond_23
    return-void
.end method

.method public k()V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->p()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BannerPresenter"

    if-eqz v0, :cond_22

    const-string v0, "Chartboost SDK is not initialised"

    .line 2
    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_21

    .line 4
    new-instance v2, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {v2}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v3, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v4, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-direct {v3, v4, v1}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, v2, v3}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    :cond_21
    return-void

    .line 9
    :cond_22
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->d:Lcom/chartboost/sdk/Banner/e;

    if-nez v0, :cond_3f

    const-string v0, "Banner View is not attached, re-create banner."

    .line 10
    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_3e

    .line 12
    new-instance v2, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {v2}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v3, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v4, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->BANNER_VIEW_IS_DETACHED:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-direct {v3, v4, v1}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, v2, v3}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    :cond_3e
    return-void

    .line 17
    :cond_3f
    invoke-interface {v0}, Lcom/chartboost/sdk/Banner/e;->isBelowLollipop()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "Banner is not supported for this Android version"

    .line 18
    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/chartboost/sdk/Banner/c;->c:Lcom/chartboost/sdk/ChartboostBannerListener;

    if-eqz v0, :cond_5d

    .line 20
    new-instance v2, Lcom/chartboost/sdk/Events/ChartboostShowEvent;

    invoke-direct {v2}, Lcom/chartboost/sdk/Events/ChartboostShowEvent;-><init>()V

    new-instance v3, Lcom/chartboost/sdk/Events/ChartboostShowError;

    sget-object v4, Lcom/chartboost/sdk/Events/ChartboostShowError$Code;->NO_CACHED_AD:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-direct {v3, v4, v1}, Lcom/chartboost/sdk/Events/ChartboostShowError;-><init>(Lcom/chartboost/sdk/Events/ChartboostShowError$Code;Z)V

    invoke-interface {v0, v2, v3}, Lcom/chartboost/sdk/ChartboostAdListener;->onAdShown(Lcom/chartboost/sdk/Events/ChartboostShowEvent;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    :cond_5d
    return-void

    .line 25
    :cond_5e
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->n()V

    const/4 v0, 0x2

    .line 27
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Banner/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 28
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->s()V

    .line 29
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->r()V

    .line 30
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->l()V

    :cond_71
    return-void
.end method

.method public onBannerCacheFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerCacheFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/chartboost/sdk/Events/ChartboostCacheError;->code:Lcom/chartboost/sdk/Events/ChartboostCacheError$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->m()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didCacheBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostCacheError;)V

    return-void
.end method

.method public onBannerShowFail(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerShowFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/chartboost/sdk/Events/ChartboostShowError;->code:Lcom/chartboost/sdk/Events/ChartboostShowError$Code;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerPresenter"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/chartboost/sdk/Banner/c;->m()V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/Banner/c;->didShowBanner(Ljava/lang/String;Lcom/chartboost/sdk/Events/ChartboostShowError;)V

    .line 4
    iget-boolean p1, p2, Lcom/chartboost/sdk/Events/ChartboostShowError;->shouldRetry:Z

    if-eqz p1, :cond_29

    .line 5
    invoke-virtual {p0}, Lcom/chartboost/sdk/Banner/c;->k()V

    :cond_29
    return-void
.end method
