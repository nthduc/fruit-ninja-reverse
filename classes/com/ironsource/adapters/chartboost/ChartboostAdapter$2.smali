.class Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;
.super Ljava/lang/Object;
.source "ChartboostAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/chartboost/ChartboostAdapter;->loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
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

    .line 342
    iput-object p1, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;->this$0:Lcom/ironsource/adapters/chartboost/ChartboostAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;->val$locationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 345
    invoke-static {}, Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;->getInstance()Lcom/ironsource/adapters/chartboost/ChartboostSingletonAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 346
    iget-object v0, p0, Lcom/ironsource/adapters/chartboost/ChartboostAdapter$2;->val$locationId:Ljava/lang/String;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    return-void
.end method
