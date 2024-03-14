.class final Lcom/applovin/impl/sdk/d/u$b;
.super Lcom/applovin/impl/sdk/d/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/d/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/d/u;-><init>(Lcom/applovin/impl/a/c;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V

    if-eqz p2, :cond_c

    invoke-virtual {p1}, Lcom/applovin/impl/a/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/u$b;->a:Lorg/json/JSONObject;

    return-void

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "Processing SDK JSON response..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/u$b;->a:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u$b;->b:Lcom/applovin/impl/sdk/j;

    const-string v2, "xml"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/u$b;->b:Lcom/applovin/impl/sdk/j;

    sget-object v3, Lcom/applovin/impl/sdk/b/b;->er:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_3b

    :try_start_2a
    iget-object v1, p0, Lcom/applovin/impl/sdk/d/u$b;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/u;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$b;->a(Lcom/applovin/impl/sdk/utils/t;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_4d

    :catch_34
    move-exception v0

    const-string v1, "Unable to parse VAST response"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/d/u$b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    :cond_3b
    const-string v0, "VAST response is over max length"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$b;->d(Ljava/lang/String;)V

    :goto_40
    sget-object v0, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    goto :goto_4a

    :cond_43
    const-string v0, "No VAST response received."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$b;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/applovin/impl/a/d;->f:Lcom/applovin/impl/a/d;

    :goto_4a
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/u$b;->a(Lcom/applovin/impl/a/d;)V

    :goto_4d
    return-void
.end method
