.class Lcom/applovin/impl/sdk/d/ab;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private a:Lcom/applovin/impl/a/c;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "TaskResolveVastWrapper"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/ab;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/ab;)Lcom/applovin/impl/a/c;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    return-object p0
.end method

.method private a(I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to resolve VAST wrapper due to error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/ab;->d(Ljava/lang/String;)V

    const/16 v0, -0x67

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v1}, Lcom/applovin/impl/a/c;->g()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, p1, v2}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/d;ILcom/applovin/impl/sdk/j;)V

    goto :goto_38

    :cond_26
    const/16 v0, -0x66

    if-ne p1, v0, :cond_2d

    sget-object v0, Lcom/applovin/impl/a/d;->d:Lcom/applovin/impl/a/d;

    goto :goto_2f

    :cond_2d
    sget-object v0, Lcom/applovin/impl/a/d;->c:Lcom/applovin/impl/a/d;

    :goto_2f
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/ab;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1, v2, v0, p1, v3}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/d;ILcom/applovin/impl/sdk/j;)V

    :goto_38
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/ab;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/d/ab;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/ab;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/ab;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    invoke-static {v0}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving VAST ad with depth "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->a:Lcom/applovin/impl/a/c;

    invoke-virtual {v3}, Lcom/applovin/impl/a/c;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/ab;->a(Ljava/lang/String;)V

    :try_start_2f
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/network/b;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/utils/t;->a:Lcom/applovin/impl/sdk/utils/t;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ey:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->a(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->ez:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->b(I)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b$a;->c(Z)Lcom/applovin/impl/sdk/network/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b$a;->a()Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/d/ab$1;

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p0, v0, v3}, Lcom/applovin/impl/sdk/d/ab$1;-><init>(Lcom/applovin/impl/sdk/d/ab;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/ab;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_82} :catch_83

    goto :goto_92

    :catch_83
    move-exception v0

    const-string v1, "Unable to resolve VAST wrapper"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/ab;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8f

    :cond_8a
    const-string v0, "Resolving VAST failed. Could not find resolution URL"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/ab;->d(Ljava/lang/String;)V

    :goto_8f
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/d/ab;->a(I)V

    :goto_92
    return-void
.end method
