.class Lcom/applovin/impl/adview/activity/b/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/b$1;->a:Lcom/applovin/impl/adview/activity/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/b$1;->a:Lcom/applovin/impl/adview/activity/b/b;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/adview/activity/b/b;->i:J

    return-void
.end method