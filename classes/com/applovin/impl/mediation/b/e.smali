.class public Lcom/applovin/impl/mediation/b/e;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONObject;

.field private final e:Lcom/applovin/mediation/MaxAdListener;

.field private final f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskLoadAdapterAd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/applovin/impl/mediation/b/e;->d:Lorg/json/JSONObject;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/e;->f:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/applovin/impl/mediation/b/e;->e:Lcom/applovin/mediation/MaxAdListener;

    return-void
.end method

.method private a()V
    .registers 6

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/e;->c()Lcom/applovin/impl/mediation/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->y()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/e;->b()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/e;->e:Lcom/applovin/mediation/MaxAdListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method private b()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->ai()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method private c()Lcom/applovin/impl/mediation/a/a;
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->d:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "ad_format"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->c(Ljava/lang/String;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->d(Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v0, Lcom/applovin/impl/mediation/a/b;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/a/b;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    return-object v0

    :cond_21
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_31

    new-instance v0, Lcom/applovin/impl/mediation/a/d;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/a/d;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    return-object v0

    :cond_31
    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->c(Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v1

    if-eqz v1, :cond_43

    new-instance v0, Lcom/applovin/impl/mediation/a/c;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/e;->d:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/mediation/a/c;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    return-object v0

    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported ad format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eJ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_24

    :try_start_10
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/e;->a()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_14

    goto :goto_27

    :catch_14
    move-exception v0

    const-string v1, "Unable to process adapter ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/e;->e:Lcom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/e;->a:Ljava/lang/String;

    const/16 v2, -0x1389

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;I)V

    goto :goto_27

    :cond_24
    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/e;->a()V

    :goto_27
    return-void
.end method
