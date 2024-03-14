.class Lcom/applovin/impl/sdk/EventServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/d/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/applovin/impl/sdk/EventServiceImpl;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/EventServiceImpl;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .registers 5

    iput-object p1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/k$a;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/k$a;)Lcom/applovin/impl/sdk/k$a;

    iget-object v0, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;J)J

    new-instance v0, Lcom/applovin/impl/sdk/m;

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v3}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/m;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :try_start_1d
    invoke-static {}, Lcom/applovin/impl/sdk/network/f;->n()Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->d(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->c(Lcom/applovin/impl/sdk/EventServiceImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/network/f$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v2, v0, p1}, Lcom/applovin/impl/sdk/EventServiceImpl;->a(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/m;Lcom/applovin/impl/sdk/k$a;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/network/f$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->c:Ljava/util/Map;

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/m;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->c(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->b(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/b/b;->eA:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/network/f$a;->a(Z)Lcom/applovin/impl/sdk/network/f$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/f$a;->a()Lcom/applovin/impl/sdk/network/f;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->b(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->O()Lcom/applovin/impl/sdk/network/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/network/e;->a(Lcom/applovin/impl/sdk/network/f;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_74} :catch_75

    goto :goto_96

    :catch_75
    move-exception p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/EventServiceImpl$1;->d:Lcom/applovin/impl/sdk/EventServiceImpl;

    invoke-static {v1}, Lcom/applovin/impl/sdk/EventServiceImpl;->b(Lcom/applovin/impl/sdk/EventServiceImpl;)Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to track event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppLovinEventService"

    invoke-virtual {v1, v2, v0, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_96
    return-void
.end method
