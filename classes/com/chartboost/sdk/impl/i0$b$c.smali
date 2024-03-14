.class Lcom/chartboost/sdk/impl/i0$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i0$b;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/i0$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i0$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/i0;->D:Z

    if-eqz v2, :cond_e

    const-string v2, "hidden"

    goto :goto_10

    :cond_e
    const-string v2, "shown"

    :goto_10
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "controls %s automatically from timer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterstitialVideoViewProtocol"

    invoke-static {v2, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v2, v1, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v1, v1, Lcom/chartboost/sdk/impl/i0;->D:Z

    xor-int/2addr v1, v0

    invoke-virtual {v2, v1, v0}, Lcom/chartboost/sdk/impl/o0;->a(ZZ)V

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 5
    :try_start_31
    iget-object v1, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/i0$b$c;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/i0$b;->o:Lcom/chartboost/sdk/impl/o0;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    monitor-exit v0

    return-void

    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_31 .. :try_end_42} :catchall_40

    throw v1
.end method
