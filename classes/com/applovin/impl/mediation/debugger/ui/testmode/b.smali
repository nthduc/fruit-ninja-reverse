.class public Lcom/applovin/impl/mediation/debugger/ui/testmode/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private b:Z

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->B:Lcom/applovin/impl/sdk/b/d;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->B:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->A:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p2, v0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    goto :goto_c

    :cond_a
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Ljava/lang/String;

    :goto_c
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 5

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    const-string v2, "test_mode_idfas"

    invoke-static {p1, v2, v0, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/impl/sdk/k$a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/i;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    move-result p1

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->d()Lcom/applovin/impl/sdk/k$b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/applovin/impl/sdk/k$b;->h:Z

    if-eqz p1, :cond_33

    goto :goto_35

    :cond_33
    const/4 p1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, 0x1

    :goto_36
    iput-boolean p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->B:Lcom/applovin/impl/sdk/b/d;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    return-void
.end method
