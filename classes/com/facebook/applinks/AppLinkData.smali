.class public Lcom/facebook/applinks/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/applinks/AppLinkData$CompletionHandler;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_EXTRAS_KEY:Ljava/lang/String; = "extras"

.field public static final ARGUMENTS_NATIVE_CLASS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_CLASS"

.field public static final ARGUMENTS_NATIVE_URL:Ljava/lang/String; = "com.facebook.platform.APPLINK_NATIVE_URL"

.field public static final ARGUMENTS_REFERER_DATA_KEY:Ljava/lang/String; = "referer_data"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final AUTO_APPLINK_FLAG_KEY:Ljava/lang/String; = "is_auto_applink"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_AL_APPLINK_DATA_KEY:Ljava/lang/String; = "al_applink_data"

.field private static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final DEFERRED_APP_LINK_ARGS_FIELD:Ljava/lang/String; = "applink_args"

.field private static final DEFERRED_APP_LINK_CLASS_FIELD:Ljava/lang/String; = "applink_class"

.field private static final DEFERRED_APP_LINK_CLICK_TIME_FIELD:Ljava/lang/String; = "click_time"

.field private static final DEFERRED_APP_LINK_EVENT:Ljava/lang/String; = "DEFERRED_APP_LINK"

.field private static final DEFERRED_APP_LINK_PATH:Ljava/lang/String; = "%s/activities"

.field private static final DEFERRED_APP_LINK_URL_FIELD:Ljava/lang/String; = "applink_url"

.field private static final EXTRAS_DEEPLINK_CONTEXT_KEY:Ljava/lang/String; = "deeplink_context"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final PROMOTION_CODE_KEY:Ljava/lang/String; = "promo_code"

.field private static final REFERER_DATA_REF_KEY:Ljava/lang/String; = "fb_ref"

.field private static final TAG:Ljava/lang/String; = "com.facebook.applinks.AppLinkData"


# instance fields
.field private appLinkData:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private argumentBundle:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private arguments:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private promotionCode:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ref:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private targetUri:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3

    .line 48
    invoke-static {p0, p1, p2}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/applinks/AppLinkData;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "activity"

    .line 243
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v1

    .line 249
    :cond_16
    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    if-nez v0, :cond_26

    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0

    :cond_26
    if-nez v0, :cond_30

    .line 256
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_30} :catch_31

    :cond_30
    return-object v0

    :catch_31
    move-exception p0

    .line 259
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static createFromAlApplinkData(Landroid/content/Intent;)Lcom/facebook/applinks/AppLinkData;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "promo_code"

    const-class v1, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    if-nez p0, :cond_f

    return-object v2

    :cond_f
    :try_start_f
    const-string v1, "al_applink_data"

    .line 275
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_18

    return-object v2

    .line 280
    :cond_18
    new-instance v3, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v3}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 281
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 282
    iget-object p0, v3, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 283
    iget-object p0, v3, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    if-nez p0, :cond_3d

    const-string p0, "target_url"

    .line 284
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3d

    .line 286
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 289
    :cond_3d
    iput-object v1, v3, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 290
    iput-object v2, v3, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string p0, "referer_data"

    .line 291
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_51

    const-string v4, "fb_ref"

    .line 293
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    :cond_51
    const-string p0, "extras"

    .line 296
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7b

    const-string v1, "deeplink_context"

    .line 298
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_5f} :catch_7c

    if-eqz p0, :cond_7b

    .line 301
    :try_start_61
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 303
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_61 .. :try_end_72} :catch_73
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_72} :catch_7c

    goto :goto_7b

    :catch_73
    move-exception p0

    .line 306
    :try_start_74
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v1, "Unable to parse deeplink_context JSON"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_7b} :catch_7c

    :cond_7b
    :goto_7b
    return-object v3

    :catch_7c
    move-exception p0

    .line 311
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "promo_code"

    const-string v1, "deeplink_context"

    const-string v2, "extras"

    const-string v3, "fb_ref"

    const-string v4, "target_url"

    const-string v5, "referer_data"

    const-string v6, "ref"

    const-string v7, "Unable to parse AppLink JSON"

    const/4 v8, 0x0

    if-nez p0, :cond_14

    return-object v8

    .line 322
    :cond_14
    :try_start_14
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 323
    invoke-virtual {v9, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v10, "bridge_args"

    .line 325
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "method"

    .line 326
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "applink"

    .line 327
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    const-string v10, "2"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c9

    .line 329
    new-instance p0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {p0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    const-string v10, "method_args"

    .line 331
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 333
    iget-object v9, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_59

    .line 334
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    goto :goto_73

    .line 335
    :cond_59
    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 337
    iget-object v6, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 338
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 339
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    .line 343
    :cond_73
    :goto_73
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 344
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 345
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 346
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    .line 349
    :cond_8f
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 350
    iget-object v3, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 351
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 352
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 353
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 354
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    .line 359
    :cond_b3
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;
    :try_end_bb
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_bb} :catch_c3
    .catch Lcom/facebook/FacebookException; {:try_start_14 .. :try_end_bb} :catch_bc

    return-object p0

    :catch_bc
    move-exception p0

    .line 366
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    invoke-static {v0, v7, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c9

    :catch_c3
    move-exception p0

    .line 364
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    invoke-static {v0, v7, p0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c9
    :goto_c9
    return-object v8
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/applinks/AppLinkData;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 378
    :cond_4
    new-instance v0, Lcom/facebook/applinks/AppLinkData;

    invoke-direct {v0}, Lcom/facebook/applinks/AppLinkData;-><init>()V

    .line 379
    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    .line 380
    iget-object p0, v0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/facebook/applinks/AppLinkData;->getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;

    move-result-object p0

    iput-object p0, v0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 3

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0, p1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 5

    const-string v0, "context"

    .line 127
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    .line 128
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_10

    .line 131
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_10
    const-string v0, "applicationId"

    .line 134
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 138
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/applinks/AppLinkData$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/applinks/AppLinkData$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static fetchDeferredAppLinkFromServer(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V
    .registers 10

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "event"

    const-string v2, "DEFERRED_APP_LINK"

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 158
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->getAnonymousAppDeviceGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v3

    .line 155
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Utility;->setAppEventAttributionParameters(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V

    .line 161
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->setAppEventExtendedDeviceInfoParameters(Lorg/json/JSONObject;Landroid/content/Context;)V

    const-string v1, "application_package_name"

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2b} :catch_d8

    const/4 p0, 0x1

    .line 167
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "%s/activities"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 172
    :try_start_38
    invoke-static {p1, p0, v0, p1}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_d4

    const-string v0, "applink_args"

    .line 176
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "click_time"

    const-wide/16 v2, -0x1

    .line 177
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "applink_class"

    .line 178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "applink_url"

    .line 179
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d4

    .line 182
    invoke-static {v0}, Lcom/facebook/applinks/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/applinks/AppLinkData;

    move-result-object p1
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_6a} :catch_cd

    if-eqz p1, :cond_d4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_90

    .line 186
    :try_start_70
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_70 .. :try_end_72} :catch_89
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_72} :catch_cd

    const-string v2, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    if-eqz v0, :cond_7b

    .line 187
    :try_start_76
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 189
    :cond_7b
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_90

    .line 190
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    .line 191
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_76 .. :try_end_88} :catch_89
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_88} :catch_cd

    goto :goto_90

    .line 194
    :catch_89
    :try_start_89
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v0, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_cd

    :cond_90
    :goto_90
    if-eqz v1, :cond_ae

    .line 200
    :try_start_92
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;
    :try_end_94
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_94} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_94} :catch_cd

    const-string v2, "com.facebook.platform.APPLINK_NATIVE_CLASS"

    if-eqz v0, :cond_9d

    .line 201
    :try_start_98
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_9d
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_ae

    .line 204
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a6
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_a6} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a6} :catch_cd

    goto :goto_ae

    .line 208
    :catch_a7
    :try_start_a7
    sget-object v0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v1, "Unable to put app link class name in AppLinkData.arguments"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_ae} :catch_cd

    :cond_ae
    :goto_ae
    if-eqz p0, :cond_d4

    .line 214
    :try_start_b0
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_b0 .. :try_end_b2} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b2} :catch_cd

    const-string v1, "com.facebook.platform.APPLINK_NATIVE_URL"

    if-eqz v0, :cond_bb

    .line 215
    :try_start_b6
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->arguments:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    :cond_bb
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_d4

    .line 218
    iget-object v0, p1, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Lorg/json/JSONException; {:try_start_b6 .. :try_end_c4} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c4} :catch_cd

    goto :goto_d4

    .line 221
    :catch_c5
    :try_start_c5
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v0, "Unable to put app link URL in AppLinkData.arguments"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cc} :catch_cd

    goto :goto_d4

    .line 228
    :catch_cd
    sget-object p0, Lcom/facebook/applinks/AppLinkData;->TAG:Ljava/lang/String;

    const-string v0, "Unable to fetch deferred applink from server"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_d4
    :goto_d4
    invoke-interface {p2, p1}, Lcom/facebook/applinks/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V

    return-void

    :catch_d8
    move-exception p0

    .line 164
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p2, "An error occurred while preparing deferred app link"

    invoke-direct {p1, p2, p0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getAppLinkData(Landroid/net/Uri;)Lorg/json/JSONObject;
    .registers 3
    .param p0    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    if-nez p0, :cond_d

    return-object v1

    :cond_d
    :try_start_d
    const-string v0, "al_applink_data"

    .line 431
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_13} :catch_1d

    if-nez p0, :cond_16

    return-object v1

    .line 436
    :cond_16
    :try_start_16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_1d

    return-object v0

    :catch_1c
    return-object v1

    :catch_1d
    move-exception p0

    .line 440
    const-class v0, Lcom/facebook/applinks/AppLinkData;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 385
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 386
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 387
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    .line 388
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 390
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 392
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_27

    .line 393
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    .line 394
    :cond_27
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_88

    .line 395
    check-cast v3, Lorg/json/JSONArray;

    .line 396
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_3a

    .line 397
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    .line 399
    :cond_3a
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 400
    instance-of v6, v4, Lorg/json/JSONObject;

    if-eqz v6, :cond_5f

    .line 401
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Landroid/os/Bundle;

    .line 402
    :goto_48
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5b

    .line 403
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/applinks/AppLinkData;->toBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_48

    .line 405
    :cond_5b
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_9

    .line 406
    :cond_5f
    instance-of v4, v4, Lorg/json/JSONArray;

    if-nez v4, :cond_80

    .line 410
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 411
    :goto_69
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7c

    .line 412
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_69

    .line 414
    :cond_7c
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_9

    .line 408
    :cond_80
    new-instance p0, Lcom/facebook/FacebookException;

    const-string v0, "Nested arrays are not supported."

    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 418
    :cond_88
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_91
    return-object v0
.end method


# virtual methods
.method public getAppLinkData()Lorg/json/JSONObject;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    goto :goto_a

    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_a
    return-object v0
.end method

.method public getArgumentBundle()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->promotionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getRefererData()Landroid/os/Bundle;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->argumentBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    const-string v1, "referer_data"

    .line 507
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isAutoAppLink()Z
    .registers 8

    .line 446
    iget-object v0, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 449
    :cond_6
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v2, p0, Lcom/facebook/applinks/AppLinkData;->targetUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 452
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "fb%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 453
    iget-object v5, p0, Lcom/facebook/applinks/AppLinkData;->appLinkData:Lorg/json/JSONObject;

    if-eqz v5, :cond_2d

    const-string v6, "is_auto_applink"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v5, 0x0

    :goto_2e
    if-eqz v5, :cond_3f

    const-string v5, "applinks"

    .line 454
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1
.end method
