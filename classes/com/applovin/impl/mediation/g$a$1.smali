.class Lcom/applovin/impl/mediation/g$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/g$a;->onAdLoadFailed(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/applovin/impl/mediation/g$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/g$a;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    iput p2, p0, Lcom/applovin/impl/mediation/g$a$1;->a:I

    iput-object p3, p0, Lcom/applovin/impl/mediation/g$a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    iget-object v0, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    new-instance v1, Lcom/applovin/impl/mediation/f$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->b(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/impl/mediation/f;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/applovin/impl/mediation/f$a;-><init>(Lcom/applovin/impl/mediation/f;)V

    iget v2, p0, Lcom/applovin/impl/mediation/g$a$1;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "retry_delay_sec"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/mediation/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/mediation/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v2}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/impl/mediation/g$b;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/mediation/g$b;->c(Lcom/applovin/impl/mediation/g$b;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "retry_attempt"

    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/mediation/f$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/mediation/f$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/f$a;->a()Lcom/applovin/impl/mediation/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/mediation/g$a;->a(Lcom/applovin/impl/mediation/g$a;Lcom/applovin/impl/mediation/f;)Lcom/applovin/impl/mediation/f;

    iget-object v0, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->e(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/impl/mediation/g;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/mediation/g$a$1;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->c(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    iget-object v0, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->b(Lcom/applovin/impl/mediation/g$a;)Lcom/applovin/impl/mediation/f;

    move-result-object v4

    iget-object v0, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lcom/applovin/impl/mediation/g$a;->d(Lcom/applovin/impl/mediation/g$a;)Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/mediation/g$a$1;->c:Lcom/applovin/impl/mediation/g$a;

    invoke-static/range {v1 .. v6}, Lcom/applovin/impl/mediation/g;->a(Lcom/applovin/impl/mediation/g;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/impl/mediation/f;Landroid/app/Activity;Lcom/applovin/mediation/MaxAdListener;)V

    return-void
.end method
