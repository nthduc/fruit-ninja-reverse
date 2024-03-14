.class public Lcom/applovin/impl/mediation/b/f;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/b/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/applovin/mediation/MaxAdFormat;

.field private final e:Lorg/json/JSONObject;

.field private final f:Lcom/applovin/mediation/MaxAdListener;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/mediation/b/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/applovin/impl/sdk/j;Lcom/applovin/mediation/MaxAdListener;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskProcessMediationWaterfall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/applovin/impl/mediation/b/f;->h:Z

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/f;->d:Lcom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/applovin/impl/mediation/b/f;->f:Lcom/applovin/mediation/MaxAdListener;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f;)Ljava/lang/ref/WeakReference;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(I)V
    .registers 4

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->q:Lcom/applovin/impl/sdk/c/g;

    :goto_c
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/h;->a(Lcom/applovin/impl/sdk/c/g;)J

    goto :goto_26

    :cond_10
    const/16 v0, -0x1389

    if-ne p1, v0, :cond_1d

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->r:Lcom/applovin/impl/sdk/c/g;

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->s:Lcom/applovin/impl/sdk/c/g;

    goto :goto_c

    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Waterfall failed to load with error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->f:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/f;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f;Lcom/applovin/mediation/MaxAd;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->z()Lcom/applovin/impl/sdk/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/mediation/a/a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waterfall loaded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/a/a;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->f:Lcom/applovin/mediation/MaxAdListener;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/f;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/mediation/b/f;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/mediation/b/f;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/mediation/b/f;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/mediation/MaxAdListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->f:Lcom/applovin/mediation/MaxAdListener;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/mediation/b/f;)Lcom/applovin/mediation/MaxAdFormat;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/f;->d:Lcom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/mediation/b/f;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/applovin/impl/mediation/b/f;->h:Z

    return p0
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const-string v2, "is_testing"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v0, Lcom/applovin/impl/mediation/b/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Lcom/applovin/impl/mediation/b/f$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/mediation/b/f$1;-><init>(Lcom/applovin/impl/mediation/b/f;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_28
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    const-string v2, "ads"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_38

    :cond_37
    const/4 v2, 0x0

    :goto_38
    if-lez v2, :cond_62

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting waterfall for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ad(s)..."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/applovin/impl/mediation/b/f;->a(Ljava/lang/String;)V

    new-instance v2, Lcom/applovin/impl/mediation/b/f$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/applovin/impl/mediation/b/f$a;-><init>(Lcom/applovin/impl/mediation/b/f;ILorg/json/JSONArray;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    goto :goto_bb

    :cond_62
    const-string v0, "No ads were returned from the server"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/mediation/b/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f;->d:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v2, v3, v4}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->e:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    const-string v4, "settings"

    invoke-static {v0, v4, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    const-wide/16 v3, 0x0

    const-string v5, "alfdcs"

    invoke-static {v0, v5, v3, v4, v2}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_b6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    new-instance v4, Lcom/applovin/impl/mediation/b/f$2;

    invoke-direct {v4, p0}, Lcom/applovin/impl/mediation/b/f$2;-><init>(Lcom/applovin/impl/mediation/b/f;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v5, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    const-string v6, "alfdcs_iba"

    invoke-static {v0, v6, v1, v5}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3, v0, v4}, Lcom/applovin/impl/sdk/utils/d;->a(JLcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/utils/d;

    goto :goto_bb

    :cond_b2
    invoke-static {v4, v2, v3}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_bb

    :cond_b6
    const/16 v0, 0xcc

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/f;->a(I)V

    :goto_bb
    return-void
.end method
