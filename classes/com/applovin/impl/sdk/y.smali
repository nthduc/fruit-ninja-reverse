.class public Lcom/applovin/impl/sdk/y;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/y$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Ljava/lang/Object;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private final g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/mediation/ads/MaxAdView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/y$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/y;->c:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/y;->d:Landroid/graphics/Rect;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/y;->i:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/y;->j:Ljava/lang/ref/WeakReference;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/applovin/impl/sdk/y;->m:J

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/impl/sdk/q;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->e:Landroid/os/Handler;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->h:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/applovin/impl/sdk/y$1;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/sdk/y$1;-><init>(Lcom/applovin/impl/sdk/y;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->f:Ljava/lang/Runnable;

    new-instance p1, Lcom/applovin/impl/sdk/y$2;

    invoke-direct {p1, p0}, Lcom/applovin/impl/sdk/y$2;-><init>(Lcom/applovin/impl/sdk/y;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/y;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/y;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/y;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    :cond_12
    const-string p1, "VisibilityTracker"

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to set view tree observer due to no root view."

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/impl/sdk/q;

    const-string v1, "Unable to set view tree observer since the view tree observer is not alive."

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_30
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/y;->i:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/applovin/impl/sdk/y;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_4d

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4d

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_10

    goto :goto_4d

    :cond_10
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4d

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_1d

    goto :goto_4d

    :cond_1d
    iget-object p1, p0, Lcom/applovin/impl/sdk/y;->d:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_26

    return v0

    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p1, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p2, v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result p2

    mul-int p1, p1, p2

    int-to-long p1, p1

    iget v1, p0, Lcom/applovin/impl/sdk/y;->k:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_4d

    const/4 v0, 0x1

    :cond_4d
    :goto_4d
    return v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/y;Landroid/view/View;Landroid/view/View;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/y;->b(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/y;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/y;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private b()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ce:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;)Z
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/y;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_23

    iget-wide v0, p0, Lcom/applovin/impl/sdk/y;->m:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/y;->m:J

    :cond_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/y;->m:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/applovin/impl/sdk/y;->l:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_23

    const/4 p2, 0x1

    :cond_23
    return p2
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/y;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_15
    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/y;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/y;->b()V

    return-void
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/y;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/y;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/y;->c()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/applovin/impl/sdk/y;->m:J

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    monitor-exit v0

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public a(Lcom/applovin/impl/mediation/a/b;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/impl/sdk/q;

    const-string v2, "VisibilityTracker"

    const-string v3, "Tracking Visibility..."

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/y;->a()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->n()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/applovin/impl/sdk/y;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->s()I

    move-result v1

    iput v1, p0, Lcom/applovin/impl/sdk/y;->k:I

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->u()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/applovin/impl/sdk/y;->l:J

    iget-object p1, p0, Lcom/applovin/impl/sdk/y;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/y;->a(Landroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p1
.end method
