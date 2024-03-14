.class Lcom/applovin/impl/sdk/d/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/r;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/d/r;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/r;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r$2;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$2;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->x()Lcom/applovin/impl/mediation/h;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/r$2;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v1}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/h;->a(Landroid/app/Activity;)V

    return-void
.end method
