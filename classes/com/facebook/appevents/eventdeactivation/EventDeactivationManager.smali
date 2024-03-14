.class public final Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;
.super Ljava/lang/Object;
.source "EventDeactivationManager.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;
    }
.end annotation


# static fields
.field private static final deprecatedEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final deprecatedParamFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static enabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable()V
    .registers 2

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    .line 48
    :try_start_a
    sput-boolean v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    .line 49
    invoke-static {}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->initialize()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 50
    const-class v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static declared-synchronized initialize()V
    .registers 7

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    monitor-enter v0

    :try_start_3
    const-class v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7a

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 55
    :cond_d
    :try_start_d
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_16} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_70
    .catchall {:try_start_d .. :try_end_16} :catchall_7a

    if-nez v1, :cond_1a

    .line 57
    monitor-exit v0

    return-void

    .line 59
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getRestrictiveDataSetting()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_78

    .line 61
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    sget-object v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    :cond_32
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_32

    const-string v5, "is_deprecated_event"

    .line 70
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 71
    sget-object v4, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_52
    const-string v5, "deprecated_param"

    .line 73
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 74
    new-instance v5, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v5, v3, v6}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;-><init>(Ljava/lang/String;Ljava/util/List;)V

    if-eqz v4, :cond_6a

    .line 78
    invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v5, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->deprecateParams:Ljava/util/List;

    .line 80
    :cond_6a
    sget-object v3, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_6f} :catch_78
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_6f} :catch_70
    .catchall {:try_start_1a .. :try_end_6f} :catchall_7a

    goto :goto_32

    :catch_70
    move-exception v1

    .line 88
    :try_start_71
    const-class v2, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v1, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_71 .. :try_end_76} :catchall_7a

    monitor-exit v0

    return-void

    :catch_78
    :cond_78
    monitor-exit v0

    return-void

    :catchall_7a
    move-exception v1

    monitor-exit v0

    throw v1

    return-void
.end method

.method public static processDeprecatedParameters(Ljava/util/Map;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 105
    :cond_9
    :try_start_9
    sget-boolean v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    if-nez v0, :cond_e

    return-void

    .line 108
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedParamFilters:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;

    .line 112
    iget-object v3, v2, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->eventName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_22

    .line 115
    :cond_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 116
    iget-object v5, v2, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager$DeprecatedParamFilter;->deprecateParams:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 117
    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_52} :catch_54

    goto :goto_3b

    :cond_53
    return-void

    :catch_54
    move-exception p0

    .line 121
    const-class p1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public static processEvents(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/AppEvent;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 91
    :cond_9
    :try_start_9
    sget-boolean v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->enabled:Z

    if-nez v0, :cond_e

    return-void

    .line 95
    :cond_e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 96
    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 97
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/AppEvent;

    .line 98
    sget-object v1, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->deprecatedEvents:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/facebook/appevents/AppEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 99
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_2d} :catch_2f

    goto :goto_12

    :cond_2e
    return-void

    :catch_2f
    move-exception p0

    .line 102
    const-class v0, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
