.class public Lcom/applovin/impl/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/applovin/impl/a/e$a;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/e;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/e;
    .registers 5

    if-eqz p0, :cond_85

    if-eqz p2, :cond_7d

    if-eqz p1, :cond_7

    goto :goto_c

    :cond_7
    :try_start_7
    new-instance p1, Lcom/applovin/impl/a/e;

    invoke-direct {p1}, Lcom/applovin/impl/a/e;-><init>()V

    :goto_c
    iget-object v0, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    if-nez v0, :cond_6e

    iget-object v0, p1, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "StaticResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/a/e;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    sget-object p0, Lcom/applovin/impl/a/e$a;->b:Lcom/applovin/impl/a/e$a;

    iput-object p0, p1, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    return-object p1

    :cond_2f
    const-string v0, "IFrameResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/a/e;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object p0, Lcom/applovin/impl/a/e$a;->c:Lcom/applovin/impl/a/e$a;

    iput-object p0, p1, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    goto :goto_4e

    :cond_4c
    iput-object v0, p1, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    :goto_4e
    return-object p1

    :cond_4f
    const-string v0, "HTMLResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/a/e;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/applovin/impl/a/e$a;->d:Lcom/applovin/impl/a/e$a;

    iput-object v0, p1, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    goto :goto_6e

    :cond_6c
    iput-object p0, p1, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_6e} :catch_6f

    :cond_6e
    :goto_6e
    return-object p1

    :catch_6f
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string p2, "VastNonVideoResource"

    const-string v0, "Error occurred while initializing"

    invoke-virtual {p1, p2, v0, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_7d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_85
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Lcom/applovin/impl/a/e$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/a/e;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/a/e;

    iget-object v1, p0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    iget-object v3, p1, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    if-eqz v1, :cond_30

    iget-object p1, p1, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_36

    :cond_30
    iget-object p1, p1, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    if-nez p1, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/a/e$a;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastNonVideoResource{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/e;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceContents=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
