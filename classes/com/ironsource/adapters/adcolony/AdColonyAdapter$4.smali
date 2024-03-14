.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;
.super Ljava/lang/Object;
.source "AdColonyAdapter.java"

# interfaces
.implements Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initInterstitialInternal(Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;Ljava/lang/String;)V
    .registers 5

    .line 323
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    iput-object p4, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    .line 349
    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v0, "Missing params"

    const-string v1, "Interstitial"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onSuccess()V
    .registers 6

    const-string v0, "zoneId"

    .line 328
    :try_start_2
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v2, "appID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$config:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$config:Lorg/json/JSONObject;

    const-string v3, "zoneIds"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    iget-object v3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToIsListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$300(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$config:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-virtual {v3, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, ","

    .line 334
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$userId:Ljava/lang/String;

    # invokes: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v2, v3, v1, v0}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$200(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$4;->val$listener:Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3f
    return-void
.end method
