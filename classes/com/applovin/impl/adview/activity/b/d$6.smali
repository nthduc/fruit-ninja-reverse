.class Lcom/applovin/impl/adview/activity/b/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/d;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/d;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/d;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$6;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$6;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->d(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$6;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->d(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->a()V

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$6;->a:Lcom/applovin/impl/adview/activity/b/d;

    new-instance v1, Lcom/applovin/impl/adview/activity/b/d$6$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/adview/activity/b/d$6$1;-><init>(Lcom/applovin/impl/adview/activity/b/d$6;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/adview/activity/b/d;->a(Ljava/lang/Runnable;J)V

    :cond_1d
    return-void
.end method
