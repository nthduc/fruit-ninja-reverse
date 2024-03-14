.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

.field final synthetic val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field final synthetic val$locationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 4

    .line 444
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iput-object p3, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->val$locationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 449
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->val$banner:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$3;->val$locationId:Ljava/lang/String;

    # invokes: Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->getChartboostBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)Lcom/chartboost/sdk/ChartboostBanner;
    invoke-static {v0, v1, v2}, Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->access$700(Lcom/ironsource/adapters/chartboost/ChartboostAdapter;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)Lcom/chartboost/sdk/ChartboostBanner;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartboostBanner;->cache()V

    return-void
.end method
