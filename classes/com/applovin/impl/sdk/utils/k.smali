.class public Lcom/applovin/impl/sdk/utils/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/utils/k;->a:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()Lcom/applovin/impl/sdk/utils/k;
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/k;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n========================================"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/k;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/applovin/impl/sdk/utils/k;
    .registers 4

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/k;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/k;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/k;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
