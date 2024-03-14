.class Lcom/applovin/impl/mediation/j$a$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j$a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/j$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$a$14;->a:Lcom/applovin/impl/mediation/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a$14;->a:Lcom/applovin/impl/mediation/j$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j$a;->a(Lcom/applovin/impl/mediation/j$a;)Lcom/applovin/impl/mediation/d;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a$14;->a:Lcom/applovin/impl/mediation/j$a;

    iget-object v1, v1, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->i(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/applovin/impl/mediation/d;->onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V

    return-void
.end method
