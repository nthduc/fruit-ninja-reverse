.class Lcom/applovin/impl/mediation/j$a$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/j$a;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/applovin/mediation/MaxAdListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/applovin/impl/mediation/j$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/j$a;Ljava/lang/Runnable;Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/mediation/j$a$13;->d:Lcom/applovin/impl/mediation/j$a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/j$a$13;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/applovin/impl/mediation/j$a$13;->b:Lcom/applovin/mediation/MaxAdListener;

    iput-object p4, p0, Lcom/applovin/impl/mediation/j$a$13;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/j$a$13;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_3d

    :catch_6
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/mediation/j$a$13;->b:Lcom/applovin/mediation/MaxAdListener;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/applovin/impl/mediation/j$a$13;->d:Lcom/applovin/impl/mediation/j$a;

    iget-object v2, v2, Lcom/applovin/impl/mediation/j$a;->a:Lcom/applovin/impl/mediation/j;

    invoke-static {v2}, Lcom/applovin/impl/mediation/j;->e(Lcom/applovin/impl/mediation/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to forward call ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/applovin/impl/mediation/j$a$13;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediationAdapterWrapper"

    invoke-virtual {v2, v3, v1, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3d
    return-void
.end method
