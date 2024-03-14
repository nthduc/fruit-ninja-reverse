.class public Lcom/applovin/impl/sdk/d/r;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 3

    const-string v0, "TaskInitializeSdk"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private a()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/h;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ai()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/h;->a(Landroid/app/Activity;)V

    goto :goto_3f

    :cond_1f
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/ad;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    const/4 v3, 0x1

    new-instance v4, Lcom/applovin/impl/sdk/d/r$2;

    invoke-direct {v4, p0}, Lcom/applovin/impl/sdk/d/r$2;-><init>(Lcom/applovin/impl/sdk/d/r;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;ZLjava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    :goto_3f
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/b/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_21

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/ad/d;)V

    :cond_21
    return-void
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/d/b;-><init>(Lcom/applovin/impl/sdk/j;)V

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    return-void
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->V()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/s;->a()V

    return-void
.end method

.method private h()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->i()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->j()V

    return-void
.end method

.method private i()V
    .registers 7

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aZ:Lcom/applovin/impl/sdk/b/b;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->aY:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_53

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    if-eqz v2, :cond_1b

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v4, v5}, Lcom/applovin/impl/sdk/ad/d;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/j;->U()Lcom/applovin/impl/sdk/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/applovin/impl/sdk/c;->f(Lcom/applovin/impl/sdk/ad/d;)V

    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/b/b;)V

    const/4 v3, 0x1

    goto :goto_1b

    :cond_53
    if-nez v3, :cond_58

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/b/b;)V

    :cond_58
    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ba:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->V()Lcom/applovin/impl/sdk/s;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/s;->f(Lcom/applovin/impl/sdk/ad/d;)V

    :cond_1f
    return-void
.end method

.method private k()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->e()Z

    move-result v0

    if-nez v0, :cond_118

    new-instance v0, Lcom/applovin/impl/sdk/utils/k;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/utils/k;-><init>()V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/k;->a()Lcom/applovin/impl/sdk/utils/k;

    move-result-object v1

    const-string v2, "AppLovin SDK"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string v2, "Version"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Plugin Version"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v1

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SafeDK Version"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->E()Lcom/applovin/impl/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object v3

    iget-object v3, v3, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (use this for test devices)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_61

    :cond_5f
    const-string v2, "<Enable verbose logging to see the GAID to use for test devices - https://monetization-support.applovin.com/hc/en-us/articles/236114328-How-can-I-expose-verbose-logging-for-the-SDK>"

    :goto_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OS"

    invoke-virtual {v0, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v3

    const-string v4, "GAID"

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SDK Key"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->b()Lcom/applovin/impl/sdk/k$d;

    move-result-object v2

    iget-object v3, v2, Lcom/applovin/impl/sdk/k$d;->d:Ljava/lang/String;

    const-string v4, "Model"

    invoke-virtual {v0, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v3

    iget-object v4, v2, Lcom/applovin/impl/sdk/k$d;->k:Ljava/util/Locale;

    const-string v5, "Locale"

    invoke-virtual {v3, v5, v4}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v3

    iget-boolean v2, v2, Lcom/applovin/impl/sdk/k$d;->A:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "Emulator"

    invoke-virtual {v3, v4, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/r;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Application ID"

    invoke-virtual {v0, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Test Mode On"

    invoke-virtual {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "Verbose Logging On"

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mediation Provider"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->h:Lcom/applovin/impl/sdk/b/d;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/b/d;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TG"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;

    const-string v1, "===Privacy States===\nPlease review AppLovin MAX documentation to be compliant with regional privacy policies."

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/r;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/k;->a()Lcom/applovin/impl/sdk/utils/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/k;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    const-string v0, "ms"

    const-string v1, " in "

    const-string v2, "succeeded"

    const-string v3, "failed"

    const-string v4, " initialization "

    const-string v5, "AppLovin SDK "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initializing AppLovin SDK "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)V

    :try_start_2b
    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/c/h;->d()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v8

    sget-object v9, Lcom/applovin/impl/sdk/c/g;->b:Lcom/applovin/impl/sdk/c/g;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/c/h;->c(Lcom/applovin/impl/sdk/c/g;)V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/o;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/r;->f()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/o;->a(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/o;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/r;->f()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/o;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->c()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->h()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->a()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->Y()Lcom/applovin/impl/sdk/c/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/c/c;->a()V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->b()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->f()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->ae()Lcom/applovin/impl/sdk/utils/n;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/utils/n;->a()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Z)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/r;->k()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/network/e;->a()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->q()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v8

    check-cast v8, Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/EventServiceImpl;->maybeTrackAppOpenEvent()V

    invoke-static {}, Lcom/applovin/impl/adview/c;->a()V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v8}, Lcom/applovin/impl/sdk/j;->A()Lcom/applovin/impl/mediation/debugger/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/applovin/impl/mediation/debugger/a;->a()Z

    move-result v8

    if-eqz v8, :cond_bc

    new-instance v8, Lcom/applovin/impl/sdk/d/r$1;

    invoke-direct {v8, p0}, Lcom/applovin/impl/sdk/d/r$1;-><init>(Lcom/applovin/impl/sdk/d/r;)V

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_bc} :catch_fa
    .catchall {:try_start_2b .. :try_end_bc} :catchall_f8

    :cond_bc
    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v9, Lcom/applovin/impl/sdk/b/b;->ao:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_df

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v9, Lcom/applovin/impl/sdk/b/b;->ap:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v10, v8, v9}, Lcom/applovin/impl/sdk/j;->a(J)V

    :cond_df
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v4

    if-eqz v4, :cond_142

    goto :goto_143

    :catchall_f8
    move-exception v8

    goto :goto_15c

    :catch_fa
    move-exception v8

    :try_start_fb
    const-string v9, "Unable to initialize SDK."

    invoke-virtual {p0, v9, v8}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Z)V
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_f8

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v9, Lcom/applovin/impl/sdk/b/b;->ao:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_129

    iget-object v8, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v9, Lcom/applovin/impl/sdk/b/b;->ap:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v10, v8, v9}, Lcom/applovin/impl/sdk/j;->a(J)V

    :cond_129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v4

    if-eqz v4, :cond_142

    goto :goto_143

    :cond_142
    move-object v2, v3

    :goto_143
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)V

    return-void

    :goto_15c
    iget-object v9, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v10, Lcom/applovin/impl/sdk/b/b;->ao:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_17f

    iget-object v9, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    sget-object v10, Lcom/applovin/impl/sdk/b/b;->ap:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v11, v9, v10}, Lcom/applovin/impl/sdk/j;->a(J)V

    :cond_17f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/r;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v4

    if-eqz v4, :cond_198

    goto :goto_199

    :cond_198
    move-object v2, v3

    :goto_199
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/r;->a(Ljava/lang/String;)V

    throw v8
.end method
