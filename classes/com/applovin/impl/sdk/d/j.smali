.class public Lcom/applovin/impl/sdk/d/j;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/network/g;

.field private final c:Lcom/applovin/sdk/AppLovinPostbackListener;

.field private final d:Lcom/applovin/impl/sdk/d/s$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/network/g;Lcom/applovin/impl/sdk/d/s$a;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 6

    const-string v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-eqz p1, :cond_e

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/j;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/j;->d:Lcom/applovin/impl/sdk/d/s$a;

    return-void

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No request specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/impl/sdk/network/g;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    return-object p0
.end method

.method private a()V
    .registers 4

    new-instance v0, Lcom/applovin/impl/sdk/d/j$1;

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/j;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/sdk/d/j$1;-><init>(Lcom/applovin/impl/sdk/d/j;Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j;->d:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/s$a;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/j;->d()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/d/j;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/d/j;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object p0
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "Requested URL is not valid; nothing to do..."

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/g;->s()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-static {v0}, Lcom/applovin/impl/adview/c;->a(Lcom/applovin/impl/sdk/network/g;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/j;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/j;->a:Lcom/applovin/impl/sdk/network/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/network/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackSuccess(Ljava/lang/String;)V

    goto :goto_3f

    :cond_3c
    invoke-direct {p0}, Lcom/applovin/impl/sdk/d/j;->a()V

    :cond_3f
    :goto_3f
    return-void
.end method
