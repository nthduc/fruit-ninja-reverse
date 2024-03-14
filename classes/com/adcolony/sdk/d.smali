.class Lcom/adcolony/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyAdView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/d;)Ljava/util/HashMap;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->c(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/adcolony/sdk/x;)Z
    .registers 4

    .line 3
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyAdViewListener;

    if-nez v1, :cond_1d

    .line 8
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_1d
    new-instance p1, Lcom/adcolony/sdk/d$p;

    invoke-direct {p1, p0, v1}, Lcom/adcolony/sdk/d$p;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyAdViewListener;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 2
    iget-object p0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->i(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/adcolony/sdk/x;)Z
    .registers 10

    .line 3
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 4
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/adcolony/sdk/AdColonyAdViewListener;

    const/4 v0, 0x0

    if-nez v6, :cond_1e

    .line 9
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v7}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 14
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_25

    return v0

    .line 18
    :cond_25
    new-instance v0, Lcom/adcolony/sdk/d$k;

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/adcolony/sdk/d$k;-><init>(Lcom/adcolony/sdk/d;Landroid/content/Context;Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->g(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private c(Lcom/adcolony/sdk/x;)Z
    .registers 7

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 6
    :cond_8
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ad_session_id"

    .line 7
    invoke-static {v2, v3}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/adcolony/sdk/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, p1}, Lcom/adcolony/sdk/c;->j(Lcom/adcolony/sdk/x;)V

    .line 12
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "width"

    .line 15
    invoke-static {v2, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_41

    .line 16
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_3d

    .line 20
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 23
    :cond_3d
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    goto :goto_44

    .line 25
    :cond_41
    invoke-virtual {v4, v1}, Lcom/adcolony/sdk/c;->b(Z)V

    .line 28
    :goto_44
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "success"

    .line 29
    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 30
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return v1
.end method

.method static synthetic d(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->d(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private d(Lcom/adcolony/sdk/x;)Z
    .registers 4

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/c;

    if-nez v1, :cond_1d

    .line 8
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic e(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->k(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->j(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private f(Lcom/adcolony/sdk/x;)Z
    .registers 8

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    .line 3
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_44

    const/4 v3, 0x1

    if-eq v1, v3, :cond_44

    if-eqz v1, :cond_44

    const/4 v4, 0x6

    if-ne v1, v4, :cond_17

    goto :goto_44

    :cond_17
    const-string v1, "id"

    .line 12
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    const/4 v4, 0x0

    if-nez v1, :cond_2a

    move-object v5, v4

    goto :goto_2e

    .line 14
    :cond_2a
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v5

    :goto_2e
    if-nez v5, :cond_38

    .line 18
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 21
    :cond_38
    new-instance p1, Lcom/adcolony/sdk/d$n;

    invoke-direct {p1, p0, v5, v1}, Lcom/adcolony/sdk/d$n;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    .line 30
    invoke-virtual {v1, v4}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    return v3

    :cond_44
    :goto_44
    return v2
.end method

.method static synthetic g(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->f(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private g(Lcom/adcolony/sdk/x;)Z
    .registers 8

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 7
    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "has_audio"

    if-nez v0, :cond_25

    const/4 v0, 0x0

    .line 12
    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 13
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return v0

    .line 17
    :cond_25
    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-static {v3}, Lcom/adcolony/sdk/k0;->b(Landroid/media/AudioManager;)Z

    move-result v3

    .line 18
    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Landroid/media/AudioManager;)D

    move-result-wide v4

    .line 19
    invoke-static {v2, v1, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    const-string v0, "volume"

    .line 20
    invoke-static {v2, v0, v4, v5}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 21
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/x;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return v3
.end method

.method static synthetic h(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->l(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->b(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private i(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v1, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    .line 4
    :cond_16
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v2

    :goto_1a
    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 8
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 12
    :cond_25
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_2c

    return v3

    .line 16
    :cond_2c
    new-instance v0, Lcom/adcolony/sdk/d$l;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/adcolony/sdk/d$l;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;Lcom/adcolony/sdk/x;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic j(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/x;)Z
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/x;)Z

    move-result p0

    return p0
.end method

.method private j(Lcom/adcolony/sdk/x;)Z
    .registers 7

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_session_id"

    .line 4
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "view_id"

    .line 5
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/c;

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 15
    :cond_23
    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_48

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 22
    :cond_48
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method

.method private k(Lcom/adcolony/sdk/x;)Z
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ad_session_id"

    .line 3
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "view_id"

    .line 4
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/c;

    .line 7
    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    if-nez v2, :cond_31

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_31
    if-nez v3, :cond_48

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 19
    :cond_48
    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    const/4 p1, 0x1

    return p1
.end method

.method private l(Lcom/adcolony/sdk/x;)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 2
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 4
    iget-object v4, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/adcolony/sdk/AdColonyAdView;

    const-string v5, "orientation"

    const/4 v6, -0x1

    .line 6
    invoke-static {v0, v5, v6}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    const/4 v4, 0x1

    goto :goto_28

    :cond_27
    const/4 v4, 0x0

    :goto_28
    if-nez v3, :cond_34

    if-nez v4, :cond_34

    .line 11
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    .line 15
    :cond_34
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object p1

    .line 16
    invoke-static {p1, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v3, :cond_43

    .line 20
    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(I)V

    .line 21
    invoke-virtual {v3}, Lcom/adcolony/sdk/AdColonyInterstitial;->i()Z

    :cond_43
    return v5
.end method


# virtual methods
.method a()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .registers 4

    .line 56
    new-instance v0, Lcom/adcolony/sdk/d$o;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/d$o;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyAdView;

    if-eqz v0, :cond_1c

    .line 100
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdView;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 101
    :cond_1c
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p1, Lcom/adcolony/sdk/c;->z:Landroid/content/Context;

    :cond_28
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .registers 11

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/k0;->a()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/j;->n()F

    move-result v2

    const-string v3, "zone_id"

    .line 15
    invoke-static {v1, v3, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x1

    const-string v4, "type"

    .line 16
    invoke-static {v1, v4, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 17
    invoke-virtual {p3}, Lcom/adcolony/sdk/AdColonyAdSize;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v4, v4

    const-string v5, "width_pixels"

    invoke-static {v1, v5, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 18
    invoke-virtual {p3}, Lcom/adcolony/sdk/AdColonyAdSize;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    const-string v4, "height_pixels"

    invoke-static {v1, v4, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 19
    invoke-virtual {p3}, Lcom/adcolony/sdk/AdColonyAdSize;->getWidth()I

    move-result v2

    const-string v4, "width"

    invoke-static {v1, v4, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 20
    invoke-virtual {p3}, Lcom/adcolony/sdk/AdColonyAdSize;->getHeight()I

    move-result v2

    const-string v4, "height"

    invoke-static {v1, v4, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v2, "id"

    .line 21
    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    invoke-virtual {p2, p1}, Lcom/adcolony/sdk/AdColonyAdViewListener;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2, p3}, Lcom/adcolony/sdk/AdColonyAdViewListener;->a(Lcom/adcolony/sdk/AdColonyAdSize;)V

    if-eqz p4, :cond_61

    .line 27
    iget-object p1, p4, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_61

    const-string p3, "options"

    .line 28
    invoke-static {v1, p3, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 31
    :cond_61
    iget-object p1, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p1, Lcom/adcolony/sdk/x;

    const-string p2, "AdSession.on_request"

    invoke-direct {p1, p2, v3, v1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .registers 10

    .line 33
    invoke-static {}, Lcom/adcolony/sdk/k0;->a()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 36
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "zone_id"

    .line 37
    invoke-static {v2, v3, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v3, 0x1

    const-string v4, "fullscreen"

    .line 38
    invoke-static {v2, v4, v3}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 39
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/j;->r()I

    move-result v4

    const-string v5, "width"

    invoke-static {v2, v5, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 40
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->q()I

    move-result v1

    const-string v4, "height"

    invoke-static {v2, v4, v1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v1, "type"

    const/4 v4, 0x0

    .line 41
    invoke-static {v2, v1, v4}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v1, "id"

    .line 42
    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    new-instance v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {v1, v0, p2, p1}, Lcom/adcolony/sdk/AdColonyInterstitial;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_56

    .line 49
    iget-object p1, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    if-eqz p1, :cond_56

    .line 50
    invoke-virtual {v1, p3}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 51
    iget-object p1, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string p2, "options"

    invoke-static {v2, p2, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 55
    :cond_56
    new-instance p1, Lcom/adcolony/sdk/x;

    const-string p2, "AdSession.on_request"

    invoke-direct {p1, p2, v3, v2}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->d()V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 103
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Message \'"

    .line 104
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    const-string v0, "\' sent with invalid id: "

    .line 106
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 108
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-void
.end method

.method b()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyAdView;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method c()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyAdViewListener;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method d()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/c;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method e()V
    .registers 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    .line 8
    new-instance v0, Lcom/adcolony/sdk/d$q;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$q;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdContainer.create"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 20
    new-instance v0, Lcom/adcolony/sdk/d$r;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$r;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdContainer.destroy"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 32
    new-instance v0, Lcom/adcolony/sdk/d$s;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$s;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdContainer.move_view_to_index"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 39
    new-instance v0, Lcom/adcolony/sdk/d$t;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$t;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdContainer.move_view_to_front"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 46
    new-instance v0, Lcom/adcolony/sdk/d$u;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$u;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.finish_fullscreen_ad"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 53
    new-instance v0, Lcom/adcolony/sdk/d$v;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$v;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.start_fullscreen_ad"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 60
    new-instance v0, Lcom/adcolony/sdk/d$w;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$w;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.ad_view_available"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 67
    new-instance v0, Lcom/adcolony/sdk/d$a;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$a;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.ad_view_unavailable"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 74
    new-instance v0, Lcom/adcolony/sdk/d$b;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$b;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.expiring"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 81
    new-instance v0, Lcom/adcolony/sdk/d$c;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$c;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.audio_stopped"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 97
    new-instance v0, Lcom/adcolony/sdk/d$d;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$d;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.audio_started"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 113
    new-instance v0, Lcom/adcolony/sdk/d$e;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$e;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.interstitial_available"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 120
    new-instance v0, Lcom/adcolony/sdk/d$f;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$f;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.interstitial_unavailable"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 127
    new-instance v0, Lcom/adcolony/sdk/d$g;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$g;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.has_audio"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 134
    new-instance v0, Lcom/adcolony/sdk/d$h;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$h;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "WebView.prepare"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    .line 143
    new-instance v0, Lcom/adcolony/sdk/d$i;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/d$i;-><init>(Lcom/adcolony/sdk/d;)V

    const-string v1, "AdSession.expanded"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/z;)V

    return-void
.end method

.method e(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 144
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    .line 145
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 146
    invoke-static {v0, v2}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3d

    .line 150
    :cond_13
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_1f

    const/4 v2, 0x0

    goto :goto_23

    .line 151
    :cond_1f
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v2

    :goto_23
    const/4 v3, 0x0

    if-nez v2, :cond_2e

    .line 153
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 157
    :cond_2e
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result p1

    if-nez p1, :cond_35

    return v3

    .line 161
    :cond_35
    new-instance p1, Lcom/adcolony/sdk/d$j;

    invoke-direct {p1, p0, v0, v2}, Lcom/adcolony/sdk/d$j;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :goto_3d
    const/4 p1, 0x1

    return p1
.end method

.method h(Lcom/adcolony/sdk/x;)Z
    .registers 6

    .line 2
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v1, :cond_16

    const/4 v2, 0x0

    goto :goto_1a

    .line 4
    :cond_16
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v2

    :goto_1a
    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 7
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 11
    :cond_25
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result p1

    if-nez p1, :cond_2c

    return v3

    .line 15
    :cond_2c
    new-instance p1, Lcom/adcolony/sdk/d$m;

    invoke-direct {p1, p0, v1, v2}, Lcom/adcolony/sdk/d$m;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method
