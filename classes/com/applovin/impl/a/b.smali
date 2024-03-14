.class public Lcom/applovin/impl/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/net/Uri;

.field private d:Lcom/applovin/impl/a/e;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/b;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/b;
    .registers 7

    if-eqz p0, :cond_87

    if-eqz p3, :cond_7f

    if-eqz p1, :cond_7

    goto :goto_c

    :cond_7
    :try_start_7
    new-instance p1, Lcom/applovin/impl/a/b;

    invoke-direct {p1}, Lcom/applovin/impl/a/b;-><init>()V

    :goto_c
    iget v0, p1, Lcom/applovin/impl/a/b;->a:I

    if-nez v0, :cond_3c

    iget v0, p1, Lcom/applovin/impl/a/b;->b:I

    if-nez v0, :cond_3c

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "width"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v1

    if-lez v0, :cond_3c

    if-lez v1, :cond_3c

    iput v0, p1, Lcom/applovin/impl/a/b;->a:I

    iput v1, p1, Lcom/applovin/impl/a/b;->b:I

    :cond_3c
    iget-object v0, p1, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    invoke-static {p0, v0, p3}, Lcom/applovin/impl/a/e;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/e;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/e;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    iget-object v0, p1, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    if-nez v0, :cond_60

    const-string v0, "CompanionClickThrough"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    :cond_60
    const-string v0, "CompanionClickTracking"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p1, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    invoke-static {v0, v1, p2, p3}, Lcom/applovin/impl/a/i;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p1, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    invoke-static {p0, v0, p2, p3}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/util/Map;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_70} :catch_71

    return-object p1

    :catch_71
    move-exception p0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string p2, "VastCompanionAd"

    const-string p3, "Error occurred while initializing"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_7f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Lcom/applovin/impl/a/e;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/applovin/impl/a/g;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/a/b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/a/b;

    iget v1, p0, Lcom/applovin/impl/a/b;->a:I

    iget v3, p1, Lcom/applovin/impl/a/b;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/applovin/impl/a/b;->b:I

    iget v3, p1, Lcom/applovin/impl/a/b;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    if-eqz v1, :cond_27

    iget-object v3, p1, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_2b

    :cond_27
    iget-object v1, p1, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    if-eqz v1, :cond_2c

    :goto_2b
    return v2

    :cond_2c
    iget-object v1, p0, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    if-eqz v1, :cond_39

    iget-object v3, p1, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/a/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    goto :goto_3d

    :cond_39
    iget-object v1, p1, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    if-eqz v1, :cond_3e

    :goto_3d
    return v2

    :cond_3e
    iget-object v1, p0, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    if-eqz v1, :cond_4b

    iget-object v3, p1, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_4f

    :cond_4b
    iget-object v1, p1, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    if-eqz v1, :cond_50

    :goto_4f
    return v2

    :cond_50
    iget-object v1, p0, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    if-eqz v1, :cond_5b

    iget-object p1, p1, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_61

    :cond_5b
    iget-object p1, p1, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    if-nez p1, :cond_60

    goto :goto_61

    :cond_60
    const/4 v0, 0x0

    :goto_61
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/applovin/impl/a/b;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/a/b;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/applovin/impl/a/e;->hashCode()I

    move-result v1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    if-eqz v1, :cond_39

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v2

    :cond_39
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastCompanionAd{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", destinationUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/b;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nonVideoResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/b;->d:Lcom/applovin/impl/a/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/b;->e:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/b;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
