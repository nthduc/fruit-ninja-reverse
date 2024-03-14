.class abstract Lcom/applovin/impl/sdk/d/f;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field protected final a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field private e:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/sdk/ad/NativeAdImpl;",
            ">;",
            "Lcom/applovin/impl/sdk/j;",
            "Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    if-eqz p2, :cond_d

    iput-object p2, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p4, p0, Lcom/applovin/impl/sdk/d/f;->a:Lcom/applovin/nativeAds/AppLovinNativeAdPrecacheListener;

    return-void

    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Native ads cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_7
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/nativeAds/AppLovinNativeAd;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->d:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Lcom/applovin/impl/sdk/o;Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/o;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "Unable to cache icon resource "

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    const-string p1, "Asked to cache file with null/empty URL, nothing to do."

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    return-object v2

    :cond_f
    invoke-static {p1, p3}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_2a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Domain is not whitelisted, skipping precache for URL "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    return-object v2

    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/f;->f()Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, p2

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v3 .. v10}, Lcom/applovin/impl/sdk/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZLcom/applovin/impl/sdk/c/e;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/applovin/impl/sdk/d/f;->c(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4d} :catch_4f

    return-object v2

    :cond_4e
    return-object p2

    :catch_4f
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)V
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;I)V
.end method

.method protected abstract a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;Lcom/applovin/impl/sdk/o;)Z
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    const-string v2, "Beginning resource caching phase..."

    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/d/f;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/j;->W()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/sdk/d/f;->a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;Lcom/applovin/impl/sdk/o;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget v2, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/f;->a(Lcom/applovin/impl/sdk/ad/NativeAdImpl;)V

    goto :goto_6

    :cond_2d
    const-string v1, "Unable to cache resources"

    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/d/f;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_33
    :try_start_33
    iget v0, p0, Lcom/applovin/impl/sdk/d/f;->e:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/f;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(Ljava/util/List;)V

    goto :goto_59

    :cond_45
    const-string v0, "Mismatch between successful populations and requested size"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/f;->d(Ljava/lang/String;)V

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/f;->a(I)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_4e} :catch_4f

    goto :goto_59

    :catch_4f
    move-exception v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/d/f;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encountered exception while notifying publisher code"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    return-void
.end method
