.class public Lcom/chartboost/sdk/impl/u;
.super Lcom/chartboost/sdk/impl/w;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/chartboost/sdk/impl/t;",
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
            "Lcom/chartboost/sdk/impl/t;",
            ">;D)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/chartboost/sdk/impl/w;-><init>(D)V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/t;

    if-eqz v0, :cond_f

    .line 4
    invoke-interface {v0}, Lcom/chartboost/sdk/impl/t;->b()V

    :cond_f
    return-void
.end method

.method public g()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_a

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/chartboost/sdk/impl/u;->e:Ljava/lang/ref/WeakReference;

    .line 5
    :cond_a
    invoke-super {p0}, Lcom/chartboost/sdk/impl/w;->g()V

    return-void
.end method
