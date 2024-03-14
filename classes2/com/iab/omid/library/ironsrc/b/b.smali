.class public Lcom/iab/omid/library/ironsrc/b/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/ironsrc/b/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/iab/omid/library/ironsrc/b/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/iab/omid/library/ironsrc/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/ironsrc/b/b;

    invoke-direct {v0}, Lcom/iab/omid/library/ironsrc/b/b;-><init>()V

    sput-object v0, Lcom/iab/omid/library/ironsrc/b/b;->a:Lcom/iab/omid/library/ironsrc/b/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/ironsrc/b/b;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/ironsrc/b/b;->a:Lcom/iab/omid/library/ironsrc/b/b;

    return-object v0
.end method

.method static synthetic a(Lcom/iab/omid/library/ironsrc/b/b;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/iab/omid/library/ironsrc/b/b;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->e:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Lcom/iab/omid/library/ironsrc/b/b;->e:Z

    iget-boolean p1, p0, Lcom/iab/omid/library/ironsrc/b/b;->d:Z

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/iab/omid/library/ironsrc/b/b;->g()V

    iget-object p1, p0, Lcom/iab/omid/library/ironsrc/b/b;->f:Lcom/iab/omid/library/ironsrc/b/b$a;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/b/b;->d()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/iab/omid/library/ironsrc/b/b$a;->a(Z)V

    :cond_18
    return-void
.end method

.method private e()V
    .registers 4

    new-instance v0, Lcom/iab/omid/library/ironsrc/b/b$1;

    invoke-direct {v0, p0}, Lcom/iab/omid/library/ironsrc/b/b$1;-><init>(Lcom/iab/omid/library/ironsrc/b/b;)V

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->c:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/b/b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/iab/omid/library/ironsrc/b/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/iab/omid/library/ironsrc/b/b;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_e

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->c:Landroid/content/BroadcastReceiver;

    :cond_e
    return-void
.end method

.method private g()V
    .registers 4

    iget-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/a;->a()Lcom/iab/omid/library/ironsrc/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/ironsrc/b/a;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iab/omid/library/ironsrc/adsession/a;

    invoke-virtual {v2}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionStatePublisher()Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Z)V

    goto :goto_10

    :cond_24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/b/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/b/b$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/b/b;->f:Lcom/iab/omid/library/ironsrc/b/b$a;

    return-void
.end method

.method public b()V
    .registers 2

    invoke-direct {p0}, Lcom/iab/omid/library/ironsrc/b/b;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->d:Z

    invoke-direct {p0}, Lcom/iab/omid/library/ironsrc/b/b;->g()V

    return-void
.end method

.method public c()V
    .registers 2

    invoke-direct {p0}, Lcom/iab/omid/library/ironsrc/b/b;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->d:Z

    iput-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->f:Lcom/iab/omid/library/ironsrc/b/b$a;

    return-void
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/ironsrc/b/b;->e:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
