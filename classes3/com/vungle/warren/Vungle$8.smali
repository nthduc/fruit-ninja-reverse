.class final Lcom/vungle/warren/Vungle$8;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PlayAdCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adLoader:Lcom/vungle/warren/AdLoader;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lcom/vungle/warren/PlayAdCallback;

.field final synthetic val$repository:Lcom/vungle/warren/persistence/Repository;

.field final synthetic val$sdkExecutors:Lcom/vungle/warren/utility/Executors;

.field final synthetic val$settings:Lcom/vungle/warren/AdConfig;

.field final synthetic val$vungleApiClient:Lcom/vungle/warren/VungleApiClient;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/vungle/warren/AdLoader;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/VungleApiClient;Lcom/vungle/warren/utility/Executors;)V
    .registers 8

    .line 787
    iput-object p1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    iput-object p2, p0, Lcom/vungle/warren/Vungle$8;->val$adLoader:Lcom/vungle/warren/AdLoader;

    iput-object p3, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iput-object p4, p0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    iput-object p5, p0, Lcom/vungle/warren/Vungle$8;->val$settings:Lcom/vungle/warren/AdConfig;

    iput-object p6, p0, Lcom/vungle/warren/Vungle$8;->val$vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    iput-object p7, p0, Lcom/vungle/warren/Vungle$8;->val$sdkExecutors:Lcom/vungle/warren/utility/Executors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 792
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->playOperations:Ljava/util/Map;
    invoke-static {v1}, Lcom/vungle/warren/Vungle;->access$1500(Lcom/vungle/warren/Vungle;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ef

    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$adLoader:Lcom/vungle/warren/AdLoader;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/warren/AdLoader;->isLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_ef

    .line 797
    :cond_20
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    const-class v2, Lcom/vungle/warren/model/Placement;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Placement;

    if-nez v0, :cond_41

    .line 799
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 804
    :cond_41
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getAdSize()Lcom/vungle/warren/AdConfig$AdSize;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/warren/AdConfig$AdSize;->isBannerAdSize(Lcom/vungle/warren/AdConfig$AdSize;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 806
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void

    :cond_5a
    const/4 v1, 0x0

    .line 814
    iget-object v2, p0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/persistence/Repository;->findValidAdvertisementForPlacement(Ljava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vungle/warren/model/Advertisement;

    .line 817
    :try_start_69
    invoke-static {v2}, Lcom/vungle/warren/Vungle;->canPlayAd(Lcom/vungle/warren/model/Advertisement;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_8f

    if-eqz v2, :cond_8d

    .line 821
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getState()I

    move-result v1

    if-ne v1, v4, :cond_8d

    .line 823
    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v1, v2, v3, v5}, Lcom/vungle/warren/persistence/Repository;->saveAndApplyState(Lcom/vungle/warren/model/Advertisement;Ljava/lang/String;I)V

    .line 824
    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 825
    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$adLoader:Lcom/vungle/warren/AdLoader;

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lcom/vungle/warren/AdLoader;->loadEndless(Lcom/vungle/warren/model/Placement;J)V

    :cond_8d
    const/4 v1, 0x1

    goto :goto_99

    .line 830
    :cond_8f
    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$settings:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v2, v3}, Lcom/vungle/warren/model/Advertisement;->configure(Lcom/vungle/warren/AdConfig;)V

    .line 831
    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v3, v2}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V
    :try_end_99
    .catch Lcom/vungle/warren/persistence/DatabaseHelper$DBException; {:try_start_69 .. :try_end_99} :catch_e0

    .line 838
    :goto_99
    sget-object v3, Lcom/vungle/warren/Vungle;->_instance:Lcom/vungle/warren/Vungle;

    # getter for: Lcom/vungle/warren/Vungle;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/vungle/warren/Vungle;->access$300(Lcom/vungle/warren/Vungle;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 844
    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v3}, Lcom/vungle/warren/VungleApiClient;->canCallWillPlayAd()Z

    move-result v3

    if-eqz v3, :cond_c9

    .line 845
    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$vungleApiClient:Lcom/vungle/warren/VungleApiClient;

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vungle/warren/model/Placement;->isAutoCached()Z

    move-result v5

    if-eqz v1, :cond_b8

    const-string v6, ""

    goto :goto_bc

    .line 846
    :cond_b8
    invoke-virtual {v2}, Lcom/vungle/warren/model/Advertisement;->getAdToken()Ljava/lang/String;

    move-result-object v6

    .line 845
    :goto_bc
    invoke-virtual {v3, v4, v5, v6}, Lcom/vungle/warren/VungleApiClient;->willPlayAd(Ljava/lang/String;ZLjava/lang/String;)Lcom/vungle/warren/network/Call;

    move-result-object v3

    new-instance v4, Lcom/vungle/warren/Vungle$8$1;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/vungle/warren/Vungle$8$1;-><init>(Lcom/vungle/warren/Vungle$8;ZLcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    .line 846
    invoke-interface {v3, v4}, Lcom/vungle/warren/network/Call;->enqueue(Lcom/vungle/warren/network/Callback;)V

    goto :goto_df

    :cond_c9
    if-eqz v1, :cond_d8

    .line 907
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    invoke-direct {v2, v4}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    goto :goto_df

    .line 909
    :cond_d8
    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    # invokes: Lcom/vungle/warren/Vungle;->renderAd(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V
    invoke-static {v1, v3, v0, v2}, Lcom/vungle/warren/Vungle;->access$1600(Ljava/lang/String;Lcom/vungle/warren/PlayAdCallback;Lcom/vungle/warren/model/Placement;Lcom/vungle/warren/model/Advertisement;)V

    :cond_df
    :goto_df
    return-void

    .line 834
    :catch_e0
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void

    .line 793
    :cond_ef
    :goto_ef
    iget-object v0, p0, Lcom/vungle/warren/Vungle$8;->val$listener:Lcom/vungle/warren/PlayAdCallback;

    iget-object v1, p0, Lcom/vungle/warren/Vungle$8;->val$id:Ljava/lang/String;

    new-instance v2, Lcom/vungle/warren/error/VungleException;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/PlayAdCallback;->onError(Ljava/lang/String;Lcom/vungle/warren/error/VungleException;)V

    return-void
.end method
