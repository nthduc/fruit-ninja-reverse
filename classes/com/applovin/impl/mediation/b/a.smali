.class public Lcom/applovin/impl/mediation/b/a;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "TaskAutoInitAdapters"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;Z)V

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/a;->a:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/a;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/a;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/applovin/impl/mediation/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/mediation/a/e;

    iget-object v4, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v3, v2, p2, v4}, Lcom/applovin/impl/mediation/a/e;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_24
    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/mediation/b/a;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/mediation/b/a;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->x:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "test_mode_auto_init_adapters"

    goto :goto_27

    :cond_25
    const-string v0, "auto_init_adapters"

    :goto_27
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_bf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-initing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adapters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->D()Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v2

    if-eqz v2, :cond_61

    const-string v2, " in test mode"

    goto :goto_63

    :cond_61
    const-string v2, ""

    :goto_63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "max"

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/b/a;->a:Landroid/app/Activity;

    if-nez v1, :cond_92

    const-string v0, "AppLovinSdk"

    const-string v1, "\n**********\nFailed to initialize 3rd-party SDKs. Please make sure to initialize the AppLovin SDK with an Activity context.\n**********\n"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->N()Lcom/applovin/impl/sdk/c/h;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/g;->p:Lcom/applovin/impl/sdk/c/g;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/c/h;->b(Lcom/applovin/impl/sdk/c/g;J)V

    return-void

    :cond_92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/mediation/a/e;

    iget-object v2, p0, Lcom/applovin/impl/mediation/b/a;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d/s;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/applovin/impl/mediation/b/a$1;

    invoke-direct {v3, p0, v1}, Lcom/applovin/impl/mediation/b/a$1;-><init>(Lcom/applovin/impl/mediation/b/a;Lcom/applovin/impl/mediation/a/e;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_b4} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_b4} :catch_b5

    goto :goto_96

    :catch_b5
    move-exception v0

    const-string v1, "Failed to auto-init adapters"

    goto :goto_bc

    :catch_b9
    move-exception v0

    const-string v1, "Failed to parse auto-init adapters JSON"

    :goto_bc
    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_bf
    return-void
.end method
