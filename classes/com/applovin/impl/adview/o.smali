.class public Lcom/applovin/impl/adview/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# static fields
.field public static volatile b:Z

.field public static volatile c:Z

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/adview/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/applovin/impl/sdk/j;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile j:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile k:Lcom/applovin/impl/sdk/ad/g;

.field private volatile l:Lcom/applovin/impl/sdk/ad/g$b;

.field private volatile m:Lcom/applovin/impl/adview/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/o;->d:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/o;->b:Z

    sput-boolean v0, Lcom/applovin/impl/adview/o;->c:Z

    return-void
.end method

.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2b

    if-eqz p2, :cond_23

    iget-object p1, p1, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->e:Ljava/lang/String;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->f:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    sput-boolean p1, Lcom/applovin/impl/adview/o;->b:Z

    const/4 p1, 0x0

    sput-boolean p1, Lcom/applovin/impl/adview/o;->c:Z

    return-void

    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/adview/o;
    .registers 2

    sget-object v0, Lcom/applovin/impl/adview/o;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/adview/o;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/o;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/o;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method private a(I)V
    .registers 3

    new-instance v0, Lcom/applovin/impl/adview/o$6;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/o$6;-><init>(Lcom/applovin/impl/adview/o;I)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->k:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->n()Z

    move-result v0

    if-eqz v0, :cond_b

    const-class v0, Lcom/applovin/adview/AppLovinFullscreenActivity;

    goto :goto_d

    :cond_b
    const-class v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    :goto_d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->e:Ljava/lang/String;

    const-string v2, "com.applovin.interstitial.wrapper_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.applovin.interstitial.sdk_key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object p0, Lcom/applovin/impl/adview/n;->lastKnownWrapper:Lcom/applovin/impl/adview/o;

    sput-object p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3a

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_42

    :cond_3a
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_42
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/o;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/o;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/o;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/o;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/o;Lcom/applovin/sdk/AppLovinAd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/o;->b(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/g;Landroid/content/Context;)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/g;->b(Z)V

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->m:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :cond_1b
    sget-object v0, Lcom/applovin/impl/adview/o;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->e:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eP:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/s;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/o$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/o$2;-><init>(Lcom/applovin/impl/adview/o;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_44
    iput-object p1, p0, Lcom/applovin/impl/adview/o;->k:Lcom/applovin/impl/sdk/ad/g;

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->k:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->o()Lcom/applovin/impl/sdk/ad/g$b;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/o;->l:Lcom/applovin/impl/sdk/ad/g$b;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->cF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Presenting ad with delay of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InterstitialAdDialogWrapper"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/applovin/impl/adview/o$3;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/applovin/impl/adview/o$3;-><init>(Lcom/applovin/impl/adview/o;Landroid/content/Context;J)V

    invoke-direct {p0, p1, p2, v2}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/impl/sdk/ad/g;Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/g;Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ag()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_48

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_48

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ah()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ai()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aj()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/adview/o$4;

    invoke-direct {p2, p0, p3}, Lcom/applovin/impl/adview/o$4;-><init>(Lcom/applovin/impl/adview/o;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_4b

    :cond_48
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :goto_4b
    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/o;)Lcom/applovin/impl/adview/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/o;->m:Lcom/applovin/impl/adview/j;

    return-object p0
.end method

.method private b(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    new-instance v0, Lcom/applovin/impl/adview/o$5;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/o$5;-><init>(Lcom/applovin/impl/adview/o;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/adview/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->m:Lcom/applovin/impl/adview/j;

    return-void
.end method

.method protected a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public b()Lcom/applovin/impl/sdk/ad/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->k:Lcom/applovin/impl/sdk/ad/g;

    return-object v0
.end method

.method public c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method public d()Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method public dismiss()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/o$7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/o$7;-><init>(Lcom/applovin/impl/adview/o;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()Lcom/applovin/sdk/AppLovinAdClickListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->j:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method public f()Lcom/applovin/impl/sdk/ad/g$b;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->l:Lcom/applovin/impl/sdk/ad/g$b;

    return-object v0
.end method

.method public g()V
    .registers 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/o;->b:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/adview/o;->c:Z

    sget-object v0, Lcom/applovin/impl/adview/o;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/o;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->k:Lcom/applovin/impl/sdk/ad/g;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/o;->m:Lcom/applovin/impl/adview/j;

    :cond_14
    return-void
.end method

.method public isAdReadyToDisplay()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->j:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->h:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->g:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o;->i:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/o$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/o$1;-><init>(Lcom/applovin/impl/adview/o;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public showAndRender(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/adview/o;->h()Landroid/content/Context;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    if-eqz v0, :cond_77

    iget-object v2, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/j;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v2

    if-eqz v2, :cond_5f

    move-object p1, v2

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->hasShown()Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ck:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_32

    :cond_2a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to display ad - ad can only be displayed once. Load the next ad."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    :goto_32
    instance-of p1, v2, Lcom/applovin/impl/sdk/ad/g;

    if-eqz p1, :cond_3c

    check-cast v2, Lcom/applovin/impl/sdk/ad/g;

    invoke-direct {p0, v2, v0}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/impl/sdk/ad/g;Landroid/content/Context;)V

    goto :goto_85

    :cond_3c
    iget-object p1, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show interstitial: unknown ad type provided: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_85

    :cond_5f
    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7f

    :cond_77
    iget-object v0, p0, Lcom/applovin/impl/adview/o;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v2, "Failed to show interstitial: stale activity reference provided"

    :goto_7f
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/sdk/AppLovinAd;)V

    :goto_85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "AppLovinInterstitialAdDialog{}"

    return-object v0
.end method
