.class Lcom/applovin/impl/adview/n$23;
.super Lcom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    iget-object p2, p2, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    iget-object p2, p2, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->eG:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_53

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p2}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;)Z

    move-result p2

    if-nez p2, :cond_53

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/n;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/r;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    new-instance p1, Lcom/applovin/impl/sdk/d/ad;

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    iget-object p2, p2, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    new-instance v0, Lcom/applovin/impl/adview/n$23$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/n$23$1;-><init>(Lcom/applovin/impl/adview/n$23;)V

    invoke-direct {p1, p2, v0}, Lcom/applovin/impl/sdk/d/ad;-><init>(Lcom/applovin/impl/sdk/j;Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/n$23;->a:Lcom/applovin/impl/adview/n;

    iget-object p2, p2, Lcom/applovin/impl/adview/n;->sdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->M()Lcom/applovin/impl/sdk/d/s;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/sdk/d/s$a;->a:Lcom/applovin/impl/sdk/d/s$a;

    invoke-virtual {p2, p1, v0}, Lcom/applovin/impl/sdk/d/s;->a(Lcom/applovin/impl/sdk/d/a;Lcom/applovin/impl/sdk/d/s$a;)V

    :cond_53
    return-void
.end method
