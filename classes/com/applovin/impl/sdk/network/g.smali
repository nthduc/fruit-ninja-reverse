.class public Lcom/applovin/impl/sdk/network/g;
.super Lcom/applovin/impl/sdk/network/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/network/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/impl/sdk/network/b;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/network/g$a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/network/b;-><init>(Lcom/applovin/impl/sdk/network/b$a;)V

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/g$a;->a(Lcom/applovin/impl/sdk/network/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/applovin/impl/sdk/network/g$a;->b(Lcom/applovin/impl/sdk/network/g$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/network/g;->b:Z

    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/g$a;
    .registers 2

    new-instance v0, Lcom/applovin/impl/sdk/network/g$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/network/g$a;-><init>(Lcom/applovin/impl/sdk/j;)V

    return-object v0
.end method


# virtual methods
.method public q()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public s()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/sdk/network/g;->b:Z

    return v0
.end method
