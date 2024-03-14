.class public final Lcom/facebook/internal/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FeatureManager$Callback;,
        Lcom/facebook/internal/FeatureManager$Feature;
    }
.end annotation


# static fields
.field private static final FEATURE_MANAGER_STORE:Ljava/lang/String; = "com.facebook.internal.FEATURE_MANAGER"

.field private static final featureMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/internal/FeatureManager$Feature;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFeature(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V
    .registers 3

    .line 42
    new-instance v0, Lcom/facebook/internal/FeatureManager$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/internal/FeatureManager$1;-><init>(Lcom/facebook/internal/FeatureManager$Callback;Lcom/facebook/internal/FeatureManager$Feature;)V

    invoke-static {v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync(Lcom/facebook/internal/FetchedAppGateKeepersManager$Callback;)V

    return-void
.end method

.method private static defaultStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .registers 2

    .line 156
    sget-object v0, Lcom/facebook/internal/FeatureManager$2;->$SwitchMap$com$facebook$internal$FeatureManager$Feature:[I

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_10

    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static disableFeature(Lcom/facebook/internal/FeatureManager$Feature;)V
    .registers 4

    .line 77
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.FEATURE_MANAGER"

    const/4 v2, 0x0

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 81
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getFeature(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;
    .registers 7

    .line 85
    invoke-static {}, Lcom/facebook/internal/FeatureManager;->initializeFeatureMapping()V

    .line 86
    sget-object v0, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_d

    aget-object v5, v2, v4

    .line 88
    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 89
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 93
    :cond_35
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method private static getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .registers 3

    .line 149
    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->defaultStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static declared-synchronized initializeFeatureMapping()V
    .registers 4

    const-class v0, Lcom/facebook/internal/FeatureManager;

    monitor-enter v0

    .line 97
    :try_start_3
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_84

    if-nez v1, :cond_d

    .line 98
    monitor-exit v0

    return-void

    .line 101
    :cond_d
    :try_start_d
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.aam."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->CodelessEvents:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.codeless."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->ErrorReport:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.internal.instrument.errorreport."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.ml."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->SuggestedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.suggestedevents."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->IntelligentIntegrity:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.integrity.IntegrityManager"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.appevents.eventdeactivation."

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lcom/facebook/internal/FeatureManager;->featureMapping:Ljava/util/Map;

    sget-object v2, Lcom/facebook/internal/FeatureManager$Feature;->Monitoring:Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "com.facebook.internal.logging.monitor"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_82
    .catchall {:try_start_d .. :try_end_82} :catchall_84

    .line 146
    monitor-exit v0

    return-void

    :catchall_84
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z
    .registers 6

    .line 52
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Unknown:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_6

    return v1

    .line 56
    :cond_6
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->Core:Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v2, 0x1

    if-ne v0, p0, :cond_c

    return v2

    .line 61
    :cond_c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.facebook.internal.FEATURE_MANAGER"

    .line 62
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 64
    invoke-static {}, Lcom/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    return v1

    .line 68
    :cond_2c
    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->getParent()Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    if-ne v0, p0, :cond_37

    .line 70
    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    return p0

    .line 72
    :cond_37
    invoke-static {v0}, Lcom/facebook/internal/FeatureManager;->isEnabled(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->getGKStatus(Lcom/facebook/internal/FeatureManager$Feature;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 v1, 0x1

    :cond_44
    return v1
.end method
