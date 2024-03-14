.class Lcom/applovin/impl/mediation/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/mediation/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$4;->a:Lcom/applovin/impl/mediation/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$4;->a:Lcom/applovin/impl/mediation/j;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$4;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v0}, Lcom/applovin/impl/mediation/j;->c(Lcom/applovin/impl/mediation/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/mediation/adapter/MaxAdapter;->onDestroy()V

    iget-object v0, p0, Lcom/applovin/impl/mediation/j$4;->a:Lcom/applovin/impl/mediation/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/j;->a(Lcom/applovin/impl/mediation/j;Lcom/applovin/mediation/adapter/MaxAdapter;)Lcom/applovin/mediation/adapter/MaxAdapter;

    return-void
.end method
