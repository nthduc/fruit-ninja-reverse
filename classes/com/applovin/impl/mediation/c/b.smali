.class public Lcom/applovin/impl/mediation/c/b;
.super Lcom/applovin/impl/sdk/utils/h;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "settings"

    const-string v1, "ads"

    const-string v2, "auto_init_adapters"

    const-string v3, "test_mode_idfas"

    const-string v4, "test_mode_auto_init_adapters"

    filled-new-array {v1, v0, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/applovin/impl/mediation/c/b;->a:[Ljava/lang/String;

    const-string v2, "signal_providers"

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/mediation/c/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->c:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    const-string v0, "signal_providers"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/mediation/c/b;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->w:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->d:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    const-string v0, "auto_init_adapters"

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/i;->d(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/mediation/c/b;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->x:Lcom/applovin/impl/sdk/b/d;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public static c(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->c:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/applovin/impl/sdk/j;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->d:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/utils/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
