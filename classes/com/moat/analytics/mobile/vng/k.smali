.class Lcom/moat/analytics/mobile/vng/k;
.super Lcom/moat/analytics/mobile/vng/MoatAnalytics;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/w$b;


# instance fields
.field a:Z

.field b:Z

.field c:Lcom/moat/analytics/mobile/vng/g;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Lcom/moat/analytics/mobile/vng/MoatOptions;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->a:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->b:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->e:Z

    return-void
.end method

.method private a(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V
    .registers 6

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->e:Z

    if-eqz v0, :cond_d

    const/4 p1, 0x3

    const-string p2, "Analytics"

    const-string v0, "Moat SDK has already been started."

    invoke-static {p1, p2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_d
    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/k;->g:Lcom/moat/analytics/mobile/vng/MoatOptions;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/w;->b()V

    if-eqz p2, :cond_53

    iget-boolean v0, p1, Lcom/moat/analytics/mobile/vng/MoatOptions;->loggingEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/s;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/k;->a:Z

    :cond_29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/k;->d:Ljava/lang/ref/WeakReference;

    iput-boolean v1, p0, Lcom/moat/analytics/mobile/vng/k;->e:Z

    iget-boolean v0, p1, Lcom/moat/analytics/mobile/vng/MoatOptions;->autoTrackGMAInterstitials:Z

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->b:Z

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/w;->a(Lcom/moat/analytics/mobile/vng/w$b;)V

    iget-boolean p1, p1, Lcom/moat/analytics/mobile/vng/MoatOptions;->disableAdIdCollection:Z

    if-nez p1, :cond_4b

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/s;->a(Landroid/content/Context;)V

    :cond_4b
    const-string p1, "[SUCCESS] "

    const-string p2, "Moat Analytics SDK Version 2.6.3 started"

    invoke-static {p1, p2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_53
    new-instance p1, Lcom/moat/analytics/mobile/vng/n;

    const-string p2, "Moat Analytics SDK didn\'t start, application was null"

    invoke-direct {p1, p2}, Lcom/moat/analytics/mobile/vng/n;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/k;->c:Lcom/moat/analytics/mobile/vng/g;

    if-nez v0, :cond_49

    new-instance v0, Lcom/moat/analytics/mobile/vng/g;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/moat/analytics/mobile/vng/g$a;->a:Lcom/moat/analytics/mobile/vng/g$a;

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/g;-><init>(Landroid/content/Context;Lcom/moat/analytics/mobile/vng/g$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/k;->c:Lcom/moat/analytics/mobile/vng/g;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/k;->c:Lcom/moat/analytics/mobile/vng/g;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/vng/g;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparing native display tracking with partner code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Analytics"

    invoke-static {v0, v2, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prepared for native display tracking with partner code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/k;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SUCCESS] "

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/k;->e:Z

    return v0
.end method

.method public b()V
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/vng/n;->a()V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/k;->f:Ljava/lang/String;

    if-eqz v0, :cond_f

    :try_start_7
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/k;->d()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :cond_f
    :goto_f
    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/k;->f:Ljava/lang/String;

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object p1

    iget-object p1, p1, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v0, Lcom/moat/analytics/mobile/vng/w$d;->a:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/k;->d()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_15

    :catch_11
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_15
    return-void
.end method

.method public start(Landroid/app/Application;)V
    .registers 3

    new-instance v0, Lcom/moat/analytics/mobile/vng/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/MoatOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/moat/analytics/mobile/vng/k;->start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V
    .registers 3

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/k;->a(Lcom/moat/analytics/mobile/vng/MoatOptions;Landroid/app/Application;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/Exception;)V

    :goto_8
    return-void
.end method
