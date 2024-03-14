.class public Lcom/applovin/impl/mediation/b/d;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/applovin/impl/mediation/a/e;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/applovin/impl/mediation/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/applovin/impl/mediation/e;Lcom/applovin/impl/mediation/a/e;Lcom/applovin/impl/sdk/j;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/mediation/e;",
            "Lcom/applovin/impl/mediation/a/e;",
            "Lcom/applovin/impl/sdk/j;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskFireMediationPostbacks"

    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/d;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_urls"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/applovin/impl/mediation/b/d;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/r;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    if-eqz p3, :cond_24

    move-object p2, p3

    goto :goto_26

    :cond_24
    sget-object p2, Lcom/applovin/impl/mediation/e;->EMPTY:Lcom/applovin/impl/mediation/e;

    :goto_26
    iput-object p2, p0, Lcom/applovin/impl/mediation/b/d;->g:Lcom/applovin/impl/mediation/e;

    iput-object p4, p0, Lcom/applovin/impl/mediation/b/d;->d:Lcom/applovin/impl/mediation/a/e;

    new-instance p2, Ljava/util/HashMap;

    const/4 p5, 0x7

    invoke-direct {p2, p5}, Ljava/util/HashMap;-><init>(I)V

    const-string p5, "AppLovin-Event-Type"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/applovin/impl/mediation/a/e;->E()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Network-Name"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p4, Lcom/applovin/impl/mediation/a/a;

    if-eqz p1, :cond_63

    check-cast p4, Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {p4}, Lcom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Unit-Id"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Format"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/applovin/impl/mediation/a/a;->e()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovin-Third-Party-Ad-Placement-ID"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    if-eqz p3, :cond_7b

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/e;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovin-Error-Code"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/applovin/impl/mediation/e;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppLovin-Error-Message"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    iput-object p2, p0, Lcom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/mediation/e;)Ljava/lang/String;
    .registers 7

    instance-of v0, p2, Lcom/applovin/mediation/adapter/MaxAdapterError;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAdapterError;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getThirdPartySdkErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;->getThirdPartySdkErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_10
    const/4 v1, 0x0

    const-string v0, ""

    :goto_13
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/e;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{ERROR_CODE}"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/e;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "{ERROR_MESSAGE}"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "{THIRD_PARTY_SDK_ERROR_CODE}"

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "{THIRD_PARTY_SDK_ERROR_MESSAGE}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/impl/mediation/e;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/applovin/impl/mediation/b/d;->d:Lcom/applovin/impl/mediation/a/e;

    invoke-virtual {v5, v4}, Lcom/applovin/impl/mediation/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_3e
    invoke-direct {p0, v1, p3}, Lcom/applovin/impl/mediation/b/d;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lcom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Lcom/applovin/impl/mediation/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_4a
    return-object v0
.end method

.method private a()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/d;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/a;->h:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/d;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/b/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V

    goto :goto_a

    :cond_39
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_1f
    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/g;->b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/g$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->e(Z)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/g$a;->d(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g$a;->b()Lcom/applovin/impl/sdk/network/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->S()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/d/s$a;->m:Lcom/applovin/impl/sdk/d/s$a;

    new-instance v3, Lcom/applovin/impl/mediation/b/d$1;

    invoke-direct {v3, p0}, Lcom/applovin/impl/mediation/b/d$1;-><init>(Lcom/applovin/impl/mediation/b/d;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/d/s$a;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_a

    :cond_44
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/d;->d:Lcom/applovin/impl/mediation/a/e;

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/a/e;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/applovin/impl/mediation/b/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/b/a;->O:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/mediation/b/d;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/d;->g:Lcom/applovin/impl/mediation/e;

    invoke-direct {p0, v2, v3}, Lcom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Lcom/applovin/impl/mediation/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_57
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_81

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7d

    iget-object v8, p0, Lcom/applovin/impl/mediation/b/d;->d:Lcom/applovin/impl/mediation/a/e;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/applovin/impl/mediation/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    :cond_7d
    invoke-virtual {v3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_57

    :cond_81
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lcom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_22

    :cond_8d
    iget-object v2, p0, Lcom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/d;->g:Lcom/applovin/impl/mediation/e;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/applovin/impl/mediation/b/d;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/mediation/b/d;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/a;->i:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_ab

    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/d;->a(Ljava/util/List;)V

    goto :goto_ae

    :cond_ab
    invoke-direct {p0, v0}, Lcom/applovin/impl/mediation/b/d;->b(Ljava/util/List;)V

    :cond_ae
    :goto_ae
    return-void
.end method
