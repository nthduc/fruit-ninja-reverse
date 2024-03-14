.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

.field final synthetic val$locationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Ljava/lang/String;)V
    .registers 3

    .line 493
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->val$locationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->val$locationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/ChartboostBanner;

    if-eqz v0, :cond_30

    .line 499
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v2, "destroyBanner - detachBanner"

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->detachBanner()V

    .line 505
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerView:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$800(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->val$locationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    # getter for: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->mLocationToBannerLayout:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$900(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$4;->val$locationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void
.end method
