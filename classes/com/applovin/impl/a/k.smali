.class public Lcom/applovin/impl/a/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/a/k$a;
    }
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/net/Uri;

.field private c:Lcom/applovin/impl/a/k$a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/applovin/impl/a/k$a;
    .registers 2

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "progressive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object p0, Lcom/applovin/impl/a/k$a;->a:Lcom/applovin/impl/a/k$a;

    return-object p0

    :cond_11
    const-string v0, "streaming"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    sget-object p0, Lcom/applovin/impl/a/k$a;->b:Lcom/applovin/impl/a/k$a;

    return-object p0

    :cond_1c
    sget-object p0, Lcom/applovin/impl/a/k$a;->a:Lcom/applovin/impl/a/k$a;

    return-object p0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/k;
    .registers 6

    const-string v0, "VastVideoFile"

    if-eqz p0, :cond_98

    if-eqz p1, :cond_90

    :try_start_6
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7a

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/a/k;

    invoke-direct {v2}, Lcom/applovin/impl/a/k;-><init>()V

    iput-object v1, v2, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    iput-object v1, v2, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v1

    const-string v3, "bitrate"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/applovin/impl/a/k;->g:I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v1

    const-string v3, "delivery"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/a/k;->a(Ljava/lang/String;)Lcom/applovin/impl/a/k$a;

    move-result-object v1

    iput-object v1, v2, Lcom/applovin/impl/a/k;->c:Lcom/applovin/impl/a/k$a;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v1

    const-string v3, "height"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/applovin/impl/a/k;->f:I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v1

    const-string v3, "width"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lcom/applovin/impl/a/k;->e:I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object p0

    const-string v1, "type"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    return-object v2

    :cond_7a
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p0

    const-string v1, "Unable to create video file. Could not find URL."

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_83} :catch_84

    goto :goto_8e

    :catch_84
    move-exception p0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string v1, "Error occurred while initializing"

    invoke-virtual {p1, v0, v1, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8e
    const/4 p0, 0x0

    return-object p0

    :cond_90
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_98
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    return-void
.end method

.method public b()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/applovin/impl/a/k;->g:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/a/k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/a/k;

    iget v1, p0, Lcom/applovin/impl/a/k;->e:I

    iget v3, p1, Lcom/applovin/impl/a/k;->e:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/applovin/impl/a/k;->f:I

    iget v3, p1, Lcom/applovin/impl/a/k;->f:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lcom/applovin/impl/a/k;->g:I

    iget v3, p1, Lcom/applovin/impl/a/k;->g:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    if-eqz v1, :cond_2e

    iget-object v3, p1, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_32

    :cond_2e
    iget-object v1, p1, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    if-eqz v1, :cond_33

    :goto_32
    return v2

    :cond_33
    iget-object v1, p0, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    if-eqz v1, :cond_40

    iget-object v3, p1, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_44

    :cond_40
    iget-object v1, p1, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    if-eqz v1, :cond_45

    :goto_44
    return v2

    :cond_45
    iget-object v1, p0, Lcom/applovin/impl/a/k;->c:Lcom/applovin/impl/a/k$a;

    iget-object v3, p1, Lcom/applovin/impl/a/k;->c:Lcom/applovin/impl/a/k$a;

    if-eq v1, v3, :cond_4c

    return v2

    :cond_4c
    iget-object v1, p0, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object p1, p1, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5d

    :cond_57
    iget-object p1, p1, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    if-nez p1, :cond_5c

    goto :goto_5d

    :cond_5c
    const/4 v0, 0x0

    :goto_5d
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/k;->c:Lcom/applovin/impl/a/k$a;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/applovin/impl/a/k$a;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/a/k;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/a/k;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/a/k;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastVideoFile{sourceVideoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/k;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/k;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/k;->c:Lcom/applovin/impl/a/k$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/k;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/k;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/k;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
