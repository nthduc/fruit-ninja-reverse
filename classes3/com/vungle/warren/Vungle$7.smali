.class final Lcom/vungle/warren/Vungle$7;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 710
    iput-object p1, p0, Lcom/vungle/warren/Vungle$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$7;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .registers 6

    .line 714
    invoke-static {}, Lcom/vungle/warren/Vungle;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_15

    .line 715
    # getter for: Lcom/vungle/warren/Vungle;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/vungle/warren/Vungle;->access$1400()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Vungle is not initialized"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 719
    :cond_15
    iget-object v0, p0, Lcom/vungle/warren/Vungle$7;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/vungle/warren/ServiceLocator;->getInstance(Landroid/content/Context;)Lcom/vungle/warren/ServiceLocator;

    move-result-object v0

    .line 720
    const-class v2, Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v0, v2}, Lcom/vungle/warren/ServiceLocator;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/persistence/Repository;

    .line 721
    iget-object v2, p0, Lcom/vungle/warren/Vungle$7;->val$id:Ljava/lang/String;

    .line 722
    invoke-virtual {v0, v2}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    .line 723
    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 724
    iget-object v3, p0, Lcom/vungle/warren/Vungle$7;->val$id:Ljava/lang/String;

    const-class v4, Lcom/vungle/warren/model/Placement;

    .line 725
    invoke-virtual {v0, v3, v4}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-eqz v2, :cond_6e

    if-nez v0, :cond_42

    goto :goto_6e

    .line 732
    :cond_42
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getPlacementAdType()I

    move-result v3

    if-nez v3, :cond_6e

    .line 733
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    invoke-static {v3}, Lcom/vungle/warren/AdConfig$AdSize;->isDefaultAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v3

    if-nez v3, :cond_65

    .line 734
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v0

    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vungle/warren/AdConfig;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vungle/warren/AdConfig$AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    goto :goto_6e

    .line 739
    :cond_65
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_6e
    :goto_6e
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lcom/vungle/warren/Vungle$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
