.class Lcom/ironsource/adapters/admob/AdMobAdapter$2;
.super Ljava/lang/Object;
.source "AdMobAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;Lorg/json/JSONObject;)V
    .registers 5

    .line 191
    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    iput-object p4, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$config:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mAdUnitIdToRewardedVideoListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$200(Lcom/ironsource/adapters/admob/AdMobAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$listener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$config:Lorg/json/JSONObject;

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->initSDK(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$300(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    .line 196
    # getter for: Lcom/ironsource/adapters/admob/AdMobAdapter;->mDidInitSdkFinished:Z
    invoke-static {}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$000()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 197
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$2;->val$adUnitId:Ljava/lang/String;

    # invokes: Lcom/ironsource/adapters/admob/AdMobAdapter;->loadRewardedVideoAdFromAdmob(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->access$400(Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;)V

    :cond_27
    return-void
.end method
