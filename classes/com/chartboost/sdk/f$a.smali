.class Lcom/chartboost/sdk/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/f;->a(ZLandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/chartboost/sdk/f;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/f;ZLandroid/view/View;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/f$a;->c:Lcom/chartboost/sdk/f;

    iput-boolean p2, p0, Lcom/chartboost/sdk/f$a;->a:Z

    iput-object p3, p0, Lcom/chartboost/sdk/f$a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/f$a;->a:Z

    if-nez v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 5
    :cond_11
    iget-object v0, p0, Lcom/chartboost/sdk/f$a;->c:Lcom/chartboost/sdk/f;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    monitor-enter v0

    .line 6
    :try_start_16
    iget-object v1, p0, Lcom/chartboost/sdk/f$a;->c:Lcom/chartboost/sdk/f;

    iget-object v1, v1, Lcom/chartboost/sdk/f;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/f$a;->b:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw v1
.end method
