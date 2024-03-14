.class public final Lcom/applovin/sdk/AppLovinSdk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/sdk/AppLovinSdk$a;,
        Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovinSdk"

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_CODE:I

.field private static final sdkInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/applovin/sdk/AppLovinSdk;",
            ">;"
        }
    .end annotation
.end field

.field private static final sdkInstancesLock:Ljava/lang/Object;


# instance fields
.field public final coreSdk:Lcom/applovin/impl/sdk/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdk;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/applovin/sdk/AppLovinSdk;->getVersionCode()I

    move-result v0

    sput v0, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstancesLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/sdk/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    return-void
.end method

.method public static a(ZLjava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .registers 7

    if-eqz p2, :cond_86

    if-eqz p3, :cond_7e

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object p0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/sdk/AppLovinSdk;

    monitor-exit v0

    return-object p0

    :cond_19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n**************************************************\nINVALID SDK KEY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n**************************************************\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinSdk"

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    sget-object p0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/applovin/sdk/AppLovinSdk;

    monitor-exit v0

    return-object p0

    :cond_5c
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_64
    new-instance v1, Lcom/applovin/impl/sdk/j;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/j;-><init>()V

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/j;->a(ZLjava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)V

    new-instance p0, Lcom/applovin/sdk/AppLovinSdk;

    invoke-direct {p0, v1}, Lcom/applovin/sdk/AppLovinSdk;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {v1, p0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/sdk/AppLovinSdk;)V

    sget-object p2, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_7b

    throw p0

    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No context specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No userSettings specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/applovin/sdk/AppLovinSdk;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .registers 2

    new-instance v0, Lcom/applovin/sdk/AppLovinSdk$a;

    invoke-direct {v0, p0}, Lcom/applovin/sdk/AppLovinSdk$a;-><init>(Landroid/content/Context;)V

    invoke-static {v0, p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .registers 5

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/c;

    move-result-object v0

    const-string v1, "applovin.sdk.key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No context specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->a(ZLjava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    return-object p0
.end method

.method private static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "9.13.4"

    return-object v0
.end method

.method private static getVersionCode()I
    .registers 1

    const v0, 0x164a8

    return v0
.end method

.method public static initializeSdk(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public static initializeSdk(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .registers 2

    if-eqz p0, :cond_14

    invoke-static {p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    goto :goto_13

    :cond_c
    const-string p0, "AppLovinSdk"

    const-string p1, "Unable to initialize AppLovin SDK: SDK object not created"

    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No context specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static reinitializeAll(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 10

    sget-object v0, Lcom/applovin/sdk/AppLovinSdk;->sdkInstancesLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/sdk/AppLovinSdk;->sdkInstances:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/sdk/AppLovinSdk;

    iget-object v3, v2, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->b()V

    if-eqz p0, :cond_4f

    iget-object v3, v2, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    const-string v4, "AppLovinSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggled \'huc\' to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getEventService()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v4

    const-string v5, "huc"

    invoke-interface {v4, v5, v3}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4f
    if-eqz p1, :cond_80

    iget-object v3, v2, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    const-string v4, "AppLovinSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggled \'aru\' to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getEventService()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v4

    const-string v5, "aru"

    invoke-interface {v4, v5, v3}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_80
    if-eqz p2, :cond_d

    iget-object v3, v2, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    const-string v4, "AppLovinSdk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toggled \'dns\' to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getEventService()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v2

    const-string v4, "dns"

    invoke-interface {v2, v4, v3}, Lcom/applovin/sdk/AppLovinEventService;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_d

    :cond_b3
    monitor-exit v0

    return-void

    :catchall_b5
    move-exception p0

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_3 .. :try_end_b7} :catchall_b5

    throw p0

    return-void
.end method


# virtual methods
.method public getAdService()Lcom/applovin/sdk/AppLovinAdService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->o()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method getApplicationContext()Landroid/content/Context;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/applovin/sdk/AppLovinSdkConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->m()Lcom/applovin/sdk/AppLovinSdkConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getEventService()Lcom/applovin/sdk/AppLovinEventService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->q()Lcom/applovin/sdk/AppLovinEventService;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Lcom/applovin/impl/sdk/q;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    return-object v0
.end method

.method public getMediationProvider()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAdService()Lcom/applovin/nativeAds/AppLovinNativeAdService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->p()Lcom/applovin/impl/sdk/NativeAdServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPostbackService()Lcom/applovin/sdk/AppLovinPostbackService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->S()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSdkKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lcom/applovin/sdk/AppLovinSdkSettings;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->l()Lcom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserService()Lcom/applovin/sdk/AppLovinUserService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->r()Lcom/applovin/sdk/AppLovinUserService;

    move-result-object v0

    return-object v0
.end method

.method public getVariableService()Lcom/applovin/sdk/AppLovinVariableService;
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->s()Lcom/applovin/impl/sdk/VariableServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public hasCriticalErrors()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->u()Z

    move-result v0

    return v0
.end method

.method public initializeSdk()V
    .registers 1

    return-void
.end method

.method public initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->d()Z

    move-result v0

    return v0
.end method

.method public setMediationProvider(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setPluginVersion(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method public showMediationDebugger()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->h()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinSdk{sdkKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinSdk;->getSdkKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/sdk/AppLovinSdk;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->J()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
