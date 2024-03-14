.class Lcom/applovin/impl/mediation/j$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$12;->b:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$12;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$12;->b:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$12;->b:Lcom/applovin/impl/mediation/j;

    invoke-static {v1}, Lcom/applovin/impl/mediation/j;->g(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$12;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$12;->b:Lcom/applovin/impl/mediation/j;

    invoke-static {v3}, Lcom/applovin/impl/mediation/j;->d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/applovin/mediation/adapter/MaxRewardedAdapter;->showRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V

    return-void
.end method
