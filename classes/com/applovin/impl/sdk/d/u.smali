.class abstract Lcom/applovin/impl/sdk/d/u;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/u$a;,
        Lcom/applovin/impl/sdk/d/u$c;,
        Lcom/applovin/impl/sdk/d/u$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final c:Lcom/applovin/impl/sdk/d/u$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 5

    const-string v0, "TaskProcessVastResponse"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-eqz p1, :cond_e

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/u;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    check-cast p1, Lcom/applovin/impl/sdk/d/u$a;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/u;
    .registers 5

    new-instance v0, Lcom/applovin/impl/sdk/d/u$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/u$c;-><init>(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/d/u;
    .registers 6

    new-instance v0, Lcom/applovin/impl/sdk/d/u$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/applovin/impl/sdk/d/u$a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/j;)V

    new-instance p0, Lcom/applovin/impl/sdk/d/u$b;

    invoke-direct {p0, v0, p3, p4}, Lcom/applovin/impl/sdk/d/u$b;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    return-object p0
.end method


# virtual methods
.method a(Lcom/applovin/impl/a/d;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process VAST response due to VAST error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/u;->b:Lcom/applovin/impl/sdk/j;

    const/4 v3, -0x6

    invoke-static {v0, v1, p1, v3, v2}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/a/d;ILcom/applovin/impl/sdk/j;)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/utils/t;)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d/u$a;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished parsing XML at depth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/u;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/d/u$a;->a(Lcom/applovin/impl/sdk/utils/t;)V

    invoke-static {p1}, Lcom/applovin/impl/a/i;->a(Lcom/applovin/impl/sdk/utils/t;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/u;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->es:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge v0, p1, :cond_46

    const-string p1, "VAST response is wrapper. Resolving..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/u;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/applovin/impl/sdk/d/ab;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/u;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/d/ab;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    goto :goto_73

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reached beyond max wrapper depth of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/u;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/applovin/impl/a/d;->e:Lcom/applovin/impl/a/d;

    goto :goto_84

    :cond_5d
    invoke-static {p1}, Lcom/applovin/impl/a/i;->b(Lcom/applovin/impl/sdk/utils/t;)Z

    move-result p1

    if-eqz p1, :cond_7d

    const-string p1, "VAST response is inline. Rendering ad..."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/u;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/applovin/impl/sdk/d/x;

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u;->c:Lcom/applovin/impl/sdk/d/u$a;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u;->a:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/u;->b:Lcom/applovin/impl/sdk/j;

    invoke-direct {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/d/x;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    :goto_73
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    goto :goto_87

    :cond_7d
    const-string p1, "VAST response is an error"

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/u;->d(Ljava/lang/String;)V

    sget-object p1, Lcom/applovin/impl/a/d;->f:Lcom/applovin/impl/a/d;

    :goto_84
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/u;->a(Lcom/applovin/impl/a/d;)V

    :goto_87
    return-void
.end method
