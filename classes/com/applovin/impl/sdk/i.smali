.class public Lcom/applovin/impl/sdk/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/h$a;
.implements Lcom/applovin/sdk/AppLovinWebViewActivity$EventListener;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/applovin/sdk/AppLovinWebViewActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Lcom/applovin/impl/sdk/j;

.field private final d:Lcom/applovin/impl/sdk/q;

.field private e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

.field private f:Lcom/applovin/impl/sdk/h;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/applovin/impl/sdk/utils/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->g:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->d:Lcom/applovin/impl/sdk/q;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->H()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->H()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->g:Ljava/lang/ref/WeakReference;

    :cond_24
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/i$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/i$1;-><init>(Lcom/applovin/impl/sdk/i;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    new-instance v0, Lcom/applovin/impl/sdk/h;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/h;-><init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/j;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/i;->f:Lcom/applovin/impl/sdk/h;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/utils/a;)Lcom/applovin/impl/sdk/utils/a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->h:Lcom/applovin/impl/sdk/utils/a;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/i;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 1

    sput-object p0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(ZJ)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/impl/sdk/i;->f()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2, p3}, Lcom/applovin/impl/sdk/i;->a(J)V

    :cond_8
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/i;Lcom/applovin/impl/sdk/j;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/i;->a(Lcom/applovin/impl/sdk/j;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/applovin/impl/sdk/j;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->c()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p1, "Consent dialog already showing"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p1, "No internet available, skip showing of consent dialog"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->ah:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "ConsentDialogManager"

    if-nez v0, :cond_37

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->d:Lcom/applovin/impl/sdk/q;

    const-string v0, "Blocked publisher from showing consent dialog"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_37
    sget-object v0, Lcom/applovin/impl/sdk/b/b;->ai:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->d:Lcom/applovin/impl/sdk/q;

    const-string v0, "AdServer returned empty consent dialog URL"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4d
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/utils/a;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->h:Lcom/applovin/impl/sdk/utils/a;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->d:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/i;)Lcom/applovin/impl/sdk/h;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/i;->f:Lcom/applovin/impl/sdk/h;

    return-object p0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/ref/WeakReference;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/i;->h:Lcom/applovin/impl/sdk/utils/a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/a;->b(Lcom/applovin/impl/sdk/utils/a;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/sdk/AppLovinWebViewActivity;

    const/4 v1, 0x0

    sput-object v1, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinWebViewActivity;->finish()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;->onDismiss()V

    iput-object v1, p0, Lcom/applovin/impl/sdk/i;->e:Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;

    :cond_2a
    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->ak:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v3, Lcom/applovin/impl/sdk/i$4;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/sdk/i$4;-><init>(Lcom/applovin/impl/sdk/i;Landroid/app/Activity;)V

    invoke-static {v3, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_26
    return-void
.end method

.method public a(J)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/i$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/i$3;-><init>(Lcom/applovin/impl/sdk/i;J)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;)V
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/i$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/sdk/i$2;-><init>(Lcom/applovin/impl/sdk/i;Lcom/applovin/sdk/AppLovinUserService$OnConsentDialogDismissListener;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method c()Z
    .registers 2

    sget-object v0, Lcom/applovin/impl/sdk/i;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public onReceivedEvent(Ljava/lang/String;)V
    .registers 4

    const-string v0, "accepted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    invoke-direct {p0}, Lcom/applovin/impl/sdk/i;->f()V

    goto :goto_7e

    :cond_16
    const-string v0, "rejected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->al:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aq:Lcom/applovin/impl/sdk/b/b;

    :goto_3a
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/i;->a(ZJ)V

    goto :goto_7e

    :cond_48
    const-string v0, "closed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->am:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ar:Lcom/applovin/impl/sdk/b/b;

    goto :goto_3a

    :cond_63
    const-string v0, "dismissed_via_back_button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->an:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/sdk/i;->c:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->as:Lcom/applovin/impl/sdk/b/b;

    goto :goto_3a

    :cond_7e
    :goto_7e
    return-void
.end method
