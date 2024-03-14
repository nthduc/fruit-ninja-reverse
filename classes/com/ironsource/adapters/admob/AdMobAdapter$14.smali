.class Lcom/ironsource/adapters/admob/AdMobAdapter$14;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->destroyBanner(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lorg/json/JSONObject;)V
    .registers 3

    .line 592
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->val$config:Lorg/json/JSONObject;

    const-string v1, "adUnitId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adUnitId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 599
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/AdView;

    .line 600
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdView;->destroy()V

    .line 601
    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$14;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdIdToBannerAd:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$1600(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_5a

    :catch_43
    move-exception v0

    .line 605
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return-void
.end method
