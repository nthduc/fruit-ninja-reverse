.class Lcom/applovin/impl/adview/i$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/adview/i$a;

.field private final c:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/applovin/impl/adview/i$b;->c:J

    iput-object p4, p0, Lcom/applovin/impl/adview/i$b;->b:Lcom/applovin/impl/adview/i$a;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;Lcom/applovin/impl/adview/i$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/adview/i$b;-><init>(Ljava/lang/String;JLcom/applovin/impl/adview/i$a;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/i$b;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/i$b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()J
    .registers 3

    iget-wide v0, p0, Lcom/applovin/impl/adview/i$b;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/i$b;)Lcom/applovin/impl/adview/i$a;
    .registers 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/i$b;->c()Lcom/applovin/impl/adview/i$a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/i$b;)J
    .registers 3

    invoke-direct {p0}, Lcom/applovin/impl/adview/i$b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()Lcom/applovin/impl/adview/i$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/i$b;->b:Lcom/applovin/impl/adview/i$a;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/adview/i$b;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/adview/i$b;

    iget-object v1, p0, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object p1, p1, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1d

    :cond_17
    iget-object p1, p1, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountdownProxy{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/adview/i$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", countdownStepMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/impl/adview/i$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
