.class final Lcom/facebook/appevents/aam/MetadataViewObserver;
.super Ljava/lang/Object;
.source "MetadataViewObserver.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# static fields
.field private static final MAX_TEXT_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "com.facebook.appevents.aam.MetadataViewObserver"

.field private static final observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/appevents/aam/MetadataViewObserver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final processedText:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->processedText:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    .line 55
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->uiThreadHandler:Landroid/os/Handler;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V
    .registers 3

    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 43
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->processEditText(Landroid/view/View;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    const-class p1, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static preNormalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "r2"

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string p0, "[^\\d.]"

    const-string v0, ""

    .line 173
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_1c

    return-object p0

    :cond_1b
    return-object p1

    :catch_1c
    move-exception p0

    .line 175
    const-class p1, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private process(Landroid/view/View;)V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 122
    :cond_7
    :try_start_7
    new-instance v0, Lcom/facebook/appevents/aam/MetadataViewObserver$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/appevents/aam/MetadataViewObserver$1;-><init>(Lcom/facebook/appevents/aam/MetadataViewObserver;Landroid/view/View;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 134
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private processEditText(Landroid/view/View;)V
    .registers 10

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 137
    :cond_7
    :try_start_7
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9e

    iget-object v1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->processedText:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_31

    goto :goto_9e

    .line 141
    :cond_31
    iget-object v1, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->processedText:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-static {p1}, Lcom/facebook/appevents/aam/MetadataMatcher;->getCurrentViewIndicators(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 147
    invoke-static {}, Lcom/facebook/appevents/aam/MetadataRule;->getRules()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/appevents/aam/MetadataRule;

    .line 148
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->preNormalize(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getValRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_71

    .line 151
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getValRule()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/facebook/appevents/aam/MetadataMatcher;->matchValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_71

    goto :goto_48

    .line 156
    :cond_71
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getKeyRules()Ljava/util/List;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/facebook/appevents/aam/MetadataMatcher;->matchIndicator(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 157
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v6}, Lcom/facebook/appevents/aam/MetadataViewObserver;->putUserData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_83
    if-nez v3, :cond_89

    .line 162
    invoke-static {p1}, Lcom/facebook/appevents/aam/MetadataMatcher;->getAroundViewIndicators(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    .line 164
    :cond_89
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getKeyRules()Ljava/util/List;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/facebook/appevents/aam/MetadataMatcher;->matchIndicator(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_48

    .line 165
    invoke-virtual {v5}, Lcom/facebook/appevents/aam/MetadataRule;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v6}, Lcom/facebook/appevents/aam/MetadataViewObserver;->putUserData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 168
    :cond_9b
    invoke-static {v1}, Lcom/facebook/appevents/InternalAppEventsLogger;->setInternalUserData(Ljava/util/Map;)V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_9e} :catch_9f

    :cond_9e
    :goto_9e
    return-void

    :catch_9f
    move-exception p1

    .line 169
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static putUserData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "-"

    const-class v1, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    const/4 v1, -0x1

    .line 179
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_86

    goto :goto_3f

    :pswitch_18
    const-string v2, "r6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v1, 0x3

    goto :goto_3f

    :pswitch_22
    const-string v2, "r5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v1, 0x2

    goto :goto_3f

    :pswitch_2c
    const-string v2, "r4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v1, 0x1

    goto :goto_3f

    :pswitch_36
    const-string v2, "r3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_3c} :catch_7f

    if-eqz v2, :cond_3f

    const/4 v1, 0x0

    :cond_3f
    :goto_3f
    const-string v2, "m"

    if-eqz v1, :cond_60

    if-eq v1, v6, :cond_57

    if-eq v1, v5, :cond_57

    if-eq v1, v4, :cond_4a

    goto :goto_7b

    .line 192
    :cond_4a
    :try_start_4a
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 194
    aget-object p2, p2, v3

    goto :goto_7b

    :cond_57
    const-string v0, "[^a-z]+"

    const-string v1, ""

    .line 189
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_7b

    .line 181
    :cond_60
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "b"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "ge"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_77

    goto :goto_7a

    :cond_77
    const-string p2, "f"

    goto :goto_7b

    :cond_7a
    :goto_7a
    move-object p2, v2

    .line 198
    :cond_7b
    :goto_7b
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_7e} :catch_7f

    return-void

    :catch_7f
    move-exception p0

    .line 199
    const-class p1, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :pswitch_data_86
    .packed-switch 0xe01
        :pswitch_36
        :pswitch_2c
        :pswitch_22
        :pswitch_18
    .end packed-switch
.end method

.method private runOnUIThread(Ljava/lang/Runnable;)V
    .registers 4

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 202
    :cond_7
    :try_start_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    .line 203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1e

    .line 205
    :cond_19
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception p1

    .line 207
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private startTracking()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 83
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_11

    return-void

    .line 86
    :cond_11
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 90
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 92
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2d} :catch_2e

    :cond_2d
    return-void

    :catch_2e
    move-exception v0

    .line 94
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static startTrackingActivity(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 61
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 63
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 64
    new-instance v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/aam/MetadataViewObserver;-><init>(Landroid/app/Activity;)V

    .line 65
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 67
    :cond_2c
    sget-object p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    .line 69
    :goto_39
    invoke-direct {v0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->startTracking()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception p0

    .line 70
    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private stopTracking()V
    .registers 3

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 97
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 100
    :cond_11
    iget-object v0, p0, Lcom/facebook/appevents/aam/MetadataViewObserver;->activityWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/appevents/internal/AppEventUtility;->getRootView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    return-void

    .line 104
    :cond_20
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2b

    return-void

    .line 108
    :cond_2b
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalFocusChangeListener(Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2e} :catch_2f

    return-void

    :catch_2f
    move-exception v0

    .line 109
    invoke-static {v0, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method static stopTrackingActivity(Landroid/app/Activity;)V
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 74
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 75
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 76
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    .line 77
    sget-object v1, Lcom/facebook/appevents/aam/MetadataViewObserver;->observers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-direct {p0}, Lcom/facebook/appevents/aam/MetadataViewObserver;->stopTracking()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_35} :catch_36

    :cond_35
    return-void

    :catch_36
    move-exception p0

    .line 80
    const-class v0, Lcom/facebook/appevents/aam/MetadataViewObserver;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_f

    .line 114
    :try_start_9
    invoke-direct {p0, p1}, Lcom/facebook/appevents/aam/MetadataViewObserver;->process(Landroid/view/View;)V

    goto :goto_f

    :catch_d
    move-exception p1

    goto :goto_15

    :cond_f
    :goto_f
    if-eqz p2, :cond_18

    .line 117
    invoke-direct {p0, p2}, Lcom/facebook/appevents/aam/MetadataViewObserver;->process(Landroid/view/View;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_14} :catch_d

    goto :goto_18

    .line 119
    :goto_15
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_18
    :goto_18
    return-void
.end method
