.class Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;
.super Ljava/lang/Object;
.source "AdColonyAdapter.java"

# interfaces
.implements Lcom/ironsource/adapters/adcolony/AdColonyAdapter$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->initBanners(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

.field final synthetic val$config:Lorg/json/JSONObject;

.field final synthetic val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;Ljava/lang/String;)V
    .registers 5

    .line 433
    iput-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$config:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    iput-object p4, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    .line 456
    iget-object p1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    const-string v0, "Missing params"

    const-string v1, "Banner"

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public onSuccess()V
    .registers 5

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v1, "appID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v2, "zoneId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    # getter for: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->mZoneIdToBannerListener:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$400(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$config:Lorg/json/JSONObject;

    const-string v2, "zoneIds"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 445
    iget-object v2, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->this$0:Lcom/ironsource/adapters/adcolony/AdColonyAdapter;

    iget-object v3, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$userId:Ljava/lang/String;

    # invokes: Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v2, v3, v0, v1}, Lcom/ironsource/adapters/adcolony/AdColonyAdapter;->access$200(Lcom/ironsource/adapters/adcolony/AdColonyAdapter;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/ironsource/adapters/adcolony/AdColonyAdapter$5;->val$listener:Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/BannerSmashListener;->onBannerInitSuccess()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    return-void
.end method
