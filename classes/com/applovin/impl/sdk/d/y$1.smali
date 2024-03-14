.class Lcom/applovin/impl/sdk/d/y$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/network/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/d/y;-><init>(Lcom/applovin/impl/sdk/network/b;Lcom/applovin/impl/sdk/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/impl/sdk/network/a$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;

.field final synthetic b:Lcom/applovin/impl/sdk/d/y;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/d/y;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/y$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt p1, v2, :cond_d

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    const/16 v3, 0x1ad

    if-ne p1, v3, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    const/16 v4, -0x67

    if-eq p1, v4, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    if-eqz v4, :cond_14d

    if-nez v2, :cond_2e

    if-nez v3, :cond_2e

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/b;->n()Z

    move-result v2

    if-eqz v2, :cond_14d

    :cond_2e
    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/b;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result v3

    if-lez v3, :cond_12b

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send request due to server failure (code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " attempts left, retrying in "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v5}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/network/b;->l()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds..."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/applovin/impl/sdk/d/y;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b;->i()I

    move-result p1

    sub-int/2addr p1, v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v3}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/applovin/impl/sdk/network/b;->a(I)V

    if-nez p1, :cond_d6

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/b/b;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;Lcom/applovin/impl/sdk/b/b;)V

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x4

    if-lt p1, v3, :cond_d6

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching to backup endpoint "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/d/y;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/impl/sdk/network/b;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_d6
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->dy:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_eb

    if-eqz v0, :cond_eb

    const-wide/16 v0, 0x0

    goto :goto_11b

    :cond_eb
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b;->m()Z

    move-result p1

    if-eqz p1, :cond_110

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/b;->j()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_11b

    :cond_110
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {p1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/b;->l()I

    move-result p1

    int-to-long v0, p1

    :goto_11b
    iget-object p1, p0, Lcom/applovin/impl/sdk/d/y$1;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p1

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v2}, Lcom/applovin/impl/sdk/d/y;->c(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/d/s$a;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;J)V

    goto :goto_152

    :cond_12b
    if-eqz v2, :cond_144

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/y;->d(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/b/b;

    move-result-object v1

    goto :goto_14a

    :cond_144
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/y;->b(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/b/b;

    move-result-object v1

    :goto_14a
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;Lcom/applovin/impl/sdk/b/b;)V

    :cond_14d
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d/y;->a(I)V

    :goto_152
    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/d/y;->a(Lcom/applovin/impl/sdk/d/y;)Lcom/applovin/impl/sdk/network/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/b;->a(I)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/y$1;->b:Lcom/applovin/impl/sdk/d/y;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/sdk/d/y;->a(Ljava/lang/Object;I)V

    return-void
.end method
