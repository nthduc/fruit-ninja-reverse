.class public Lcom/applovin/impl/adview/AdViewControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AdViewController;
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/AdViewControllerImpl$a;,
        Lcom/applovin/impl/adview/AdViewControllerImpl$b;,
        Lcom/applovin/impl/adview/AdViewControllerImpl$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/applovin/impl/sdk/j;

.field private d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private e:Lcom/applovin/impl/sdk/q;

.field private f:Lcom/applovin/communicator/AppLovinCommunicator;

.field private g:Lcom/applovin/sdk/AppLovinAdSize;

.field private h:Ljava/lang/String;

.field private i:Lcom/applovin/impl/sdk/c/d;

.field private j:Lcom/applovin/impl/adview/d;

.field private k:Lcom/applovin/impl/adview/AdViewControllerImpl$c;

.field private l:Lcom/applovin/impl/adview/c;

.field private m:Ljava/lang/Runnable;

.field private n:Ljava/lang/Runnable;

.field private volatile o:Lcom/applovin/impl/sdk/ad/g;

.field private volatile p:Lcom/applovin/sdk/AppLovinAd;

.field private q:Lcom/applovin/impl/adview/k;

.field private r:Lcom/applovin/impl/adview/k;

.field private final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;"
        }
    .end annotation
.end field

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile x:Lcom/applovin/adview/AppLovinAdViewEventListener;

.field private volatile y:Lcom/applovin/sdk/AppLovinAdClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Lcom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Lcom/applovin/impl/adview/k;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Lcom/applovin/impl/adview/k;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/c/d;)Lcom/applovin/impl/sdk/c/d;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/sdk/c/d;

    return-object p1
.end method

.method static synthetic a(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void
.end method

.method private a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    if-eqz p1, :cond_53

    if-eqz p2, :cond_4b

    if-eqz p3, :cond_43

    iput-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    invoke-static {p5}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->f:Lcom/applovin/communicator/AppLovinCommunicator;

    iput-object p3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    iput-object p4, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Landroid/view/ViewGroup;

    new-instance p1, Lcom/applovin/impl/adview/d;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/d;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/impl/adview/d;

    new-instance p1, Lcom/applovin/impl/adview/AdViewControllerImpl$a;

    const/4 p4, 0x0

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/AdViewControllerImpl$a;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/AdViewControllerImpl$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/impl/adview/AdViewControllerImpl$b;

    invoke-direct {p1, p0, p4}, Lcom/applovin/impl/adview/AdViewControllerImpl$b;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/AdViewControllerImpl$1;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/impl/adview/AdViewControllerImpl$c;

    invoke-direct {p1, p0, p2}, Lcom/applovin/impl/adview/AdViewControllerImpl$c;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Lcom/applovin/impl/adview/AdViewControllerImpl$c;

    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/AdViewControllerImpl;->attachNewAdView(Lcom/applovin/sdk/AppLovinAdSize;)V

    return-void

    :cond_43
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad size specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 2

    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/adview/k;)Lcom/applovin/impl/adview/k;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    return-object p1
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    if-eqz v0, :cond_b

    const-string v1, "AppLovinAdView"

    const-string v2, "Destroying..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1e

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->removeAllViews()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->b()Z

    move-result v0

    const-string v1, "about:blank"

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->clearHistory()V

    goto :goto_5c

    :cond_38
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eE:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->onPause()V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->destroyDrawingCache()V

    :cond_57
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/c;->destroy()V

    :goto_5c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    :cond_6a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    return-void
.end method

.method private static b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_1f

    const/4 v1, -0x1

    goto :goto_32

    :cond_1f
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    if-ne v1, v3, :cond_28

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_32

    :cond_28
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    :goto_32
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v5}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_56

    :cond_43
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v4

    if-ne v4, v3, :cond_4c

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_56

    :cond_4c
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int v3, p1

    :goto_56
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_62

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_62
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_77

    move-object v0, p1

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_77
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private c()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$2;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdSize;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p0
.end method

.method private d()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$7;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$7;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/ad/g;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    return-object p0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/sdk/c/d;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/d;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/sdk/c/d;

    :cond_a
    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    return-object p0
.end method

.method private f()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    new-instance v1, Lcom/applovin/impl/sdk/utils/k;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/utils/k;-><init>()V

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/k;->a()Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/d;->b()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Format"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Ad Id"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/d;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Zone Id"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getSource()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v3

    const-string v4, "Source"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    instance-of v3, v0, Lcom/applovin/impl/a/a;

    if-eqz v3, :cond_4a

    const-string v4, "VastAd"

    goto :goto_4c

    :cond_4a
    const-string v4, "AdServerAd"

    :goto_4c
    const-string v5, "Ad Class"

    invoke-virtual {v2, v5, v4}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    const-string v4, "DSP Name"

    invoke-virtual {v1, v4, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    :cond_60
    if-eqz v3, :cond_6e

    move-object v2, v0

    check-cast v2, Lcom/applovin/impl/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/a/a;->j()Lcom/applovin/impl/a/f;

    move-result-object v2

    const-string v3, "VAST DSP"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    :cond_6e
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v2

    if-nez v2, :cond_e3

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/k;->a()Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    const-string v3, "Fullscreen Ad Properties"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->o()Lcom/applovin/impl/sdk/ad/g$b;

    move-result-object v2

    const-string v3, "Target"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->t()Lcom/applovin/impl/adview/h$a;

    move-result-object v3

    const-string v4, "close_style"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->s()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "s"

    const-string v5, "close_delay_graphic"

    invoke-virtual {v2, v5, v3, v4}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->hasVideoUrl()Z

    move-result v2

    if-eqz v2, :cond_e3

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->q()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "close_delay"

    invoke-virtual {v1, v3, v2, v4}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->u()Lcom/applovin/impl/adview/h$a;

    move-result-object v3

    const-string v4, "skip_style"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->d()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Streaming"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video Location"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->A()Lcom/applovin/impl/adview/s;

    move-result-object v0

    const-string v3, "video_button_properties"

    invoke-virtual {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    :cond_e3
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/k;->a()Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/utils/k;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinAdView"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/adview/AdViewControllerImpl;)Landroid/view/ViewGroup;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/adview/AppLovinAdViewEventListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->x:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/c/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->i:Lcom/applovin/impl/sdk/c/d;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->d()V

    return-void
.end method

.method static synthetic m(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method

.method static synthetic n(Lcom/applovin/impl/adview/AdViewControllerImpl;)Lcom/applovin/impl/adview/k;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Lcom/applovin/impl/adview/k;

    return-object p0
.end method

.method static synthetic o(Lcom/applovin/impl/adview/AdViewControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->f()V

    return-void
.end method

.method static synthetic p(Lcom/applovin/impl/adview/AdViewControllerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    return p0
.end method


# virtual methods
.method a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->r:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_9

    goto :goto_43

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    goto :goto_46

    :cond_43
    :goto_43
    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->contractAd()V

    :goto_46
    return-void
.end method

.method a(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_9
    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl$6;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;I)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V
    .registers 12

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->y:Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    if-eqz p2, :cond_12

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/net/Uri;Landroid/graphics/PointF;)V

    goto :goto_1b

    :cond_12
    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string p2, "AppLovinAdView"

    const-string p3, "Unable to process ad click - AppLovinAdView destroyed prematurely"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method a(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 5

    const-string v0, "AppLovinAdView"

    if-eqz p1, :cond_21

    iget-boolean v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    if-nez v1, :cond_c

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_18

    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string v2, "Ad view has paused when an ad was received, ad saved for later"

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl$5;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_21
    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string v1, "No provided when to the view controller"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(I)V

    :goto_2c
    return-void
.end method

.method protected attachNewAdView(Lcom/applovin/sdk/AppLovinAdSize;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->j:Lcom/applovin/impl/adview/d;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/adview/c;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)Lcom/applovin/impl/adview/c;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/adview/c;->setWillNotCacheDrawing(Z)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-static {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b(Landroid/view/View;Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->n:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_31
    new-instance p1, Lcom/applovin/impl/adview/AdViewControllerImpl$1;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$1;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    return-void
.end method

.method public contractAd()V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$4;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->contractAd()V

    :cond_b
    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->b()V

    return-void
.end method

.method public dismissInterstitialIfRequired()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/applovin/impl/adview/j;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g;->G()Lcom/applovin/impl/sdk/ad/g$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/ad/g$a;->b:Lcom/applovin/impl/sdk/ad/g$a;

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    check-cast v0, Lcom/applovin/impl/adview/j;

    invoke-interface {v0}, Lcom/applovin/impl/adview/j;->dismiss()V

    :cond_20
    return-void
.end method

.method public expandAd(Landroid/graphics/PointF;)V
    .registers 3

    new-instance v0, Lcom/applovin/impl/adview/AdViewControllerImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl$3;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Landroid/graphics/PointF;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->x:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-object v0
.end method

.method public getAdWebView()Lcom/applovin/impl/adview/c;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    return-object v0
.end method

.method public getCommunicatorId()Ljava/lang/String;
    .registers 2

    const-class v0, Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAd()Lcom/applovin/impl/sdk/ad/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    return-object v0
.end method

.method public getParentView()Lcom/applovin/adview/AppLovinAdView;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->b:Landroid/view/ViewGroup;

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public getSdk()Lcom/applovin/impl/sdk/j;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    return-object v0
.end method

.method public getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Ljava/lang/String;

    return-object v0
.end method

.method public initializeAdView(Lcom/applovin/adview/AppLovinAdView;Landroid/content/Context;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;Landroid/util/AttributeSet;)V
    .registers 13

    if-eqz p1, :cond_38

    if-nez p2, :cond_c

    const-string p1, "AppLovinAdView"

    const-string p2, "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view."

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    if-nez p3, :cond_16

    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/util/AttributeSet;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-nez p3, :cond_16

    sget-object p3, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    :cond_16
    move-object v3, p3

    if-nez p5, :cond_1d

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p5

    :cond_1d
    if-eqz p5, :cond_37

    invoke-virtual {p5}, Lcom/applovin/sdk/AppLovinSdk;->hasCriticalErrors()Z

    move-result p3

    if-nez p3, :cond_37

    iget-object v2, p5, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p6}, Lcom/applovin/impl/sdk/utils/b;->b(Landroid/util/AttributeSet;)Z

    move-result p1

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->loadNextAd()V

    :cond_37
    return-void

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No parent view specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAdReadyToDisplay()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->hasPreloadedAdForZoneId(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->hasPreloadedAd(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    return v0
.end method

.method public loadNextAd()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Lcom/applovin/impl/adview/AdViewControllerImpl$c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->a:Landroid/content/Context;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->d:Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    iget-object v3, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->k:Lcom/applovin/impl/adview/AdViewControllerImpl$c;

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_23

    :cond_1c
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public onAdHtmlLoaded(Landroid/webkit/WebView;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    :try_start_4
    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Lcom/applovin/sdk/AppLovinAd;

    if-eq p1, v0, :cond_34

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Lcom/applovin/sdk/AppLovinAd;

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    const-string v0, "javascript:al_onAdViewRendered();"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p1

    const-string v0, "AppLovinAdView"

    const-string v1, "Exception while notifying ad display listener"

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->m:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    :cond_13
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    const-string v1, "AppLovinAdView"

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string v2, "onDetachedFromWindowCalled with expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->c()V

    goto :goto_33

    :cond_2c
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string v2, "onDetachedFromWindowCalled without an expanded ad present"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .registers 3

    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crash_applovin_ad_webview"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Lcom/applovin/impl/adview/AdViewControllerImpl$8;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/AdViewControllerImpl$8;-><init>(Lcom/applovin/impl/adview/AdViewControllerImpl;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public pause()V
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    if-eqz v0, :cond_9

    goto :goto_c

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    :cond_c
    :goto_c
    return-void
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public renderAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_d7

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/r;->b(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/j;)V

    iget-boolean p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    const-string v0, "AppLovinAdView"

    if-eqz p2, :cond_d1

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/j;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/sdk/ad/g;

    if-eqz p1, :cond_8f

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    if-eq p1, p2, :cond_8f

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rendering ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/utils/j;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p2

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-eq p2, v0, :cond_63

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->e()V

    :cond_63
    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->p:Lcom/applovin/sdk/AppLovinAd;

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->o:Lcom/applovin/impl/sdk/ad/g;

    iget-boolean p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    if-nez p2, :cond_82

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->g:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_82

    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackImpression(Lcom/applovin/impl/sdk/ad/g;)V

    :cond_82
    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->q:Lcom/applovin/impl/adview/k;

    if-eqz p1, :cond_89

    invoke-direct {p0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->c()V

    :cond_89
    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->m:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Ljava/lang/Runnable;)V

    goto :goto_d6

    :cond_8f
    if-nez p1, :cond_99

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    const-string p2, "Unable to render ad. Ad is null. Internal inconsistency error."

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6

    :cond_99
    iget-object p2, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->e:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is already showing, ignoring"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->c:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/b;->ck:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c9

    goto :goto_d6

    :cond_c9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to display ad - ad can only be displayed once. Load the next ad."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d1
    const-string p1, "Unable to render ad: AppLovinAdView is not initialized."

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d6
    return-void

    :cond_d7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resume()V
    .registers 3

    iget-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->t:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->s:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_13

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->u:Z

    return-void
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->y:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->w:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->v:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method public setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->x:Lcom/applovin/adview/AppLovinAdViewEventListener;

    return-void
.end method

.method public setStatsManagerHelper(Lcom/applovin/impl/sdk/c/d;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/AdViewControllerImpl;->l:Lcom/applovin/impl/adview/c;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/c;->setStatsManagerHelper(Lcom/applovin/impl/sdk/c/d;)V

    :cond_7
    return-void
.end method
