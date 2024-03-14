.class Lcom/applovin/impl/sdk/d/w;
.super Lcom/applovin/impl/sdk/d/a;


# instance fields
.field private final a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;)V
    .registers 5

    const-string v0, "TaskRenderNativeAd"

    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/d/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/d/w;->c:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const/4 v1, 0x0

    invoke-static {p2, p1, v1, v0}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    const-string p2, "{CLCODE}"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_f
    return-object v1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v1, "click_url"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object p1

    if-nez p3, :cond_d

    const-string p3, ""

    :cond_d
    const-string v0, "{CLCODE}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "{EVENT_ID}"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(I)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception p1

    const-string v0, "Unable to notify listener about failure."

    invoke-virtual {p0, v0, p1}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    :goto_10
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v4, "native_ads"

    invoke-static {v1, v4, v2, v3}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v5, "native_settings"

    invoke-static {v1, v5, v3, v4}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1d2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1c8

    iget-object v5, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const/4 v12, 0x0

    invoke-static {v2, v4, v12, v5}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v7, "clcode"

    invoke-static {v5, v7, v12, v6}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v13

    iget-object v6, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v7, "event_id"

    const-string v8, ""

    invoke-static {v5, v7, v8, v6}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "simp_url"

    invoke-direct {v0, v7, v1, v13}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v13, v6}, Lcom/applovin/impl/sdk/d/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v7, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v8, "simp_urls"

    invoke-static {v8, v1, v13, v14, v7}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v11

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v9, "should_post_click_url"

    invoke-static {v1, v9, v7, v8}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/impl/sdk/j;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_74

    move-object v10, v15

    goto :goto_75

    :cond_74
    move-object v10, v12

    :goto_75
    const-string v7, "{EVENT_ID}"

    invoke-static {v7, v6}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v6, "click_tracking_urls"

    move-object v7, v1

    move-object/from16 v16, v8

    move-object v8, v13

    move-object/from16 p1, v11

    move-object/from16 v11, v16

    invoke-static/range {v6 .. v11}, Lcom/applovin/impl/sdk/utils/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/util/List;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1c0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1b8

    iget-object v7, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v8, "resource_cache_prefix"

    invoke-static {v5, v8, v12, v7}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    goto :goto_b2

    :cond_aa
    iget-object v7, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    sget-object v8, Lcom/applovin/impl/sdk/b/b;->bE:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/j;->b(Lcom/applovin/impl/sdk/b/b;)Ljava/util/List;

    move-result-object v7

    :goto_b2
    new-instance v8, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    invoke-direct {v8}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;-><init>()V

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v9}, Lcom/applovin/impl/sdk/ad/d;->g(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/d;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Lcom/applovin/impl/sdk/ad/d;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v10, "title"

    invoke-static {v5, v10, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->e(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v10, "description"

    invoke-static {v5, v10, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->f(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v10, "caption"

    invoke-static {v5, v10, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->g(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v10, "cta"

    invoke-static {v5, v10, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->p(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v10, "icon_url"

    invoke-static {v5, v10, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v11, "image_url"

    invoke-static {v5, v11, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    move-object/from16 v16, v2

    const-string v2, "video_url"

    invoke-static {v5, v2, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v8

    iget-object v9, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    move/from16 v17, v4

    const-string v4, "star_rating_url"

    invoke-static {v5, v4, v12, v9}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, v10, v12, v8}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->h(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, v11, v12, v8}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->i(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v4

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-static {v5, v2, v12, v8}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->j(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v8, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v9, "star_rating"

    invoke-static {v5, v9, v4, v8}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/impl/sdk/j;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(F)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->o(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->k(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->l(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    const-string v4, "video_start_url"

    invoke-direct {v0, v4, v1, v13}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->m(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    const-string v4, "video_end_url"

    invoke-direct {v0, v4, v1, v13}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->n(Ljava/lang/String;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->b(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    const-wide/16 v8, 0x0

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    const-string v6, "ad_id"

    invoke-static {v5, v6, v8, v9, v4}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/impl/sdk/j;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(J)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->c(Ljava/util/List;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    iget-object v4, v0, Lcom/applovin/impl/sdk/d/w;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl$a;->a()Lcom/applovin/impl/sdk/ad/NativeAdImpl;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared native ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/NativeAdImpl;->getAdId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/d/w;->a(Ljava/lang/String;)V

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_2e

    :cond_1b8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No click tracking URL available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No impression URL available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c8
    iget-object v1, v0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    if-eqz v1, :cond_1de

    check-cast v3, Ljava/util/List;

    invoke-interface {v1, v3}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsLoaded(Ljava/util/List;)V

    goto :goto_1de

    :cond_1d2
    const-string v1, "No ads were returned from the server"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d/w;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/applovin/impl/sdk/d/w;->a:Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;

    const/16 v2, 0xcc

    invoke-interface {v1, v2}, Lcom/applovin/nativeAds/AppLovinNativeAdLoadListener;->onNativeAdsFailedToLoad(I)V

    :cond_1de
    :goto_1de
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/d/w;->c:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/w;->a(Lorg/json/JSONObject;)V

    goto :goto_1a

    :cond_10
    const-string v0, "Attempting to run task with empty or null ad response"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/d/w;->d(Ljava/lang/String;)V

    const/16 v0, 0xcc

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/d/w;->a(I)V

    :goto_1a
    return-void
.end method
