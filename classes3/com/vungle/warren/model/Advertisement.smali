.class public Lcom/vungle/warren/model/Advertisement;
.super Ljava/lang/Object;
.source "Advertisement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/Advertisement$Checkpoint;,
        Lcom/vungle/warren/model/Advertisement$State;,
        Lcom/vungle/warren/model/Advertisement$CacheKey;,
        Lcom/vungle/warren/model/Advertisement$Orientation;,
        Lcom/vungle/warren/model/Advertisement$AdType;
    }
.end annotation


# static fields
.field public static final DONE:I = 0x3

.field public static final ERROR:I = 0x4

.field private static final FILE_SCHEME:Ljava/lang/String; = "file://"

.field public static final KEY_POSTROLL:Ljava/lang/String; = "postroll"

.field public static final KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final KEY_VIDEO:Ljava/lang/String; = "video"

.field public static final LANDSCAPE:I = 0x1

.field public static final NEW:I = 0x0

.field public static final PORTRAIT:I = 0x0

.field public static final READY:I = 0x1

.field static final START_MUTED:Ljava/lang/String; = "START_MUTED"

.field private static final TAG:Ljava/lang/String; = "Advertisement"

.field public static final TYPE_VUNGLE_LOCAL:I = 0x0

.field public static final TYPE_VUNGLE_MRAID:I = 0x1

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VIEWING:I = 0x2


# instance fields
.field adConfig:Lcom/vungle/warren/AdConfig;

.field adMarketId:Ljava/lang/String;

.field adRequestStartTime:J

.field adToken:Ljava/lang/String;

.field adType:I
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation
.end field

.field appID:Ljava/lang/String;

.field assetDownloadDuration:J

.field assetDownloadStartTime:J

.field bidToken:Ljava/lang/String;

.field cacheableAssets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field campaign:Ljava/lang/String;

.field checkpoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation
.end field

.field clickUrls:[Ljava/lang/String;

.field closeUrls:[Ljava/lang/String;

.field countdown:I

.field ctaClickArea:Z

.field ctaDestinationUrl:Ljava/lang/String;

.field ctaOverlayEnabled:Z

.field ctaUrl:Ljava/lang/String;

.field delay:I

.field enableMoat:Z

.field expireTime:J

.field identifier:Ljava/lang/String;

.field md5:Ljava/lang/String;

.field moatExtraVast:Ljava/lang/String;

.field mraidFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field muteUrls:[Ljava/lang/String;

.field placementId:Ljava/lang/String;

.field postRollClickUrls:[Ljava/lang/String;

.field postRollViewUrls:[Ljava/lang/String;

.field postrollBundleUrl:Ljava/lang/String;

.field requiresNonMarketInstall:Z

.field retryCount:I

.field showCloseDelay:I

.field showCloseIncentivized:I

.field state:I

.field templateId:Ljava/lang/String;

.field templateSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field templateType:Ljava/lang/String;

.field templateUrl:Ljava/lang/String;

.field ttDownload:J

.field unmuteUrls:[Ljava/lang/String;

.field videoClickUrls:[Ljava/lang/String;

.field videoHeight:I

.field videoIdentifier:Ljava/lang/String;

.field videoUrl:Ljava/lang/String;

.field videoWidth:I


# direct methods
.method constructor <init>()V
    .registers 2

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonObject;)V
    .registers 15
    .param p1    # Lcom/google/gson/JsonObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    .line 240
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    .line 242
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    const/4 v1, 0x0

    .line 279
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    const-string v2, "ad_markup"

    .line 364
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_741

    .line 366
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object p1

    const-string v2, "adType"

    .line 371
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_739

    .line 372
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 373
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6e6a3e23

    if-eq v4, v5, :cond_4d

    const v5, -0x6e5ad017

    if-eq v4, v5, :cond_43

    goto :goto_56

    :cond_43
    const-string v4, "vungle_mraid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v3, 0x1

    goto :goto_56

    :cond_4d
    const-string v4, "vungle_local"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    const/4 v3, 0x0

    :cond_56
    :goto_56
    const-string v4, "url"

    const-string v5, ""

    if-eqz v3, :cond_1d4

    if-ne v3, v0, :cond_1b8

    .line 392
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    .line 393
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v2, "templateSettings"

    .line 396
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b0

    .line 397
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 398
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "normal_replacements"

    .line 399
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 400
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_89
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 402
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a2

    goto :goto_89

    .line 405
    :cond_a2
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v7

    if-eqz v7, :cond_b5

    goto :goto_c0

    :cond_b5
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c1

    :cond_c0
    :goto_c0
    const/4 v7, 0x0

    .line 406
    :goto_c1
    iget-object v8, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_cb
    const-string v3, "cacheable_replacements"

    .line 410
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15e

    .line 411
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v5

    :cond_e0
    :goto_e0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 413
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_f9

    goto :goto_e0

    .line 416
    :cond_f9
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_100

    goto :goto_e0

    .line 419
    :cond_100
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-static {v7, v4}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 420
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    const-string v8, "extension"

    invoke-static {v7, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e0

    .line 421
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    .line 422
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gson/JsonElement;

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    const-string v9, "extension"

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    .line 423
    iget-object v9, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-direct {v11, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v8, "MAIN_VIDEO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e0

    move-object v3, v7

    goto :goto_e0

    :cond_15e
    move-object v3, v5

    :cond_15f
    const-string v2, "templateId"

    .line 436
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 437
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    const-string v2, "template_type"

    .line 442
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a0

    .line 443
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    const-string v2, "templateURL"

    .line 448
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_198

    const-string v2, "templateURL"

    .line 449
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    goto :goto_208

    .line 451
    :cond_198
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template URL missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 445
    :cond_1a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Template Type missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 439
    :cond_1a8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing templateID!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 433
    :cond_1b0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing template adConfig!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 455
    :cond_1b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Ad Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "! Please add this ad type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_1d4
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const-string v2, "postBundle"

    .line 377
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 378
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e8

    :cond_1e7
    move-object v2, v5

    :goto_1e8
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    .line 381
    invoke-static {p1, v4}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1fa

    .line 382
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_1fb

    :cond_1fa
    move-object v3, v5

    .line 386
    :goto_1fb
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    .line 387
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    .line 388
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    .line 389
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    .line 462
    :goto_208
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_211

    .line 463
    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    goto :goto_213

    .line 466
    :cond_211
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    :goto_213
    const-string v2, "id"

    .line 470
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_731

    const-string v2, "id"

    .line 471
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    const-string v2, "campaign"

    .line 479
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_729

    const-string v2, "campaign"

    .line 480
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    const-string v2, "app_id"

    .line 487
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_721

    const-string v2, "app_id"

    .line 488
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    const-string v2, "expiry"

    .line 495
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27c

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v3

    if-nez v3, :cond_27c

    .line 496
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_272

    .line 498
    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    goto :goto_285

    .line 500
    :cond_272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    goto :goto_285

    .line 506
    :cond_27c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    iput-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    :goto_285
    const-string v2, "tpat"

    .line 510
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53e

    const-string v2, "tpat"

    .line 511
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 514
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    .line 515
    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eqz v3, :cond_2d8

    if-ne v3, v0, :cond_2d0

    const/4 v3, 0x0

    :goto_2a2
    const/4 v4, 0x5

    if-ge v3, v4, :cond_30e

    mul-int/lit8 v4, v3, 0x19

    .line 536
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    const-string v8, "checkpoint.%d"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 538
    invoke-static {v2, v6}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c8

    .line 539
    new-instance v7, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v6

    int-to-byte v4, v4

    invoke-direct {v7, v6, v4}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/JsonArray;B)V

    .line 542
    :cond_2c8
    iget-object v4, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v4, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2a2

    .line 546
    :cond_2d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown Ad Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2d8
    const-string v3, "play_percentage"

    .line 517
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30e

    const-string v3, "play_percentage"

    .line 518
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 522
    :goto_2e7
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_309

    .line 523
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-nez v6, :cond_2f4

    goto :goto_306

    .line 526
    :cond_2f4
    iget-object v6, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    new-instance v7, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/vungle/warren/model/Advertisement$Checkpoint;-><init>(Lcom/google/gson/JsonObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_306
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e7

    .line 528
    :cond_309
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_30e
    const-string v3, "clickUrl"

    .line 552
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_341

    const-string v3, "clickUrl"

    .line 553
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 555
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 557
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_329
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_345

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 558
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    move v4, v8

    goto :goto_329

    .line 561
    :cond_341
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    :cond_345
    const-string v3, "moat"

    .line 565
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36c

    const-string v3, "moat"

    .line 566
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    const-string v4, "is_enabled"

    .line 567
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v4

    iput-boolean v4, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    const-string v4, "extra_vast"

    .line 568
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    goto :goto_370

    .line 570
    :cond_36c
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    .line 571
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    :goto_370
    const-string v3, "video_click"

    .line 574
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "null"

    if-eqz v3, :cond_3b8

    const-string v3, "video_click"

    .line 575
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 576
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 577
    :goto_389
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3bc

    .line 578
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_3b1

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a4

    goto :goto_3b1

    .line 581
    :cond_3a4
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    goto :goto_3b5

    .line 579
    :cond_3b1
    :goto_3b1
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    aput-object v5, v7, v6

    :goto_3b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_389

    .line 585
    :cond_3b8
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 590
    :cond_3bc
    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eqz v3, :cond_3d5

    if-ne v3, v0, :cond_3cd

    const-string v3, "video.mute"

    const-string v6, "video.unmute"

    const-string v7, "video.close"

    const-string v8, "postroll.click"

    const-string v9, "postroll.view"

    goto :goto_3df

    .line 606
    :cond_3cd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown AdType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3d5
    const-string v3, "mute"

    const-string v6, "unmute"

    const-string v7, "video_close"

    const-string v8, "postroll_click"

    const-string v9, "postroll_view"

    .line 609
    :goto_3df
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_421

    .line 610
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 611
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    const/4 v10, 0x0

    .line 612
    :goto_3f2
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_425

    .line 613
    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    if-eqz v11, :cond_41a

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_40d

    goto :goto_41a

    .line 616
    :cond_40d
    iget-object v11, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    goto :goto_41e

    .line 614
    :cond_41a
    :goto_41a
    iget-object v11, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    aput-object v5, v11, v10

    :goto_41e
    add-int/lit8 v10, v10, 0x1

    goto :goto_3f2

    .line 620
    :cond_421
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 623
    :cond_425
    invoke-static {v2, v6}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_467

    .line 624
    invoke-virtual {v2, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 625
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 626
    :goto_438
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_46b

    .line 627
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    if-eqz v10, :cond_460

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_453

    goto :goto_460

    .line 630
    :cond_453
    iget-object v10, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    goto :goto_464

    .line 628
    :cond_460
    :goto_460
    iget-object v10, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    aput-object v5, v10, v6

    :goto_464
    add-int/lit8 v6, v6, 0x1

    goto :goto_438

    .line 634
    :cond_467
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 637
    :cond_46b
    invoke-static {v2, v7}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4ad

    .line 638
    invoke-virtual {v2, v7}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 639
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 640
    :goto_47e
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4b1

    .line 641
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_4a6

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_499

    goto :goto_4a6

    .line 644
    :cond_499
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    goto :goto_4aa

    .line 642
    :cond_4a6
    :goto_4a6
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    aput-object v5, v7, v6

    :goto_4aa
    add-int/lit8 v6, v6, 0x1

    goto :goto_47e

    .line 648
    :cond_4ad
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 651
    :cond_4b1
    invoke-static {v2, v8}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f3

    .line 652
    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 653
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    const/4 v6, 0x0

    .line 654
    :goto_4c4
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4f7

    .line 655
    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_4ec

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4df

    goto :goto_4ec

    .line 658
    :cond_4df
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    goto :goto_4f0

    .line 656
    :cond_4ec
    :goto_4ec
    iget-object v7, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    aput-object v5, v7, v6

    :goto_4f0
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c4

    .line 662
    :cond_4f3
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 665
    :cond_4f7
    invoke-static {v2, v9}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_539

    .line 666
    invoke-virtual {v2, v9}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 667
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 668
    :goto_50a
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_565

    .line 669
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    if-eqz v6, :cond_532

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_525

    goto :goto_532

    .line 672
    :cond_525
    iget-object v6, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    goto :goto_536

    .line 670
    :cond_532
    :goto_532
    iget-object v6, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    aput-object v5, v6, v3

    :goto_536
    add-int/lit8 v3, v3, 0x1

    goto :goto_50a

    .line 676
    :cond_539
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    goto :goto_565

    .line 680
    :cond_53e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    .line 681
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 682
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 683
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 684
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    .line 685
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 686
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 687
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 688
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    .line 689
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    :cond_565
    :goto_565
    const-string v2, "delay"

    .line 693
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57a

    const-string v2, "delay"

    .line 694
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    goto :goto_57c

    .line 696
    :cond_57a
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    :goto_57c
    const-string v2, "showClose"

    .line 700
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_591

    const-string v2, "showClose"

    .line 701
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    goto :goto_593

    .line 703
    :cond_591
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    :goto_593
    const-string v2, "showCloseIncentivized"

    .line 705
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5a8

    const-string v2, "showCloseIncentivized"

    .line 706
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    goto :goto_5aa

    .line 708
    :cond_5a8
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    :goto_5aa
    const-string v2, "countdown"

    .line 712
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5bf

    const-string v2, "countdown"

    .line 713
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    goto :goto_5c1

    .line 715
    :cond_5bf
    iput v1, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    :goto_5c1
    const-string v2, "videoWidth"

    .line 719
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_719

    const-string v2, "videoWidth"

    .line 720
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    const-string v2, "videoHeight"

    .line 724
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_711

    const-string v2, "videoHeight"

    .line 725
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    iput v2, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    const-string v2, "md5"

    .line 731
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5fe

    const-string v2, "md5"

    .line 732
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    goto :goto_600

    .line 734
    :cond_5fe
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    :goto_600
    const-string v2, "cta_overlay"

    .line 738
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64c

    const-string v2, "cta_overlay"

    .line 739
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "enabled"

    .line 740
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_623

    const-string v3, "enabled"

    .line 741
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    goto :goto_625

    .line 743
    :cond_623
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    :goto_625
    const-string v3, "click_area"

    .line 745
    invoke-static {v2, v3}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_64e

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64e

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v2, v6

    if-nez v4, :cond_64e

    .line 746
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    goto :goto_64e

    .line 751
    :cond_64c
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    :cond_64e
    :goto_64e
    const-string v2, "callToActionDest"

    .line 755
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_661

    const-string v2, "callToActionDest"

    .line 756
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_662

    :cond_661
    move-object v2, v5

    :goto_662
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    const-string v2, "callToActionUrl"

    .line 759
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_677

    const-string v2, "callToActionUrl"

    .line 760
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_678

    :cond_677
    move-object v2, v5

    :goto_678
    iput-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    const-string v2, "retryCount"

    .line 763
    invoke-static {p1, v2}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68f

    const-string v0, "retryCount"

    .line 764
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    goto :goto_691

    .line 766
    :cond_68f
    iput v0, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    :goto_691
    const-string v0, "ad_token"

    .line 770
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_709

    const-string v0, "ad_token"

    .line 771
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    const-string v0, "video_object_id"

    .line 777
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ba

    const-string v0, "video_object_id"

    .line 778
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    goto :goto_6bc

    .line 780
    :cond_6ba
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    :goto_6bc
    const-string v0, "requires_sideloading"

    .line 784
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d1

    const-string v0, "requires_sideloading"

    .line 785
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    goto :goto_6d3

    .line 787
    :cond_6d1
    iput-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    :goto_6d3
    const-string v0, "ad_market_id"

    .line 790
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e8

    const-string v0, "ad_market_id"

    .line 791
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    goto :goto_6ea

    .line 793
    :cond_6e8
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    :goto_6ea
    const-string v0, "bid_token"

    .line 796
    invoke-static {p1, v0}, Lcom/vungle/warren/model/JsonUtil;->hasNonNull(Lcom/google/gson/JsonElement;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6ff

    const-string v0, "bid_token"

    .line 797
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    goto :goto_701

    .line 799
    :cond_6ff
    iput-object v5, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    .line 805
    :goto_701
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    return-void

    .line 773
    :cond_709
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AdToken missing!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 727
    :cond_711
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video height!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 722
    :cond_719
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing video width!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 491
    :cond_721
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing app Id, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_729
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing campaign information, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :cond_731
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing identifier, cannot process advertisement!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_739
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Advertisement did not contain an adType!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_741
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON does not contain ad markup!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void
.end method

.method private isValidUrl(Ljava/lang/String;)Z
    .registers 3

    .line 1169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public configure(Lcom/vungle/warren/AdConfig;)V
    .registers 2

    if-nez p1, :cond_a

    .line 826
    new-instance p1, Lcom/vungle/warren/AdConfig;

    invoke-direct {p1}, Lcom/vungle/warren/AdConfig;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    goto :goto_c

    .line 828
    :cond_a
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    :goto_c
    return-void
.end method

.method public createMRAIDArgs()Lcom/google/gson/JsonObject;
    .registers 5

    .line 1082
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    if-eqz v0, :cond_88

    .line 1086
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1088
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1089
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 1092
    :cond_2f
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1093
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3c
    const-string v0, "START_MUTED"

    .line 1096
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1097
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAdConfig()Lcom/vungle/warren/AdConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/warren/AdConfig;->getSettings()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_59

    goto :goto_5b

    :cond_59
    const-string v3, "false"

    :goto_5b
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    :cond_5e
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1101
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1102
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_87
    return-object v0

    .line 1083
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisement does not have MRAID Arguments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 848
    :cond_4
    instance-of v1, p1, Lcom/vungle/warren/model/Advertisement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 850
    :cond_a
    check-cast p1, Lcom/vungle/warren/model/Advertisement;

    .line 852
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->adType:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eq v1, v3, :cond_13

    return v2

    .line 853
    :cond_13
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->delay:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    if-eq v1, v3, :cond_1a

    return v2

    .line 854
    :cond_1a
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    if-eq v1, v3, :cond_21

    return v2

    .line 855
    :cond_21
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    if-eq v1, v3, :cond_28

    return v2

    .line 856
    :cond_28
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->countdown:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    if-eq v1, v3, :cond_2f

    return v2

    .line 857
    :cond_2f
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    if-eq v1, v3, :cond_36

    return v2

    .line 858
    :cond_36
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    if-eq v1, v3, :cond_3d

    return v2

    .line 859
    :cond_3d
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    if-eq v1, v3, :cond_44

    return v2

    .line 860
    :cond_44
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    if-eq v1, v3, :cond_4b

    return v2

    .line 861
    :cond_4b
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    if-eq v1, v3, :cond_52

    return v2

    .line 862
    :cond_52
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    if-eq v1, v3, :cond_59

    return v2

    .line 863
    :cond_59
    iget-boolean v1, p1, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    iget-boolean v3, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    if-eq v1, v3, :cond_60

    return v2

    .line 864
    :cond_60
    iget v1, p1, Lcom/vungle/warren/model/Advertisement;->state:I

    iget v3, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    if-eq v1, v3, :cond_67

    return v2

    .line 866
    :cond_67
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-eqz v1, :cond_1dc

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v3, :cond_71

    goto/16 :goto_1dc

    .line 867
    :cond_71
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    return v2

    .line 868
    :cond_78
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    return v2

    .line 869
    :cond_83
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    return v2

    .line 870
    :cond_8e
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_99

    return v2

    .line 871
    :cond_99
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    return v2

    .line 872
    :cond_a4
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return v2

    .line 873
    :cond_af
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    return v2

    .line 874
    :cond_ba
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    return v2

    .line 875
    :cond_c5
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v2

    .line 876
    :cond_d0
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    return v2

    .line 877
    :cond_db
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e6

    return v2

    .line 878
    :cond_e6
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    return v2

    .line 880
    :cond_f1
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_100

    return v2

    :cond_100
    const/4 v1, 0x0

    .line 881
    :goto_101
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_121

    .line 882
    iget-object v3, p1, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    iget-object v4, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11e

    return v2

    :cond_11e
    add-int/lit8 v1, v1, 0x1

    goto :goto_101

    .line 885
    :cond_121
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_12a

    return v2

    :cond_12a
    const/4 v1, 0x0

    .line 886
    :goto_12b
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_140

    .line 887
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13d

    return v2

    :cond_13d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12b

    .line 890
    :cond_140
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_149

    return v2

    :cond_149
    const/4 v1, 0x0

    .line 891
    :goto_14a
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_15f

    .line 892
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15c

    return v2

    :cond_15c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14a

    .line 895
    :cond_15f
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_168

    return v2

    :cond_168
    const/4 v1, 0x0

    .line 896
    :goto_169
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_17e

    .line 897
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17b

    return v2

    :cond_17b
    add-int/lit8 v1, v1, 0x1

    goto :goto_169

    .line 900
    :cond_17e
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_187

    return v2

    :cond_187
    const/4 v1, 0x0

    .line 901
    :goto_188
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_19d

    .line 902
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19a

    return v2

    :cond_19a
    add-int/lit8 v1, v1, 0x1

    goto :goto_188

    .line 905
    :cond_19d
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_1a6

    return v2

    :cond_1a6
    const/4 v1, 0x0

    .line 906
    :goto_1a7
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1bc

    .line 907
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b9

    return v2

    :cond_1b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a7

    .line 910
    :cond_1bc
    iget-object v1, p1, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v1, v1

    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v3, v3

    if-eq v1, v3, :cond_1c5

    return v2

    :cond_1c5
    const/4 v1, 0x0

    .line 911
    :goto_1c6
    iget-object v3, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_1db

    .line 912
    iget-object v4, p1, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v3, v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d8

    return v2

    :cond_1d8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c6

    :cond_1db
    return v0

    :cond_1dc
    :goto_1dc
    return v2
.end method

.method public getAdConfig()Lcom/vungle/warren/AdConfig;
    .registers 2

    .line 833
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    return-object v0
.end method

.method public getAdMarketId()Ljava/lang/String;
    .registers 2

    .line 1207
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdToken()Ljava/lang/String;
    .registers 2

    .line 1025
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Advertisement$AdType;
    .end annotation

    .line 810
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    return v0
.end method

.method public getAdvertiserAppId()Ljava/lang/String;
    .registers 6

    const-string v0, "app_id"

    .line 1348
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v1

    .line 1349
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getAppID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1350
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_33

    .line 1352
    :try_start_13
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1353
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    move-object v1, v4

    goto :goto_33

    :cond_25
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_29} :catch_2b

    move-object v1, v0

    goto :goto_33

    :catch_2b
    move-exception v0

    const-string v2, "Advertisement"

    const-string v3, "JsonException : "

    .line 1355
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1358
    :cond_33
    :goto_33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v1, "unknown"

    :cond_3b
    return-object v1
.end method

.method public getAppID()Ljava/lang/String;
    .registers 2

    .line 1029
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getAssetDownloadDuration()J
    .registers 3

    .line 332
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    return-wide v0
.end method

.method public getBidToken()Ljava/lang/String;
    .registers 2

    .line 1212
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCTAURL(Z)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1118
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eqz v0, :cond_23

    const/4 p1, 0x1

    if-ne v0, p1, :cond_a

    .line 1122
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    return-object p1

    .line 1124
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown AdType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    if-eqz p1, :cond_28

    .line 1120
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    goto :goto_2a

    :cond_28
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    :goto_2a
    return-object p1
.end method

.method public getCampaign()Ljava/lang/String;
    .registers 2

    .line 1037
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .registers 4

    .line 1363
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v0

    .line 1364
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "\\|"

    .line 1365
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1366
    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_18

    const/4 v1, 0x0

    .line 1367
    aget-object v0, v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1370
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "unknown"

    :cond_21
    return-object v0
.end method

.method public getCheckpoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/model/Advertisement$Checkpoint;",
            ">;"
        }
    .end annotation

    .line 814
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    return-object v0
.end method

.method public getCreativeId()Ljava/lang/String;
    .registers 4

    .line 1375
    invoke-virtual {p0}, Lcom/vungle/warren/model/Advertisement;->getCampaign()Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "\\|"

    .line 1377
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1378
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_18

    const/4 v1, 0x1

    .line 1379
    aget-object v0, v0, v1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1382
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v0, "unknown"

    :cond_21
    return-object v0
.end method

.method public getCtaClickArea()Z
    .registers 2

    .line 347
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    return v0
.end method

.method public getDownloadableUrls()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1139
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    if-eqz v1, :cond_4a

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 1148
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    const-string v2, "template"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1155
    invoke-direct {p0, v2}, Lcom/vungle/warren/model/Advertisement;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x0

    .line 1156
    invoke-static {v2, v3, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1157
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 1162
    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Advertisement created without adType!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_4a
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 1144
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    const-string v2, "postroll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    return-object v0
.end method

.method public getExpireTime()J
    .registers 5

    .line 1078
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getMoatEnabled()Z
    .registers 2

    .line 1063
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    return v0
.end method

.method public getMoatVastExtra()Ljava/lang/String;
    .registers 2

    .line 1068
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .registers 3
    .annotation build Lcom/vungle/warren/model/Advertisement$Orientation;
    .end annotation

    .line 838
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowCloseDelay(Z)I
    .registers 2

    if-eqz p1, :cond_7

    .line 1057
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    :goto_4
    mul-int/lit16 p1, p1, 0x3e8

    return p1

    .line 1059
    :cond_7
    iget p1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    goto :goto_4
.end method

.method public getState()I
    .registers 2
    .annotation build Lcom/vungle/warren/model/Advertisement$State;
    .end annotation

    .line 1203
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return v0
.end method

.method getTemplateId()Ljava/lang/String;
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .registers 2

    .line 1045
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    return-object v0
.end method

.method public getTpatUrls(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 956
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x5

    const-string v6, "Unknown TPAT Event "

    const-string v7, "video_click"

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_e4

    if-ne v0, v10, :cond_dc

    const-string v0, "checkpoint"

    .line 977
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 978
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "\\."

    .line 979
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v10

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 980
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    div-int/lit8 p1, p1, 0x19

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vungle/warren/model/Advertisement$Checkpoint;

    if-eqz p1, :cond_38

    .line 982
    invoke-virtual {p1}, Lcom/vungle/warren/model/Advertisement$Checkpoint;->getUrls()[Ljava/lang/String;

    move-result-object v0

    :cond_38
    return-object v0

    .line 986
    :cond_39
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_188

    goto :goto_84

    :sswitch_41
    const-string v0, "postroll.view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x1

    goto :goto_85

    :sswitch_4b
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x6

    goto :goto_85

    :sswitch_53
    const-string v0, "clickUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x3

    goto :goto_85

    :sswitch_5d
    const-string v0, "video.close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x0

    goto :goto_85

    :sswitch_67
    const-string v0, "video.unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x5

    goto :goto_85

    :sswitch_71
    const-string v0, "postroll.click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    const/4 v1, 0x2

    goto :goto_85

    :sswitch_7b
    const-string v0, "video.mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_85

    :cond_84
    :goto_84
    const/4 v1, -0x1

    :goto_85
    packed-switch v1, :pswitch_data_1a6

    .line 1009
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :pswitch_9d
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1003
    :pswitch_a6
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1000
    :pswitch_af
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 997
    :pswitch_b8
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 994
    :pswitch_c1
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 991
    :pswitch_ca
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 988
    :pswitch_d3
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 1012
    :cond_dc
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown Advertisement Type!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 958
    :cond_e4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_1b8

    goto :goto_12f

    :sswitch_ec
    const-string v0, "postroll_view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x0

    goto :goto_130

    :sswitch_f6
    const-string v0, "video_close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    goto :goto_130

    :sswitch_ff
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x6

    goto :goto_130

    :sswitch_107
    const-string v0, "postroll_click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x1

    goto :goto_130

    :sswitch_111
    const-string v0, "mute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x2

    goto :goto_130

    :sswitch_11b
    const-string v0, "unmute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x3

    goto :goto_130

    :sswitch_125
    const-string v0, "click_url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12f

    const/4 v1, 0x5

    goto :goto_130

    :cond_12f
    :goto_12f
    const/4 v1, -0x1

    :goto_130
    packed-switch v1, :pswitch_data_1d6

    .line 974
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :pswitch_148
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 970
    :pswitch_151
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 968
    :pswitch_15a
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 966
    :pswitch_163
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 964
    :pswitch_16c
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 962
    :pswitch_175
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    .line 960
    :pswitch_17e
    iget-object p1, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    nop

    :sswitch_data_188
    .sparse-switch
        -0x6323f454 -> :sswitch_7b
        -0x4d148e89 -> :sswitch_71
        -0x1cb6f2fb -> :sswitch_67
        -0x1eba93b -> :sswitch_5d
        0x36073ac7 -> :sswitch_53
        0x51b1b4c4 -> :sswitch_4b
        0x60a4d4d6 -> :sswitch_41
    .end sparse-switch

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_d3
        :pswitch_ca
        :pswitch_c1
        :pswitch_b8
        :pswitch_af
        :pswitch_a6
        :pswitch_9d
    .end packed-switch

    :sswitch_data_1b8
    .sparse-switch
        -0x751b49c8 -> :sswitch_125
        -0x321793ce -> :sswitch_11b
        0x335219 -> :sswitch_111
        0x688e7e6 -> :sswitch_107
        0x51b1b4c4 -> :sswitch_ff
        0x51b1cd34 -> :sswitch_f6
        0x63575487 -> :sswitch_ec
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x0
        :pswitch_17e
        :pswitch_175
        :pswitch_16c
        :pswitch_163
        :pswitch_15a
        :pswitch_151
        :pswitch_148
    .end packed-switch
.end method

.method public getTtDownload()J
    .registers 3

    .line 307
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->ttDownload:J

    return-wide v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasPostroll()Z
    .registers 2

    .line 1134
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 920
    iget v0, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 921
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 922
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 923
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 924
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 925
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 926
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 927
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 928
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 929
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 930
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 931
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 932
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 933
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 934
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 935
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 936
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 937
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 938
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 939
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 940
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 941
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 942
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 943
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 944
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 945
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 946
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 947
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 948
    iget-boolean v1, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 949
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 950
    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 951
    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isCtaOverlayEnabled()Z
    .registers 2

    .line 339
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    return v0
.end method

.method public isRequiresNonMarketInstall()Z
    .registers 2

    .line 354
    iget-boolean v0, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    return v0
.end method

.method public setAdRequestStartTime(J)V
    .registers 3

    .line 328
    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    return-void
.end method

.method public setAssetDownloadStartTime(J)V
    .registers 3

    .line 319
    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    return-void
.end method

.method public setFinishedDownloadingTime(J)V
    .registers 5

    .line 323
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadStartTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->assetDownloadDuration:J

    .line 324
    iget-wide v0, p0, Lcom/vungle/warren/model/Advertisement;->adRequestStartTime:J

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/vungle/warren/model/Advertisement;->ttDownload:J

    return-void
.end method

.method public setMraidAssetDir(Ljava/io/File;)V
    .registers 8

    .line 1181
    iget-object v0, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1182
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1184
    invoke-direct {p0, v2}, Lcom/vungle/warren/model/Advertisement;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    .line 1185
    invoke-static {v2, v3, v3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1187
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1191
    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_55
    return-void
.end method

.method public setPlacementId(Ljava/lang/String;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/vungle/warren/model/Advertisement;->placementId:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/vungle/warren/model/Advertisement$State;
        .end annotation
    .end param

    .line 1198
    iput p1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Advertisement{adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->adType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vungle/warren/model/Advertisement;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appID=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->appID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/vungle/warren/model/Advertisement;->expireTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", checkpoints="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->checkpoints:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", muteUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->muteUrls:[Ljava/lang/String;

    .line 1306
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", unmuteUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->unmuteUrls:[Ljava/lang/String;

    .line 1307
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", closeUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->closeUrls:[Ljava/lang/String;

    .line 1308
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", postRollClickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollClickUrls:[Ljava/lang/String;

    .line 1309
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", postRollViewUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postRollViewUrls:[Ljava/lang/String;

    .line 1310
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", videoClickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoClickUrls:[Ljava/lang/String;

    .line 1311
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clickUrls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->clickUrls:[Ljava/lang/String;

    .line 1312
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->delay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", campaign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->campaign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseDelay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseDelay:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showCloseIncentivized="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->showCloseIncentivized:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", countdown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->countdown:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoWidth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->videoHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", md5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->md5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", postrollBundleUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->postrollBundleUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaOverlayEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaOverlayEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaClickArea="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaClickArea:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", ctaDestinationUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaDestinationUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ctaUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->ctaUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", adConfig="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adConfig:Lcom/vungle/warren/AdConfig;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vungle/warren/model/Advertisement;->retryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoIdentifier=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->videoIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateSettings="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateSettings:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mraidFiles="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->mraidFiles:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cacheableAssets="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->cacheableAssets:Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", templateId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", templateType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->templateType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", enableMoat="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->enableMoat:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", moatExtraVast=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->moatExtraVast:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", requiresNonMarketInstall="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/vungle/warren/model/Advertisement;->requiresNonMarketInstall:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", adMarketId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->adMarketId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bidToken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vungle/warren/model/Advertisement;->bidToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vungle/warren/model/Advertisement;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
