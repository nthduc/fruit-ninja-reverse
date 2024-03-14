.class public Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;
.super Lcom/applovin/impl/mediation/ads/a;

# interfaces
.implements Lcom/applovin/impl/sdk/d$a;
.implements Lcom/applovin/impl/sdk/y$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;,
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;,
        Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$b;
    }
.end annotation


# static fields
.field private static final q:[I


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/applovin/mediation/ads/MaxAdView;

.field private final c:Landroid/view/View;

.field private d:J

.field private e:Lcom/applovin/impl/mediation/a/b;

.field private f:Ljava/lang/String;

.field private final g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

.field private final h:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

.field private final i:Lcom/applovin/impl/sdk/d;

.field private final j:Lcom/applovin/impl/sdk/x;

.field private final k:Lcom/applovin/impl/sdk/y;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/applovin/impl/mediation/a/b;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->q:[I

    return-void

    nop

    :array_a
    .array-data 4
        0xa
        0xe
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/ads/MaxAdView;Landroid/view/View;Lcom/applovin/impl/sdk/j;Landroid/app/Activity;)V
    .registers 8

    const-string v0, "MaxAdView"

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/applovin/impl/mediation/ads/a;-><init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    if-eqz p6, :cond_62

    iput-object p6, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    iput-object p4, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Landroid/view/View;

    new-instance p2, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    new-instance p2, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    invoke-direct {p2, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    iput-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    new-instance p1, Lcom/applovin/impl/sdk/d;

    invoke-direct {p1, p5, p0}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/d$a;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    new-instance p1, Lcom/applovin/impl/sdk/x;

    invoke-direct {p1, p3, p5}, Lcom/applovin/impl/sdk/x;-><init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lcom/applovin/impl/sdk/x;

    new-instance p1, Lcom/applovin/impl/sdk/y;

    invoke-direct {p1, p3, p5, p0}, Lcom/applovin/impl/sdk/y;-><init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/y$a;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/y;

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Created new MaxAdView ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_62
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/a/b;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)Lcom/applovin/impl/mediation/a/b;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    return-object p1
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/y;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/y;->a()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_11
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_29

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    :cond_28
    return-void

    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private a(I)V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->q:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'..."

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring banner ad refresh for error code \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->p:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_79

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling failed banner ad refresh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " milliseconds from now for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/d;->a(J)V

    :cond_79
    return-void
.end method

.method private a(J)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->z:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/r;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undesired flags matched - current: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", undesired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "Waiting for refresh timer to manually fire request"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    goto :goto_58

    :cond_49
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object p2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "No undesired viewability flags matched - scheduling viewability"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b()V

    :goto_58
    return-void
.end method

.method private a(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/b;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/b;->n()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->w:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_37

    :cond_33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :goto_37
    return-void
.end method

.method private a(Landroid/view/View;Lcom/applovin/impl/mediation/a/b;)V
    .registers 10

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/b;->l()I

    move-result v0

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/a/b;->m()I

    move-result p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v2, -0x1

    goto :goto_15

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    :goto_15
    if-ne p2, v1, :cond_18

    goto :goto_20

    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v1

    :goto_20
    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v3}, Lcom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v4}, Lcom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v4

    if-lez v3, :cond_30

    if-lt v3, v1, :cond_34

    :cond_30
    if-lez v4, :cond_75

    if-ge v4, v2, :cond_75

    :cond_34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Landroid/content/Context;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n**************************************************\n`MaxAdView` size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "x"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dp smaller than required size: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dp\n**************************************************\n"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLovinSdk"

    invoke-static {v0, p2}, Lcom/applovin/impl/sdk/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_81

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_85

    :cond_81
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_85
    instance-of v0, p2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pinning ad view to MAX ad view with width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and height: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAdView;->getGravity()I

    move-result v0

    const/16 v1, 0xa

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/s;->a(III)[I

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c1
    if-ge v3, v2, :cond_cb

    aget v4, v0, v3

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    :cond_cb
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/a/b;)V
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$2;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/a/b;J)V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Scheduling viewability impression for ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/impl/mediation/MediationServiceImpl;->maybeScheduleViewabilityAdImpressionPostback(Lcom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method private a(Lcom/applovin/impl/mediation/a/b;Lcom/applovin/mediation/ads/MaxAdView;)V
    .registers 9

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->n()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->y()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_20

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Landroid/view/View;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/b;->y()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_33

    :cond_20
    iget-wide v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2d

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Landroid/view/View;

    long-to-int v2, v1

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_33

    :cond_2d
    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_33
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/ads/MaxAdView;->addView(Landroid/view/View;)V

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Landroid/view/View;Lcom/applovin/impl/mediation/a/b;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object p2, Lcom/applovin/impl/sdk/b/a;->v:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Landroid/animation/AnimatorListenerAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;Lcom/applovin/mediation/ads/MaxAdView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;Lcom/applovin/mediation/ads/MaxAdView;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/mediation/MaxAd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/mediation/MaxAdListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    if-eqz v0, :cond_37

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering precache request ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    goto :goto_3b

    :cond_37
    check-cast p1, Lcom/applovin/impl/mediation/a/b;

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    :goto_3b
    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAdListener;)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v0, "Unable to load new ad; ad is already destroyed"

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    return-void

    :cond_16
    new-instance v0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$1;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/mediation/MaxAdListener;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/x;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lcom/applovin/impl/sdk/x;

    return-object p0
.end method

.method private b()V
    .registers 8

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->A:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling refresh precache request in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " seconds..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/applovin/impl/sdk/d/ad;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    new-instance v4, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$3;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$3;-><init>(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    invoke-direct {v2, v3, v4}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    invoke-static {v3}, Lcom/applovin/impl/mediation/c/c;->a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/d/s$a;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;Lcom/applovin/impl/mediation/a/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;)V

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private c()Z
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->A:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/mediation/ads/MaxAdView;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->b:Lcom/applovin/mediation/ads/MaxAdView;

    return-object p0
.end method

.method private d()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    return-void
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/y;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->k:Lcom/applovin/impl/sdk/y;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->h:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$c;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    return p0
.end method

.method static synthetic k(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lcom/applovin/impl/sdk/d;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ah()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lcom/applovin/mediation/MaxAd;)V

    :cond_1d
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_21
    iput-boolean v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->p:Z

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2a

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->c()V

    return-void

    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getPlacement()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public loadAd()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Loading ad for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Unable to load new ad; ad is already destroyed"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    return-void

    :cond_3d
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->B:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->a()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load a new ad. An ad refresh has already been scheduled in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7d
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdRefresh()V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Refreshing for cached ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/a/b;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->g:Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->e:Lcom/applovin/impl/mediation/a/b;

    goto :goto_5f

    :cond_35
    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->c()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->n:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network due to viewability requirements not met for refresh request..."

    goto :goto_59

    :cond_46
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->o:Z

    goto :goto_5f

    :cond_53
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Refreshing ad from network..."

    :goto_59
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd()V

    :goto_5f
    return-void
.end method

.method public onLogVisibilityImpression()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->j:Lcom/applovin/impl/sdk/x;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/x;->a(Lcom/applovin/impl/mediation/a/b;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    invoke-direct {p0, v2, v0, v1}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lcom/applovin/impl/mediation/a/b;J)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->u:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->a()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_3c

    :cond_19
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/s;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view visible"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d;->g()V

    goto :goto_3c

    :cond_2e
    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Ad view hidden"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d;->f()V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setPublisherBackgroundColor(I)V
    .registers 4

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d:J

    return-void
.end method

.method public startAutoRefresh()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->e()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resumed auto-refresh with remaining time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopAutoRefresh()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->m:Lcom/applovin/impl/mediation/a/b;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lcom/applovin/impl/sdk/q;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing auto-refresh with remaining time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/d;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->i:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->d()V

    goto :goto_2f

    :cond_28
    iget-object v0, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v1, "Stopping auto-refresh has no effect until after the first ad has been loaded."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdView{adUnitId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", adListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lcom/applovin/mediation/MaxAdListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDestroyed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/ads/MaxAdViewImpl;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
