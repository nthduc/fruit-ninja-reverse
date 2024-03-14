.class Lcom/applovin/impl/mediation/j$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->a(Ljava/lang/String;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;Lcom/applovin/impl/mediation/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field final synthetic b:Lcom/applovin/impl/mediation/a/a;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/impl/mediation/a/a;Landroid/app/Activity;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$9;->d:Lcom/applovin/impl/mediation/j;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$9;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$9;->b:Lcom/applovin/impl/mediation/a/a;

    iput-object p4, p0, Lcom/applovin/impl/mediation/j$9;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$9;->d:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$9;->a:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lcom/applovin/impl/mediation/j$9;->b:Lcom/applovin/impl/mediation/a/a;

    invoke-virtual {v2}, Lcom/applovin/impl/mediation/a/a;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/mediation/j$9;->c:Landroid/app/Activity;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$9;->d:Lcom/applovin/impl/mediation/j;

    invoke-static {v4}, Lcom/applovin/impl/mediation/j;->d(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/mediation/j$a;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/applovin/mediation/adapter/MaxAdViewAdapter;->loadAdViewAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    return-void
.end method
