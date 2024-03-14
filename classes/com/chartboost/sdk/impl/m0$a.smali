.class Lcom/chartboost/sdk/impl/m0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/m0;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/m0;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/m0;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/m0$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/m0$a;->a:Z

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 5
    :cond_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_17
    iget-object v1, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/m0;->a:Lcom/chartboost/sdk/impl/i0;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/m0$a;->b:Lcom/chartboost/sdk/impl/m0;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw v1
.end method
