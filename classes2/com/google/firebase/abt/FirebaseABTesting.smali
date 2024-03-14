.class public Lcom/google/firebase/abt/FirebaseABTesting;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-abt@@19.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/abt/FirebaseABTesting$OriginService;
    }
.end annotation


# static fields
.field static final ABT_PREFERENCES:Ljava/lang/String; = "com.google.firebase.abt"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ORIGIN_LAST_KNOWN_START_TIME_KEY_FORMAT:Ljava/lang/String; = "%s_lastKnownExperimentStartTime"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

.field private maxUserProperties:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final originService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/analytics/connector/AnalyticsConnector;Ljava/lang/String;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 97
    iput-object p3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    const/4 p1, 0x0

    .line 99
    iput-object p1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    return-void
.end method

.method private addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V
    .registers 3

    .line 338
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-interface {v0, p1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    return-void
.end method

.method private addExperiments(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayDeque;

    .line 302
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 304
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getMaxUserPropertiesInAnalytics()I

    move-result v1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 307
    :goto_1d
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v3

    if-lt v3, v1, :cond_2f

    .line 308
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    iget-object v3, v3, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    goto :goto_1d

    .line 311
    :cond_2f
    iget-object v3, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/abt/AbtExperimentInfo;->toConditionalUserProperty(Ljava/lang/String;)Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    move-result-object v2

    .line 312
    invoke-direct {p0, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperimentToAnalytics(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)V

    .line 313
    invoke-interface {v0, v2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3c
    return-void
.end method

.method private static convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 332
    invoke-static {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method private getAllExperimentsInAnalytics()Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 291
    invoke-virtual {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 292
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method

.method private getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 275
    iget-object v2, v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 276
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method private getMaxUserPropertiesInAnalytics()I
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    if-nez v0, :cond_12

    .line 362
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    iget-object v1, p0, Lcom/google/firebase/abt/FirebaseABTesting;->originService:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->getMaxUserProperties(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    .line 364
    :cond_12
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->maxUserProperties:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private removeExperimentFromAnalytics(Ljava/lang/String;)V
    .registers 4

    .line 355
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private removeExperiments(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 319
    iget-object v0, v0, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperimentFromAnalytics(Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    return-void
.end method

.method private replaceAllExperimentsWith(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 245
    invoke-virtual {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeAllExperiments()V

    return-void

    .line 249
    :cond_a
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 250
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 251
    invoke-virtual {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 254
    :cond_27
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v1

    .line 255
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 256
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 257
    iget-object v4, v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 261
    :cond_46
    invoke-direct {p0, v1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v0

    .line 262
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    .line 265
    invoke-direct {p0, p1, v2}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToAdd(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 266
    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    return-void
.end method

.method private throwAbtExceptionIfAnalyticsIsNull()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/firebase/abt/FirebaseABTesting;->analyticsConnector:Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    if-eqz v0, :cond_5

    return-void

    .line 343
    :cond_5
    new-instance v0, Lcom/google/firebase/abt/AbtException;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lcom/google/firebase/abt/AbtException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAllExperiments()Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 159
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;

    .line 163
    invoke-static {v2}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromConditionalUserProperty(Lcom/google/firebase/analytics/connector/AnalyticsConnector$ConditionalUserProperty;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_24
    return-object v1
.end method

.method public removeAllExperiments()V
    .registers 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 144
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    return-void
.end method

.method public replaceAllExperiments(Ljava/util/List;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    if-eqz p1, :cond_d

    .line 129
    invoke-static {p1}, Lcom/google/firebase/abt/FirebaseABTesting;->convertMapsToExperimentInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->replaceAllExperimentsWith(Ljava/util/List;)V

    return-void

    .line 126
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The replacementExperiments list is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reportActiveExperiment(Lcom/google/firebase/abt/AbtExperimentInfo;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 182
    invoke-static {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->validateAbtExperimentInfo(Lcom/google/firebase/abt/AbtExperimentInfo;)V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->toStringMap()Ljava/util/Map;

    move-result-object p1

    const-string v1, "triggerEvent"

    .line 187
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-static {p1}, Lcom/google/firebase/abt/AbtExperimentInfo;->fromMap(Ljava/util/Map;)Lcom/google/firebase/abt/AbtExperimentInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-direct {p0, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->addExperiments(Ljava/util/List;)V

    return-void
.end method

.method public validateRunningExperiments(Ljava/util/List;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/abt/AbtExperimentInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/abt/AbtException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->throwAbtExceptionIfAnalyticsIsNull()V

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 209
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/abt/AbtExperimentInfo;

    .line 210
    invoke-virtual {v1}, Lcom/google/firebase/abt/AbtExperimentInfo;->getExperimentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 213
    :cond_20
    invoke-direct {p0}, Lcom/google/firebase/abt/FirebaseABTesting;->getAllExperimentsInAnalytics()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/abt/FirebaseABTesting;->getExperimentsToRemove(Ljava/util/List;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object p1

    .line 214
    invoke-direct {p0, p1}, Lcom/google/firebase/abt/FirebaseABTesting;->removeExperiments(Ljava/util/Collection;)V

    return-void
.end method
