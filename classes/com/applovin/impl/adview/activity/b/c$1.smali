.class Lcom/applovin/impl/adview/activity/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/activity/b/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/activity/b/c;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/activity/b/c;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    iget-object v0, v0, Lcom/applovin/impl/adview/activity/b/c;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getDuration()I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    iget-object v1, v1, Lcom/applovin/impl/adview/activity/b/c;->q:Lcom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AppLovinVideoViewV2;->getCurrentPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    iget-wide v3, v3, Lcom/applovin/impl/adview/activity/b/c;->t:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    invoke-static {v4}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/adview/activity/b/c;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/a/g;

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    invoke-virtual {v5}, Lcom/applovin/impl/adview/activity/b/c;->y()I

    move-result v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/applovin/impl/a/g;->a(JI)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    invoke-static {v5}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/adview/activity/b/c;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_56
    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    invoke-static {v0, v2}, Lcom/applovin/impl/adview/activity/b/c;->a(Lcom/applovin/impl/adview/activity/b/c;Ljava/util/Set;)V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/activity/b/c$1;->a:Lcom/applovin/impl/adview/activity/b/c;

    iget-boolean v0, v0, Lcom/applovin/impl/adview/activity/b/c;->u:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
