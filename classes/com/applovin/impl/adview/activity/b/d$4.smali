.class Lcom/applovin/impl/adview/activity/b/d$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/d;->z()V
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

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/d$4;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$4;->a:Lcom/applovin/impl/adview/activity/b/d;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/d;->a(Lcom/applovin/impl/adview/activity/b/d;J)J

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/d$4;->a:Lcom/applovin/impl/adview/activity/b/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/adview/activity/b/d;->b(Lcom/applovin/impl/adview/activity/b/d;J)J

    return-void
.end method
