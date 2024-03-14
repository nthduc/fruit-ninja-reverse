.class public Lcom/applovin/impl/mediation/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/j$b;,
        Lcom/applovin/impl/mediation/j$a;,
        Lcom/applovin/impl/mediation/j$d;,
        Lcom/applovin/impl/mediation/j$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private final c:Lcom/applovin/impl/sdk/q;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/applovin/impl/mediation/a/e;

.field private final f:Ljava/lang/String;

.field private g:Lcom/applovin/mediation/adapter/MaxAdapter;

.field private h:Ljava/lang/String;

.field private i:Lcom/applovin/impl/mediation/a/a;

.field private j:Landroid/view/View;

.field private final k:Lcom/applovin/impl/mediation/j$a;

.field private l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field private final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/a/e;Lcom/applovin/mediation/adapter/MaxAdapter;Lcom/applovin/impl/sdk/j;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->a:Landroid/os/Handler;

    new-instance v0, Lcom/applovin/impl/mediation/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/mediation/j$a;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/impl/mediation/j$1;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_60

    if-eqz p2, :cond_58

    if-eqz p3, :cond_50

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/e;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/mediation/j;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/impl/mediation/j;->c:Lcom/applovin/impl/sdk/q;

    iput-object p1, p0, Lcom/applovin/impl/mediation/j;->e:Lcom/applovin/impl/mediation/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    return-void

    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/j;->j:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/e;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->e:Lcom/applovin/impl/mediation/a/e;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/MaxAdapter;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/j;Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->c:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as disabled due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediationAdapterWrapper"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V
    .registers 6

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->a(Lcom/applovin/impl/mediation/j$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->b(Lcom/applovin/impl/mediation/j$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->b(Lcom/applovin/impl/mediation/j$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/mediation/j$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/j$5;-><init>(Lcom/applovin/impl/mediation/j;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->e:Lcom/applovin/impl/mediation/a/e;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/e;->H()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    :cond_13
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_16
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->b:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/j;Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/j;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V
    .registers 6

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->a(Lcom/applovin/impl/mediation/j$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->b(Lcom/applovin/impl/mediation/j$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Lcom/applovin/impl/mediation/j$b;->b(Lcom/applovin/impl/mediation/j$b;)Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->c:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/j;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/mediation/j;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->i:Lcom/applovin/impl/mediation/a/a;

    return-object p0
.end method

.method static synthetic j(Lcom/applovin/impl/mediation/j;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/mediation/j;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/applovin/impl/mediation/j;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/j;->a:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->j:Landroid/view/View;

    return-object v0
.end method

.method a(Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;)V
    .registers 10

    if-eqz p1, :cond_146

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->c()Lcom/applovin/impl/mediation/j;

    move-result-object v0

    const-string v1, "ad_show"

    if-nez v0, :cond_12

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    const/16 p2, -0x1451

    invoke-static {p1, v1, p2}, Lcom/applovin/impl/mediation/j$a;->b(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->c()Lcom/applovin/impl/mediation/j;

    move-result-object v0

    if-ne v0, p0, :cond_13e

    if-eqz p2, :cond_136

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v2, "MediationAdapterWrapper"

    const-string v3, "Mediation adapter \'"

    if-nez v0, :cond_47

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Showing ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    const/16 p2, -0x13ef

    invoke-static {p1, v1, p2}, Lcom/applovin/impl/mediation/j$a;->b(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_47
    invoke-virtual {p0}, Lcom/applovin/impl/mediation/j;->e()Z

    move-result v0

    if-eqz v0, :cond_11a

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    const/16 v4, -0x13f0

    const-string v5, "showFullscreenAd"

    if-ne v0, v1, :cond_84

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz v0, :cond_65

    new-instance v0, Lcom/applovin/impl/mediation/j$11;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/j$11;-><init>(Lcom/applovin/impl/mediation/j;Landroid/app/Activity;)V

    goto :goto_ca

    :cond_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not an interstitial adapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v5, v4}, Lcom/applovin/impl/mediation/j$a;->b(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_84
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    const-string v6, "\' is not an incentivized adapter."

    if-ne v0, v1, :cond_b7

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz v0, :cond_9a

    new-instance v0, Lcom/applovin/impl/mediation/j$12;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/j$12;-><init>(Lcom/applovin/impl/mediation/j;Landroid/app/Activity;)V

    goto :goto_ca

    :cond_9a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v5, v4}, Lcom/applovin/impl/mediation/j$a;->b(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_b7
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_f2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, v0, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    if-eqz v0, :cond_d5

    new-instance v0, Lcom/applovin/impl/mediation/j$13;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/mediation/j$13;-><init>(Lcom/applovin/impl/mediation/j;Landroid/app/Activity;)V

    :goto_ca
    new-instance p2, Lcom/applovin/impl/mediation/j$2;

    invoke-direct {p2, p0, v0, p1}, Lcom/applovin/impl/mediation/j$2;-><init>(Lcom/applovin/impl/mediation/j;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/a/a;)V

    const-string p1, "ad_render"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_d5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v5, v4}, Lcom/applovin/impl/mediation/j$a;->b(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_f2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a supported ad format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not have an ad loaded. Please load an ad first"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mediated ad belongs to a different adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_146
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/mediation/j$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/mediation/j$1;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;)V

    const-string p1, "initialize"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lcom/applovin/impl/mediation/a/g;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .registers 12

    if-eqz p4, :cond_7b

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "The adapter ("

    if-nez v0, :cond_43

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mediation adapter \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Signal collection ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediationAdapterWrapper"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is disabled"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    return-void

    :cond_43
    new-instance v5, Lcom/applovin/impl/mediation/j$b;

    invoke-direct {v5, p2, p4}, Lcom/applovin/impl/mediation/j$b;-><init>(Lcom/applovin/impl/mediation/a/g;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    iget-object p4, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, p4, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    if-eqz v0, :cond_61

    move-object v2, p4

    check-cast v2, Lcom/applovin/mediation/adapter/MaxSignalProvider;

    new-instance p4, Lcom/applovin/impl/mediation/j$3;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/mediation/j$3;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/MaxSignalProvider;Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/impl/mediation/j$b;Lcom/applovin/impl/mediation/a/g;)V

    const-string p1, "collect_signal"

    invoke-direct {p0, p1, p4}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_7a

    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") does not support signal collection"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lcom/applovin/impl/mediation/j;->b(Ljava/lang/String;Lcom/applovin/impl/mediation/j$b;)V

    :goto_7a
    return-void

    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Lcom/applovin/impl/mediation/a/a;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/j;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j;->i:Lcom/applovin/impl/mediation/a/a;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
    .registers 10

    if-eqz p3, :cond_139

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "Mediation adapter \'"

    const-string v2, "MediationAdapterWrapper"

    if-nez v0, :cond_2d

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' was disabled due to earlier failures. Loading ads with this adapter is disabled."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, -0x13ef

    invoke-interface {p5, p1, p2}, Lcom/applovin/impl/mediation/d;->onAdLoadFailed(Ljava/lang/String;I)V

    return-void

    :cond_2d
    iput-object p2, p0, Lcom/applovin/impl/mediation/j;->l:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, p5}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Lcom/applovin/impl/mediation/d;)V

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    const/16 v0, -0x13f0

    const-string v3, "loadAd"

    if-ne p1, p5, :cond_6c

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;

    if-eqz p1, :cond_4d

    new-instance p1, Lcom/applovin/impl/mediation/j$6;

    invoke-direct {p1, p0, p2, p4}, Lcom/applovin/impl/mediation/j$6;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto/16 :goto_e7

    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not an interstitial adapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v3, v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_6c
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_9f

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    if-eqz p1, :cond_80

    new-instance p1, Lcom/applovin/impl/mediation/j$7;

    invoke-direct {p1, p0, p2, p4}, Lcom/applovin/impl/mediation/j$7;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_e7

    :cond_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a rewarded adapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v3, v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_9f
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_d2

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    if-eqz p1, :cond_b3

    new-instance p1, Lcom/applovin/impl/mediation/j$8;

    invoke-direct {p1, p0, p2, p4}, Lcom/applovin/impl/mediation/j$8;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V

    goto :goto_e7

    :cond_b3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not a rewarded interstitial adapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v3, v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_d2
    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/mediation/c/c;->d(Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result p1

    if-eqz p1, :cond_111

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    instance-of p1, p1, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    if-eqz p1, :cond_f2

    new-instance p1, Lcom/applovin/impl/mediation/j$9;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/applovin/impl/mediation/j$9;-><init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;)V

    :goto_e7
    new-instance p2, Lcom/applovin/impl/mediation/j$10;

    invoke-direct {p2, p0, p1, p3}, Lcom/applovin/impl/mediation/j$10;-><init>(Lcom/applovin/impl/mediation/j;Ljava/lang/Runnable;Lcom/applovin/impl/mediation/a/a;)V

    const-string p1, "ad_load"

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_f2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is not an adview-based adapter."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {p1, v3, v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;Ljava/lang/String;I)V

    return-void

    :cond_111
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a supported ad format"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_139
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/applovin/impl/mediation/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->k:Lcom/applovin/impl/mediation/j$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;)Lcom/applovin/impl/mediation/d;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_2c

    :try_start_4
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/j;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get adapter\'s SDK version, marking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediationAdapterWrapper"

    invoke-virtual {v1, v3, v2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "fail_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;)V

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/j;->g:Lcom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_2c

    :try_start_4
    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/j;->c:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get adapter version, marking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediationAdapterWrapper"

    invoke-virtual {v1, v3, v2, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "fail_version"

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;)V

    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method

.method h()V
    .registers 3

    new-instance v0, Lcom/applovin/impl/mediation/j$4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/j$4;-><init>(Lcom/applovin/impl/mediation/j;)V

    const-string v1, "destroy"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterWrapper{adapterTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
