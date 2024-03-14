.class public Lcom/applovin/impl/sdk/d/i;
.super Lcom/applovin/impl/sdk/d/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/d/i$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/d/i$a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/d/i$a;)V
    .registers 4

    const-string v0, "TaskCollectAdvertisingId"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/i;->a:Lcom/applovin/impl/sdk/d/i$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/i;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->P()Lcom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->e()Lcom/applovin/impl/sdk/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/i;->a:Lcom/applovin/impl/sdk/d/i$a;

    invoke-interface {v1, v0}, Lcom/applovin/impl/sdk/d/i$a;->a(Lcom/applovin/impl/sdk/k$a;)V

    return-void
.end method
