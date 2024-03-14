.class public Lcom/facebook/ads/NativeAdBase$Image;
.super Ljava/lang/Object;
.source "NativeAdBase.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/NativeAdBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Image"
.end annotation


# instance fields
.field private final mNativeAdImageApi:Lcom/facebook/ads/internal/api/NativeAdImageApi;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/api/NativeAdImageApi;)V
    .registers 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/ads/NativeAdBase$Image;->mNativeAdImageApi:Lcom/facebook/ads/internal/api/NativeAdImageApi;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/facebook/ads/NativeAdBase$Image;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
    .end annotation

    .line 86
    invoke-static {}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoaderUnsafe()Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->createNativeAdImageApi(Lorg/json/JSONObject;)Lcom/facebook/ads/internal/api/NativeAdImageApi;

    move-result-object p0

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_12

    .line 87
    :cond_c
    new-instance v0, Lcom/facebook/ads/NativeAdBase$Image;

    invoke-direct {v0, p0}, Lcom/facebook/ads/NativeAdBase$Image;-><init>(Lcom/facebook/ads/internal/api/NativeAdImageApi;)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method


# virtual methods
.method public getHeight()I
    .registers 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase$Image;->mNativeAdImageApi:Lcom/facebook/ads/internal/api/NativeAdImageApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdImageApi;->getHeight()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase$Image;->mNativeAdImageApi:Lcom/facebook/ads/internal/api/NativeAdImageApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdImageApi;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2
    .annotation build Lcom/facebook/ads/internal/bench/Benchmark;
        failAtMillis = 0x5
        warnAtMillis = 0x1
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/facebook/ads/NativeAdBase$Image;->mNativeAdImageApi:Lcom/facebook/ads/internal/api/NativeAdImageApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/NativeAdImageApi;->getWidth()I

    move-result v0

    return v0
.end method
