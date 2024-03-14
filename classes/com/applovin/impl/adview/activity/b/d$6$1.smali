.class Lcom/applovin/impl/adview/activity/b/d$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/d$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/d$6;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/d$6;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$6$1;->a:Lcom/applovin/impl/adview/activity/b/d$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$6$1;->a:Lcom/applovin/impl/adview/activity/b/d$6;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/d$6;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {v0}, Lcom/applovin/impl/adview/activity/b/d;->d(Lcom/applovin/impl/adview/activity/b/d;)Lcom/applovin/impl/adview/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/adview/a;->b()V

    return-void
.end method
