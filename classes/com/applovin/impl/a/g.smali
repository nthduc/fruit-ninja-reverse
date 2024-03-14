.class public Lcom/applovin/impl/a/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/impl/a/g;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/impl/a/g;->e:I

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/impl/a/c;)I
    .registers 3

    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-string v0, "firstQuartile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p0, 0x19

    return p0

    :cond_15
    const-string v0, "midpoint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 p0, 0x32

    return p0

    :cond_20
    const-string v0, "thirdQuartile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 p0, 0x4b

    return p0

    :cond_2b
    const-string v0, "complete"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/applovin/impl/a/c;->i()I

    move-result p0

    goto :goto_3c

    :cond_3a
    const/16 p0, 0x5f

    :goto_3c
    return p0

    :cond_3d
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/c;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/a/g;
    .registers 13

    const-string v0, ":"

    const-string v1, "VastTracker"

    if-eqz p0, :cond_ee

    if-eqz p2, :cond_e6

    :try_start_8
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    new-instance v3, Lcom/applovin/impl/a/g;

    invoke-direct {v3}, Lcom/applovin/impl/a/g;-><init>()V

    iput-object v2, v3, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v2

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object v2

    const-string v4, "event"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/applovin/impl/a/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/applovin/impl/a/g;->a(Ljava/lang/String;Lcom/applovin/impl/a/c;)I

    move-result p1

    iput p1, v3, Lcom/applovin/impl/a/g;->e:I

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/t;->b()Ljava/util/Map;

    move-result-object p0

    const-string p1, "offset"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cf

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->a(Ljava/lang/String;)I

    move-result p0

    iput p0, v3, Lcom/applovin/impl/a/g;->e:I

    goto :goto_cf

    :cond_6f
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b7

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_cf

    const-wide/16 v4, 0x0

    add-int/lit8 v0, p1, -0x1

    move v2, v0

    :goto_84
    if-ltz v2, :cond_b1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/o;->d(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v2, v0, :cond_9b

    int-to-long v6, v6

    :goto_99
    add-long/2addr v4, v6

    goto :goto_ae

    :cond_9b
    add-int/lit8 v7, p1, -0x2

    if-ne v2, v7, :cond_a7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    :goto_a1
    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    goto :goto_99

    :cond_a7
    add-int/lit8 v7, p1, -0x3

    if-ne v2, v7, :cond_ae

    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    goto :goto_a1

    :cond_ae
    :goto_ae
    add-int/lit8 v2, v2, -0x1

    goto :goto_84

    :cond_b1
    iput-wide v4, v3, Lcom/applovin/impl/a/g;->d:J

    const/4 p0, -0x1

    iput p0, v3, Lcom/applovin/impl/a/g;->e:I

    goto :goto_cf

    :cond_b7
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse time offset from rawOffsetString = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    :goto_cf
    return-object v3

    :cond_d0
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p0

    const-string p1, "Unable to create tracker. Could not find URL."

    invoke-virtual {p0, v1, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d9} :catch_da

    goto :goto_e4

    :catch_da
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    const-string p2, "Error occurred while initializing"

    invoke-virtual {p1, v1, p2, p0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e4
    const/4 p0, 0x0

    return-object p0

    :cond_e6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ee
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(JI)Z
    .registers 11

    iget-wide v0, p0, Lcom/applovin/impl/a/g;->d:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-wide v4, p0, Lcom/applovin/impl/a/g;->d:J

    cmp-long v1, p1, v4

    if-ltz v1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    iget p2, p0, Lcom/applovin/impl/a/g;->e:I

    if-ltz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iget v1, p0, Lcom/applovin/impl/a/g;->e:I

    if-lt p3, v1, :cond_23

    const/4 p3, 0x1

    goto :goto_24

    :cond_23
    const/4 p3, 0x0

    :goto_24
    if-eqz v0, :cond_28

    if-nez p1, :cond_2e

    :cond_28
    if-eqz p2, :cond_2d

    if-eqz p3, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :cond_2e
    :goto_2e
    return v2
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/applovin/impl/a/g;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    check-cast p1, Lcom/applovin/impl/a/g;

    iget-wide v2, p0, Lcom/applovin/impl/a/g;->d:J

    iget-wide v4, p1, Lcom/applovin/impl/a/g;->d:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    return v1

    :cond_15
    iget v0, p0, Lcom/applovin/impl/a/g;->e:I

    iget v2, p1, Lcom/applovin/impl/a/g;->e:I

    if-eq v0, v2, :cond_1c

    return v1

    :cond_1c
    iget-object v0, p0, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v2, p1, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_2d

    :cond_29
    iget-object v0, p1, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_2e

    :goto_2d
    return v1

    :cond_2e
    iget-object v0, p0, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_3b

    iget-object v2, p1, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_3f

    :cond_3b
    iget-object v0, p1, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_40

    :goto_3f
    return v1

    :cond_40
    iget-object v0, p0, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/applovin/impl/a/g;->d:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/impl/a/g;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastTracker{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/a/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", event=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uriString=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", offsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/impl/a/g;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", offsetPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/impl/a/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
