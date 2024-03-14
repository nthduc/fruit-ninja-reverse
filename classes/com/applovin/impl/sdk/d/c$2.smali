.class Lcom/applovin/impl/sdk/d/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/d/c;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/d/c;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    iget-object v1, v1, Lcom/applovin/impl/sdk/d/c;->a:Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/g;->getAdZone()Lcom/applovin/impl/sdk/ad/d;

    move-result-object v1

    const/16 v2, -0xca

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    iget-object v3, v3, Lcom/applovin/impl/sdk/d/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/d;ILcom/applovin/impl/sdk/j;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/c$2;->a:Lcom/applovin/impl/sdk/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/c;->a(Lcom/applovin/impl/sdk/d/c;Lcom/applovin/sdk/AppLovinAdLoadListener;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    :cond_25
    return-void
.end method
