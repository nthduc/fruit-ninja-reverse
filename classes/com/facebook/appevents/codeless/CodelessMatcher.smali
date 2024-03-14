.class Lcom/facebook/appevents/codeless/CodelessMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;,
        Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    }
.end annotation


# static fields
.field private static final CURRENT_CLASS_NAME:Ljava/lang/String; = "."

.field private static final PARENT_CLASS_NAME:Ljava/lang/String; = ".."

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.codeless.CodelessMatcher"

.field private static codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;


# instance fields
.field private activitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private activityToListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listenerSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;

.field private viewMatchers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    .line 78
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/codeless/CodelessMatcher;)V
    .registers 2

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 61
    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 61
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessMatcher;->TAG:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/facebook/appevents/codeless/CodelessMatcher;
    .registers 4

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    monitor-enter v0

    :try_start_3
    const-class v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_25

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    monitor-exit v0

    return-object v2

    .line 83
    :cond_e
    :try_start_e
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    if-nez v1, :cond_19

    .line 84
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {v1}, Lcom/facebook/appevents/codeless/CodelessMatcher;-><init>()V

    sput-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 86
    :cond_19
    sget-object v1, Lcom/facebook/appevents/codeless/CodelessMatcher;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1b} :catch_1d
    .catchall {:try_start_e .. :try_end_1b} :catchall_25

    monitor-exit v0

    return-object v1

    :catch_1d
    move-exception v1

    :try_start_1e
    const-class v3, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v1, v3}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    monitor-exit v0

    return-object v2

    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;
    .registers 14
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-class v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 127
    :cond_a
    :try_start_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p0, :cond_12

    return-object v0

    .line 133
    :cond_12
    invoke-virtual {p0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewParameters()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9f

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;

    .line 136
    iget-object v4, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    if-eqz v4, :cond_3c

    iget-object v4, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    .line 137
    iget-object v4, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .line 138
    :cond_3c
    iget-object v4, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    .line 140
    iget-object v4, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->pathType:Ljava/lang/String;

    const-string v5, "relative"

    .line 141
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 142
    iget-object v7, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 144
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    move-object v5, p0

    move-object v6, p2

    .line 143
    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    goto :goto_73

    .line 146
    :cond_61
    iget-object v6, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, -0x1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    .line 147
    invoke-static/range {v4 .. v9}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 151
    :goto_73
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 152
    invoke-virtual {v5}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_8a

    goto :goto_77

    .line 155
    :cond_8a
    invoke-virtual {v5}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_77

    .line 157
    iget-object v3, v3, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_9d} :catch_a0

    goto/16 :goto_1c

    :cond_9f
    return-object v0

    :catch_a0
    move-exception p0

    .line 165
    const-class p1, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private matchViews()V
    .registers 7

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 183
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 185
    invoke-static {v1}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 187
    new-instance v3, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;

    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-direct {v3, v2, v4, v5, v1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;-><init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_35} :catch_37

    goto :goto_d

    :cond_36
    return-void

    :catch_37
    move-exception v0

    .line 191
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private startTracking()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 169
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 170
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->matchViews()V

    goto :goto_23

    .line 172
    :cond_19
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$1;-><init>(Lcom/facebook/appevents/codeless/CodelessMatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    .line 180
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 91
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 94
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_4c

    .line 97
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 99
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 100
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    .line 102
    :cond_48
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->startTracking()V

    return-void

    .line 95
    :cond_4c
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t add activity to CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_54} :catch_54

    :catch_54
    move-exception p1

    .line 103
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public destroy(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 121
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p1

    .line 122
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 107
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 110
    :cond_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_41

    .line 113
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->viewMatchers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 115
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->activityToListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object p1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher;->listenerSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    return-void

    .line 111
    :cond_41
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t remove activity from CodelessMatcher on non-UI thread"

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_49} :catch_49

    :catch_49
    move-exception p1

    .line 117
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
