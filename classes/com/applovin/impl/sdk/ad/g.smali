.class public abstract Lcom/applovin/impl/sdk/ad/g;
.super Lcom/applovin/impl/sdk/AppLovinAdBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/ad/g$c;,
        Lcom/applovin/impl/sdk/ad/g$a;,
        Lcom/applovin/impl/sdk/ad/g$b;,
        Lcom/applovin/impl/sdk/ad/g$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/applovin/impl/sdk/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/applovin/impl/sdk/ad/g$c;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdBase;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/e;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/g;->a:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private a(Landroid/graphics/PointF;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "click_tracking_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/g;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/g;->b(Landroid/graphics/PointF;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->au()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->w()Z

    move-result v6

    iget-object v7, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static/range {v1 .. v7}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "video_end_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "{CLCODE}"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    return-object v0
.end method

.method private b(Landroid/graphics/PointF;Z)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const-string v1, "click_tracking_url"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad/g;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object p1

    if-eqz v1, :cond_11

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method private c(Z)Lcom/applovin/impl/adview/h$a;
    .registers 2

    if-eqz p1, :cond_5

    sget-object p1, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    goto :goto_7

    :cond_5
    sget-object p1, Lcom/applovin/impl/adview/h$a;->a:Lcom/applovin/impl/adview/h$a;

    :goto_7
    return-object p1
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private c(Landroid/graphics/PointF;Z)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/g;->a(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{CLCODE}"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{CLICK_X}"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{CLICK_Y}"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "{SCREEN_WIDTH}"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{SCREEN_HEIGHT}"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{IS_VIDEO_CLICK}"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/sdk/ad/g;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method


# virtual methods
.method public A()Lcom/applovin/impl/adview/s;
    .registers 4

    const-string v0, "video_button_properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/s;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/adview/s;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    return-object v1
.end method

.method public B()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "video_clickable"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "lock_current_orientation"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public D()I
    .registers 3

    const-string v0, "countdown_length"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public E()I
    .registers 4

    const-string v0, "#C8FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "countdown_color"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :cond_17
    return v0
.end method

.method public F()I
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, -0x1000000

    goto :goto_b

    :cond_9
    const/high16 v0, -0x45000000    # -0.001953125f

    :goto_b
    const/4 v1, 0x0

    const-string v2, "graphic_background_color"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :cond_1c
    return v0
.end method

.method public G()Lcom/applovin/impl/sdk/ad/g$a;
    .registers 3

    const-string v0, "poststitial_dismiss_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$a;->b:Lcom/applovin/impl/sdk/ad/g$a;

    return-object v0

    :cond_18
    const-string v1, "no_dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$a;->c:Lcom/applovin/impl/sdk/ad/g$a;

    return-object v0

    :cond_23
    sget-object v0, Lcom/applovin/impl/sdk/ad/g$a;->a:Lcom/applovin/impl/sdk/ad/g$a;

    return-object v0
.end method

.method public H()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "resource_cache_prefix"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bE:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 3

    const-string v0, "cache_prefix"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public J()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "daome"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public K()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "utpfc"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public L()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sscomt"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public M()Ljava/lang/String;
    .registers 3

    const-string v0, "event_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public N()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "progress_bar_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public O()I
    .registers 3

    const-string v0, "progress_bar_color"

    const-string v1, "#C8FFFFFF"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public P()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/r;->a(Lorg/json/JSONObject;)I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public Q()I
    .registers 3

    const-string v0, "poststitial_shown_forward_delay_millis"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public R()I
    .registers 3

    const-string v0, "poststitial_dismiss_forward_delay_millis"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public S()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "should_apply_mute_setting_to_poststitial"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public T()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "should_forward_close_button_tapped_to_poststitial"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public U()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vkuv"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public V()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "forward_lifecycle_events_to_webview"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public W()Lcom/applovin/impl/sdk/ad/g$c;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->j:Lcom/applovin/impl/sdk/ad/g$c;

    if-nez v0, :cond_c

    new-instance v0, Lcom/applovin/impl/sdk/ad/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/ad/g$c;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/impl/sdk/ad/g$1;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->j:Lcom/applovin/impl/sdk/ad/g$c;

    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->j:Lcom/applovin/impl/sdk/ad/g$c;

    return-object v0
.end method

.method public X()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cr:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "close_button_size"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Y()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cs:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "close_button_top_margin"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Z()I
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cq:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "close_button_horizontal_margin"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected a(I)Lcom/applovin/impl/adview/h$a;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    sget-object p1, Lcom/applovin/impl/adview/h$a;->b:Lcom/applovin/impl/adview/h$a;

    return-object p1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/applovin/impl/adview/h$a;->c:Lcom/applovin/impl/adview/h$a;

    return-object p1

    :cond_c
    sget-object p1, Lcom/applovin/impl/adview/h$a;->a:Lcom/applovin/impl/adview/h$a;

    return-object p1
.end method

.method public a(Landroid/graphics/PointF;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/ad/g;->a(Landroid/graphics/PointF;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()V
.end method

.method public a(Lcom/applovin/impl/sdk/a/c;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_f

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_resources_cached"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    :try_start_e
    throw p1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_f} :catch_f

    :catch_f
    :goto_f
    return-void
.end method

.method public aA()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "wlh"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public aB()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ibbdfs"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aC()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ibbdfc"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aD()Landroid/net/Uri;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "mute_image"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_11
    return-object v0
.end method

.method public aE()Landroid/net/Uri;
    .registers 3

    const-string v0, "unmute_image"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return-object v0
.end method

.method public aF()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public aG()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public aH()Lcom/applovin/impl/sdk/a/c;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/a/c;

    return-object v0
.end method

.method public aI()Lcom/applovin/impl/sdk/ad/g$d;
    .registers 3

    const-string v0, "video_gravity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resize"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$d;->c:Lcom/applovin/impl/sdk/ad/g$d;

    return-object v0

    :cond_12
    const-string v1, "resize_aspect_fill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$d;->b:Lcom/applovin/impl/sdk/ad/g$d;

    return-object v0

    :cond_1d
    sget-object v0, Lcom/applovin/impl/sdk/ad/g$d;->a:Lcom/applovin/impl/sdk/ad/g$d;

    return-object v0
.end method

.method public aa()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cp:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "lhs_close_button"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ab()Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->cH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "lhs_skip_button"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ac()J
    .registers 8

    const-wide/16 v0, -0x1

    const-string v2, "report_reward_duration"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_14

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method public ad()I
    .registers 3

    const-string v0, "report_reward_percent"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ae()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "report_reward_percent_include_close_delay"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public af()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public ag()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "show_nia"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ah()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ai()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_message"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aj()Ljava/lang/String;
    .registers 3

    const-string v0, "nia_button_title"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ak()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "avoms"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public al()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/ad/g;->e:Z

    return v0
.end method

.method public am()Z
    .registers 3

    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->AUTO_INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "show_rewarded_interstitial_overlay_alert"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public an()Ljava/lang/String;
    .registers 3

    const-string v0, "text_rewarded_inter_alert_title"

    const-string v1, "Watch a video to earn a reward!"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .registers 3

    const-string v0, "text_rewarded_inter_alert_body"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ap()Ljava/lang/String;
    .registers 3

    const-string v0, "text_rewarded_inter_alert_ok_action"

    const-string v1, "OK!"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->f:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "video_end_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ad/g;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->f:Ljava/util/List;

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_20

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->f:Ljava/util/List;

    return-object v0

    :catchall_20
    move-exception v1

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public ar()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->g:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "ad_closed_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->g:Ljava/util/List;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1d

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->g:Ljava/util/List;

    return-object v0

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public as()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->h:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "app_killed_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->h:Ljava/util/List;

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1d

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->h:Ljava/util/List;

    return-object v0

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public at()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "{SOC}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->al()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    const-string v3, "imp_urls"

    iget-object v4, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->getClCode()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->au()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->w()Z

    move-result v9

    iget-object v10, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static/range {v3 .. v10}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->i:Ljava/util/List;

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_33

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->i:Ljava/util/List;

    return-object v0

    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public au()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "send_webview_http_headers"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/applovin/impl/adview/c;->getHttpHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_19
    const-string v2, "use_webview_ua_for_postbacks"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/applovin/impl/adview/c;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    return-object v0
.end method

.method public av()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "playback_requires_user_action"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public aw()Ljava/lang/String;
    .registers 3

    const-string v0, "base_url"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    return-object v0
.end method

.method public ax()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "web_contents_debugging_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public ay()Lcom/applovin/impl/adview/v;
    .registers 4

    const/4 v0, 0x0

    const-string v1, "web_view_settings"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v0, Lcom/applovin/impl/adview/v;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/v;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    :cond_10
    return-object v0
.end method

.method public az()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "wls"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/PointF;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "video_click_tracking_urls"

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/applovin/impl/sdk/ad/g;->c(Landroid/graphics/PointF;Z)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->au()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->w()Z

    move-result v6

    iget-object v7, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static/range {v1 .. v7}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_27

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-direct {p0, p1, v8}, Lcom/applovin/impl/sdk/ad/g;->a(Landroid/graphics/PointF;Z)Ljava/util/List;

    move-result-object v1

    :cond_26
    return-object v1

    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public b(Landroid/net/Uri;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/ad/g;->e:Z

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public c(Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    const-string v2, "mute_image"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public d(Landroid/net/Uri;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/g;->adObject:Lorg/json/JSONObject;

    const-string v2, "unmute_image"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, p1, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lcom/applovin/impl/sdk/j;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public d()Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke isVideoStream() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public f()Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getVideoUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getClickDestinationUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Landroid/net/Uri;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getVideoClickDestinationUri() from base ad class"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fs_2"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public o()Lcom/applovin/impl/sdk/ad/g$b;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->a:Lcom/applovin/impl/sdk/ad/g$b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_target"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_PORTRAIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->b:Lcom/applovin/impl/sdk/ad/g$b;

    return-object v0

    :cond_1d
    const-string v1, "ACTIVITY_LANDSCAPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->c:Lcom/applovin/impl/sdk/ad/g$b;

    return-object v0

    :cond_28
    sget-object v0, Lcom/applovin/impl/sdk/ad/g$b;->a:Lcom/applovin/impl/sdk/ad/g$b;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    const-string v0, "dsp_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()J
    .registers 4

    const-string v0, "close_delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/ad/g;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .registers 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "close_delay_max_buffering_time_seconds"

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/ad/g;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .registers 8

    const-wide/16 v0, 0x0

    const-string v2, "close_delay_graphic"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->n()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1c

    const-wide/16 v4, -0x2

    cmp-long v6, v2, v4

    if-nez v6, :cond_1b

    goto :goto_1c

    :cond_1b
    move-wide v0, v2

    :cond_1c
    :goto_1c
    return-wide v0

    :cond_1d
    return-wide v2
.end method

.method public t()Lcom/applovin/impl/adview/h$a;
    .registers 3

    const/4 v0, -0x1

    const-string v1, "close_style"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_12

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->hasVideoUrl()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ad/g;->c(Z)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    goto :goto_16

    :cond_12
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/ad/g;->a(I)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    :goto_16
    return-object v0
.end method

.method public u()Lcom/applovin/impl/adview/h$a;
    .registers 3

    const/4 v0, -0x1

    const-string v1, "skip_style"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getIntFromAdObject(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->t()Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    goto :goto_12

    :cond_e
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/ad/g;->a(I)Lcom/applovin/impl/adview/h$a;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public v()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "dismiss_on_skip"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public w()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fire_postbacks_from_webview"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public x()Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "html_resources_cached"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/ad/g;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/g;->a:Ljava/util/List;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .registers 5

    const-string v0, "video_button_properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/ad/g;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_14

    iget-object v2, p0, Lcom/applovin/impl/sdk/ad/g;->sdk:Lcom/applovin/impl/sdk/j;

    const-string v3, "video_button_html"

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    return-object v1
.end method
