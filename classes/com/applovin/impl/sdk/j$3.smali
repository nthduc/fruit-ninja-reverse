.class Lcom/applovin/impl/sdk/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/sdk/network/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/j;->aj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/j;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/q;

    move-result-object v0

    const-string v1, "AppLovinSdk"

    const-string v2, "Connected to internet - re-initializing SDK"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->d(Lcom/applovin/impl/sdk/j;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_14
    iget-object v1, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v1}, Lcom/applovin/impl/sdk/j;->e(Lcom/applovin/impl/sdk/j;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->b()V

    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_2c

    iget-object v0, p0, Lcom/applovin/impl/sdk/j$3;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {v0}, Lcom/applovin/impl/sdk/j;->f(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/network/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/sdk/network/c;->b(Lcom/applovin/impl/sdk/network/c$a;)V

    return-void

    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public b()V
    .registers 1

    return-void
.end method
