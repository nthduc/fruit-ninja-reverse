.class Lcom/applovin/impl/mediation/b/f$a$1;
.super Lcom/applovin/impl/mediation/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/b/f$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/b/f$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/b/f$a;Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/mediation/c/a;-><init>(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/impl/sdk/j;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;I)V
    .registers 5

    iget-object p1, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad failed to load with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/b/f$a;->b(Lcom/applovin/impl/mediation/b/f$a;Ljava/lang/String;)V

    const/16 p1, 0xcc

    if-eq p2, p1, :cond_22

    iget-object p1, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    iget-object p1, p1, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;Z)Z

    :cond_22
    iget-object p1, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/b/f$a;->a(Lcom/applovin/impl/mediation/b/f$a;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/b/f$a;->a(Lcom/applovin/impl/mediation/b/f$a;)V

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    const-string v1, "loaded ad"

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/b/f$a;->a(Lcom/applovin/impl/mediation/b/f$a;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/b/f$a$1;->a:Lcom/applovin/impl/mediation/b/f$a;

    iget-object v0, v0, Lcom/applovin/impl/mediation/b/f$a;->a:Lcom/applovin/impl/mediation/b/f;

    invoke-static {v0, p1}, Lcom/applovin/impl/mediation/b/f;->a(Lcom/applovin/impl/mediation/b/f;Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method
