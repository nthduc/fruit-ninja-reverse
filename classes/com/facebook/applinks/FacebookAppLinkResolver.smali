.class public Lcom/facebook/applinks/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"

# interfaces
.implements Lbolts/AppLinkResolver;


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_KEY:Ljava/lang/String; = "app_links"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 1

    .line 47
    invoke-static {p0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 2

    .line 47
    invoke-static {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object p0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 6

    const/4 v0, 0x0

    const-string v1, "package"

    .line 198
    invoke-static {p0, v1, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v0

    :cond_a
    const-string v2, "class"

    .line 203
    invoke-static {p0, v2, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_name"

    .line 204
    invoke-static {p0, v3, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    .line 205
    invoke-static {p0, v4, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 208
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    :cond_22
    new-instance p0, Lbolts/AppLink$Target;

    invoke-direct {p0, v1, v2, v0, v3}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 4

    :try_start_0
    const-string v0, "web"

    .line 218
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "should_fallback"

    const/4 v1, 0x1

    .line 220
    invoke-static {p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return-object v1

    :cond_11
    const-string v0, "url"

    .line 226
    invoke-static {p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 229
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_22

    goto :goto_1f

    :cond_1e
    move-object p1, v1

    :goto_1f
    if-eqz p1, :cond_22

    move-object p0, p1

    :catch_22
    :cond_22
    return-object p0
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 3

    .line 252
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    return p2
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 243
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    return-object p2
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {p0, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/facebook/applinks/FacebookAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    return-object p1
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task<",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 99
    iget-object v4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v4

    .line 100
    :try_start_22
    iget-object v5, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbolts/AppLink;

    .line 101
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_47

    if-eqz v5, :cond_31

    .line 104
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 106
    :cond_31
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    const/16 v4, 0x2c

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_3c
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catchall_47
    move-exception p1

    .line 101
    :try_start_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1

    .line 114
    :cond_4a
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_55

    .line 115
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object p1

    return-object p1

    .line 118
    :cond_55
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object p1

    .line 120
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ids"

    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 123
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "app_links"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "web"

    aput-object v4, v2, v3

    const-string v3, "%s.fields(%s,%s)"

    .line 125
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fields"

    .line 123
    invoke-virtual {v6, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcom/facebook/GraphRequest;

    .line 132
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v4

    const/4 v7, 0x0

    new-instance v8, Lcom/facebook/applinks/FacebookAppLinkResolver$2;

    invoke-direct {v8, p0, p1, v0, v1}, Lcom/facebook/applinks/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    const-string v5, ""

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 192
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 194
    invoke-virtual {p1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

    return-object p1
.end method
