.class public Lcom/applovin/impl/sdk/d/k;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/k$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    const-string v0, "TaskFetchBasicSettings"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;Z)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/k;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/k;Lorg/json/JSONObject;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/k;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->d(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->e(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/sdk/utils/h;->a(Lorg/json/JSONObject;ZLcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/c/b;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/c/b;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    const-string v0, "Executing initialize SDK..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/k;->b(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "smd"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->A()Lcom/applovin/impl/mediation/debugger/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/mediation/debugger/a;->a(Z)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->h(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->f(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Lorg/json/JSONObject;)V

    new-instance v0, Lcom/applovin/impl/sdk/d/r;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/d/r;-><init>(Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/h;->g(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    const-string p1, "Finished executing initialize SDK"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/k;->b(Ljava/lang/String;)V

    :cond_7b
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aE:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    const-string v2, "5.0/i"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->aF:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    const-string v2, "5.0/i"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Map;
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

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdk_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    invoke-static {}, Lcom/applovin/impl/sdk/g;->b()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    invoke-static {}, Lcom/applovin/impl/sdk/g;->a()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aru"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    invoke-static {}, Lcom/applovin/impl/sdk/g;->c()Lcom/applovin/impl/sdk/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/g$a;->a(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_72

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_72
    return-object v0
.end method

.method protected b()Lorg/json/JSONObject;
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "sdk_version"

    sget-object v2, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "build"

    const/16 v2, 0x83

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "init_count"

    sget v2, Lcom/applovin/impl/sdk/d/k;->a:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lcom/applovin/impl/sdk/d/k;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "server_installed_at"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v4, Lcom/applovin/impl/sdk/b/b;->X:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "first_install"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_46
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->K()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "first_install_v2"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_53
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    const-string v2, "plugin_version"

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6c
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, "mediation_provider"

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_81
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/c/c;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/mediation/c/c$a;

    move-result-object v1

    const-string v2, "installed_mediation_adapters"

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/c/c$a;->a()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uninstalled_mediation_adapter_classnames"

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/c/c$a;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object v1

    const-string v2, "package_name"

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    iget-object v3, v1, Lcom/applovin/impl/sdk/k$b;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "test_ads"

    iget-boolean v3, v1, Lcom/applovin/impl/sdk/k$b;->h:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "debug"

    iget-boolean v1, v1, Lcom/applovin/impl/sdk/k$b;->f:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getInitializationAdUnitIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f6

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdkSettings;->getInitializationAdUnitIds()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const-string v2, "ad_unit_ids"

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v1, v3}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/util/Collection;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f6
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tg"

    sget-object v2, Lcom/applovin/impl/sdk/b/d;->h:Lcom/applovin/impl/sdk/b/d;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/impl/sdk/b/d;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_130

    const-string v1, "compass_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_130
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->dJ:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_152

    const-string v1, "applovin_random_token"

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14b} :catch_14c

    goto :goto_152

    :catch_14c
    move-exception v1

    const-string v2, "Failed to construct JSON body"

    invoke-virtual {p0, v2, v1}, Lcom/applovin/impl/sdk/d/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_152
    :goto_152
    return-object v0
.end method

.method public run()V
    .registers 9

    sget-object v0, Lcom/applovin/impl/sdk/d/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_a
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/security/ProviderInstaller;->installIfNeeded(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v0

    const-string v2, "Cannot update security provider"

    invoke-virtual {p0, v2, v0}, Lcom/applovin/impl/sdk/d/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->b()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v3}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/k;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/b$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dt:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->dw:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->c(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ds:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->d(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/d/k$a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v2, p0, v3}, Lcom/applovin/impl/sdk/d/k$a;-><init>(Lcom/applovin/impl/sdk/d/k;Lcom/applovin/impl/sdk/j;)V

    sget-object v3, Lcom/applovin/impl/sdk/d/s$a;->b:Lcom/applovin/impl/sdk/d/s$a;

    iget-object v4, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    sget-object v5, Lcom/applovin/impl/sdk/b/b;->ds:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    new-instance v1, Lcom/applovin/impl/sdk/d/k$1;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/k;->g()Z

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/applovin/impl/sdk/d/k$1;-><init>(Lcom/applovin/impl/sdk/d/k;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aG:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/b/b;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->aH:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/b/b;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/k;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method
