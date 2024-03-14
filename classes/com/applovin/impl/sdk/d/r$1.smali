.class Lcom/applovin/impl/sdk/d/r$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/r;->run()V
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

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/r$1;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/r$1;->a:Lcom/applovin/impl/sdk/d/r;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/r;->a(Lcom/applovin/impl/sdk/d/r;)Lcom/applovin/impl/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->A()Lcom/applovin/impl/mediation/debugger/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/a;->b()V

    return-void
.end method
