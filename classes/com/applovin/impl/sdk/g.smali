.class public Lcom/applovin/impl/sdk/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/g$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/applovin/impl/sdk/g$a;

.field private static final b:Lcom/applovin/impl/sdk/g$a;

.field private static final c:Lcom/applovin/impl/sdk/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/applovin/impl/sdk/g$a;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->k:Lcom/applovin/impl/sdk/b/d;

    const-string v2, "Age Restricted User"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/g$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/b/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/g$a;

    new-instance v0, Lcom/applovin/impl/sdk/g$a;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->j:Lcom/applovin/impl/sdk/b/d;

    const-string v2, "Has User Consent"

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/g$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/b/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/g;->b:Lcom/applovin/impl/sdk/g$a;

    new-instance v0, Lcom/applovin/impl/sdk/g$a;

    sget-object v1, Lcom/applovin/impl/sdk/b/d;->l:Lcom/applovin/impl/sdk/b/d;

    const-string v2, "\"Do Not Sell\""

    invoke-direct {v0, v2, v1}, Lcom/applovin/impl/sdk/g$a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/b/d;)V

    sput-object v0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/g$a;

    return-void
.end method

.method public static a()Lcom/applovin/impl/sdk/g$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/g$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/g$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applovin/impl/sdk/g;->b:Lcom/applovin/impl/sdk/g$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/g$a;

    invoke-static {v1, p0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/g$a;Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/applovin/impl/sdk/g$a;->a(Lcom/applovin/impl/sdk/g$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/g$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Boolean;Landroid/content/Context;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/b/d<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)V

    const/4 p0, 0x1

    if-eqz v0, :cond_11

    if-eq v0, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :cond_11
    :goto_11
    return p0
.end method

.method public static a(ZLandroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->k:Lcom/applovin/impl/sdk/b/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Lcom/applovin/impl/sdk/g$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/g;->b:Lcom/applovin/impl/sdk/g$a;

    return-object v0
.end method

.method public static b(ZLandroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->j:Lcom/applovin/impl/sdk/b/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/applovin/impl/sdk/g$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/g$a;

    return-object v0
.end method

.method public static c(ZLandroid/content/Context;)Z
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/b/d;->l:Lcom/applovin/impl/sdk/b/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Boolean;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
