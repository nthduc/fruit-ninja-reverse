.class public Lcom/chartboost/sdk/impl/s;
.super Lcom/chartboost/sdk/impl/w;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/r;",
            ">;D)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chartboost/sdk/impl/w;-><init>(D)V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/s;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_17

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/r;

    if-eqz v0, :cond_10

    .line 4
    invoke-interface {v0}, Lcom/chartboost/sdk/impl/r;->a()V

    goto :goto_17

    :cond_10
    const-string v0, "BannerRefreshTimer"

    const-string v1, "Refresh callback is disposed"

    .line 6
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/s;->e:Ljava/lang/ref/WeakReference;

    .line 5
    :cond_a
    invoke-super {p0}, Lcom/chartboost/sdk/impl/w;->g()V

    return-void
.end method
