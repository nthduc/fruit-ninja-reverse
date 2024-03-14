.class public Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;,
        Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/applovin/impl/sdk/ad/d;",
            "Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->c(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->d(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->e(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-static {p1}, Lcom/applovin/impl/sdk/ad/d;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    invoke-direct {v1, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    if-nez v1, :cond_18

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    if-ltz p4, :cond_d

    const/16 v1, 0x64

    if-le p4, v1, :cond_e

    :cond_d
    const/4 p4, 0x0

    :cond_e
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et_s"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "pv"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "vid_ts"

    invoke-virtual {p2, p3, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "uvs"

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_42} :catch_44

    return-object p1

    :cond_43
    return-object v0

    :catch_44
    move-exception p2

    iget-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Unknown error parsing the video end url: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovinAdService"

    invoke-virtual {p3, p4, p1, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;JJZI)Ljava/lang/String;
    .registers 9

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "et_ms"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "vs_ms"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    sget p2, Lcom/applovin/impl/sdk/e;->a:I

    if-eq p7, p2, :cond_3c

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_ch"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p7}, Lcom/applovin/impl/sdk/e;->a(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_st"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3c
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_45
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$2;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 7

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/j;)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/applovin/impl/sdk/utils/j;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    :cond_15
    invoke-virtual {p4}, Lcom/applovin/impl/adview/AdViewControllerImpl;->dismissInterstitialIfRequired()V

    goto :goto_22

    :cond_19
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "AppLovinAdService"

    const-string p3, "Unable to launch click - adView has been prematurely destroyed"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;ILcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->e(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_56

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using pre-loaded ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinAdService"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/sdk/AppLovinAdBase;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->j()Z

    move-result p2

    if-eqz p2, :cond_4f

    :goto_45
    iget-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/c;->i(Lcom/applovin/impl/sdk/ad/d;)V

    goto :goto_60

    :cond_4f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->h()I

    move-result p2

    if-lez p2, :cond_60

    goto :goto_45

    :cond_56
    new-instance v0, Lcom/applovin/impl/sdk/d/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/d/m;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/d/a;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 7

    if-eqz p1, :cond_8e

    if-eqz p2, :cond_86

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    move-result-object v0

    iget-object v1, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-object v2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->c:Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean p2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    if-nez p2, :cond_7a

    iget-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "AppLovinAdService"

    const-string v3, "Loading next ad..."

    invoke-virtual {p2, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;->b:Z

    new-instance p2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->i()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "AppLovinAdService"

    const-string v0, "Attaching load listener to initial preload task..."

    :goto_5f
    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    :cond_63
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "AppLovinAdService"

    const-string v3, "Skipped attach of initial preload callback."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6c
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    goto :goto_81

    :cond_70
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "AppLovinAdService"

    const-string v3, "Task merge not necessary."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6c

    :cond_7a
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "AppLovinAdService"

    const-string v0, "Already waiting on an ad load..."

    goto :goto_5f

    :goto_81
    monitor-exit v1

    return-void

    :catchall_83
    move-exception p1

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_2c .. :try_end_85} :catchall_83

    throw p1

    :cond_86
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/c/a;)V
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/f$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/c/a;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/f$a;->b(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_5e

    :cond_55
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v0, "AppLovinAdService"

    const-string v1, "Requested a postback dispatch for a null URL; nothing to do..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d/a;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "AppLovinSdk"

    const-string v1, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener)."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$1;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/c/a;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/c/a;)V

    goto :goto_c

    :cond_1c
    return-void
.end method


# virtual methods
.method public dequeueAd(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/sdk/AppLovinAd;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->d(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/j;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for zone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z
    .registers 4

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->g(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result p1

    return p1
.end method

.method public hasPreloadedAdForZoneId(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "AppLovinAdService"

    const-string v0, "Unable to check if ad is preloaded - invalid zone id"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->g(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result p1

    return p1
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 5

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "} with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p2, v0, p1, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAdForAdToken(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 13

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x8

    const-string v2, "AppLovinAdService"

    if-eqz v0, :cond_1a

    const-string p1, "Invalid ad token specified"

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void

    :cond_1a
    new-instance v0, Lcom/applovin/impl/sdk/ad/c;

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p1, v3}, Lcom/applovin/impl/sdk/ad/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->b()Lcom/applovin/impl/sdk/ad/c$a;

    move-result-object p1

    sget-object v3, Lcom/applovin/impl/sdk/ad/c$a;->b:Lcom/applovin/impl/sdk/ad/c$a;

    if-ne p1, v3, :cond_4b

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading next ad for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/applovin/impl/sdk/d/o;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, v0, p2, v1}, Lcom/applovin/impl/sdk/d/o;-><init>(Lcom/applovin/impl/sdk/ad/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    :goto_46
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/d/a;)V

    goto/16 :goto_fc

    :cond_4b
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->b()Lcom/applovin/impl/sdk/ad/c$a;

    move-result-object p1

    sget-object v3, Lcom/applovin/impl/sdk/ad/c$a;->c:Lcom/applovin/impl/sdk/ad/c$a;

    if-ne p1, v3, :cond_e5

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/c;->d()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_ce

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/utils/h;->h(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    const-string v3, "ads"

    invoke-static {v5, v3, p1, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_b2

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering ad for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, p1}, Lcom/applovin/impl/sdk/utils/r;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v6

    new-instance v8, Lcom/applovin/impl/sdk/ad/f$a;

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v8, v6, p2, p1}, Lcom/applovin/impl/sdk/ad/f$a;-><init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    const/4 p1, 0x1

    invoke-virtual {v8, p1}, Lcom/applovin/impl/sdk/ad/f$a;->a(Z)V

    new-instance p1, Lcom/applovin/impl/sdk/d/t;

    sget-object v7, Lcom/applovin/impl/sdk/ad/b;->f:Lcom/applovin/impl/sdk/ad/b;

    iget-object v9, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/applovin/impl/sdk/d/t;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    goto :goto_46

    :cond_b2
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ad returned from the server for token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xcc

    invoke-interface {p2, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    goto :goto_fc

    :cond_ce
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve ad response JSON from token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f9

    :cond_e5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ad token specified: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f9
    invoke-interface {p2, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :goto_fc
    return-void
.end method

.method public loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone id specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadNextAdForZoneIds(Ljava/util/List;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/sdk/AppLovinAdLoadListener;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v0, "AppLovinAdService"

    if-eqz p1, :cond_30

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_30

    :cond_f
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading next ad for zones: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/l;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/sdk/d/l;-><init>(Ljava/util/List;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void

    :cond_30
    :goto_30
    const-string p1, "No zones were provided"

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x7

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(ILcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextIncentivizedAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next incentivized ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/d;->b(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public preloadAd(Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->a()V

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->i(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public preloadAdForZoneId(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "AppLovinAdService"

    const-string v0, "Unable to preload ad for invalid zone identifier"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ad/d;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->h(Lcom/applovin/impl/sdk/ad/d;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->i(Lcom/applovin/impl/sdk/ad/d;)V

    return-void
.end method

.method public preloadAds(Lcom/applovin/impl/sdk/ad/d;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->h(Lcom/applovin/impl/sdk/ad/d;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/d;->h()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/ad/d;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/ad/d;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAdService{adLoadStates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;Landroid/graphics/PointF;)V
    .registers 9

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "Unable to track ad view click. No ad specified"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "Tracking click on an ad..."

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/applovin/impl/sdk/ad/g;->a(Landroid/graphics/PointF;)Ljava/util/List;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    invoke-direct {p0, p4, p1, p2, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    return-void
.end method

.method public trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V
    .registers 8

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "Unable to track video click. No ad specified"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "Tracking VIDEO click on an ad..."

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/applovin/impl/sdk/ad/g;->b(Landroid/graphics/PointF;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/applovin/adview/AppLovinAdView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p3, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/j;)Z

    return-void
.end method

.method public trackAppKilled(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 7

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to track app killed. No ad specified"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "Tracking app killed during ad..."

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->as()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/c/a;

    new-instance v1, Lcom/applovin/impl/sdk/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/applovin/impl/sdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/c/a;)V

    goto :goto_23

    :cond_40
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to track app killed during AD #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ". Missing app killed tracking URL."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    return-void
.end method

.method public trackFullScreenAdClosed(Lcom/applovin/impl/sdk/ad/g;JJZI)V
    .registers 21

    move-object v8, p0

    const-string v9, "AppLovinAdService"

    if-nez p1, :cond_d

    iget-object v0, v8, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to track ad closed. No ad specified."

    invoke-virtual {v0, v9, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, v8, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Tracking ad closed..."

    invoke-virtual {v0, v9, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ar()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_73

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_24
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/applovin/impl/sdk/c/a;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJZI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJZI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance v1, Lcom/applovin/impl/sdk/c/a;

    invoke-direct {v1, v12, v0}, Lcom/applovin/impl/sdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/c/a;)V

    goto :goto_24

    :cond_58
    iget-object v0, v8, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    :cond_73
    iget-object v0, v8, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to track ad closed for AD #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Missing ad close tracking URL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    return-void
.end method

.method public trackImpression(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 5

    const-string v0, "AppLovinAdService"

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to track impression click. No ad specified"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "Tracking impression on ad..."

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->at()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/ad/g;)V

    return-void
.end method

.method public trackVideoEnd(Lcom/applovin/impl/sdk/ad/g;JIZ)V
    .registers 19

    move-object v7, p0

    const-string v8, "AppLovinAdService"

    if-nez p1, :cond_d

    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to track video end. No ad specified"

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Tracking video end on ad..."

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aq()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_88

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/applovin/impl/sdk/c/a;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p4

    move-object v5, v9

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v12, :cond_65

    new-instance v1, Lcom/applovin/impl/sdk/c/a;

    invoke-direct {v1, v12, v0}, Lcom/applovin/impl/sdk/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/c/a;)V

    goto :goto_2c

    :cond_65
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/applovin/impl/sdk/c/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_80
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Requested a postback dispatch for an empty video end URL; nothing to do..."

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_88
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to submit persistent postback for AD #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Missing video end tracking URL."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    return-void
.end method
