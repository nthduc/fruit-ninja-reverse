.class public abstract Lcom/ironsource/mediationsdk/events/BaseEventsManager;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Lcom/ironsource/eventsmodule/IEventsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    }
.end annotation


# instance fields
.field final DATABASE_NAME:Ljava/lang/String;

.field final DATABASE_VERSION:I

.field final DEFAULT_BACKUP_THRESHOLD:I

.field final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field final EVENT_DYNAMIC_STRING_MAX_LENGTH:I

.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER:Ljava/lang/String;

.field private final MEDIATION_ABT:Ljava/lang/String;

.field final NO_CONNECTIVITY_EVENT_ID_ADDITION:I

.field private mAbt:Ljava/lang/String;

.field mAdUnitType:I

.field private mBackupThreshold:I

.field private mBatchParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivitySensitiveEventsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDBSyncLock:Ljava/lang/Object;

.field private mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

.field private mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

.field mEventType:Ljava/lang/String;

.field private mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

.field mFormatterType:Ljava/lang/String;

.field private mGenericEventParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHadTriggerEvent:Z

.field private mHasServerResponse:Z

.field private mIsEventsEnabled:Z

.field private mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

.field private mMaxEventsPerBatch:I

.field private mMaxNumberOfEvents:I

.field private mNonConnectivityEvents:[I

.field private mOptInEvents:[I

.field private mOptOutEvents:[I

.field private mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

.field private mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

.field private mSessionId:Ljava/lang/String;

.field private mTotalEvents:I

.field private mTriggerEvents:[I


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_BACKUP_THRESHOLD:I

    const/16 v1, 0x64

    .line 42
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    const/16 v2, 0x1388

    .line 43
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    const v3, 0x15f90

    .line 44
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->NO_CONNECTIVITY_EVENT_ID_ADDITION:I

    const/16 v3, 0x400

    .line 45
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->EVENT_DYNAMIC_STRING_MAX_LENGTH:I

    const/4 v3, 0x5

    .line 47
    iput v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_VERSION:I

    const-string v3, "supersonic_sdk.db"

    .line 48
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->DATABASE_NAME:Ljava/lang/String;

    const-string v3, "provider"

    .line 51
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PROVIDER:Ljava/lang/String;

    const-string v3, "placement"

    .line 52
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->KEY_PLACEMENT:Ljava/lang/String;

    const-string v3, "abt"

    .line 53
    iput-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->MEDIATION_ABT:Ljava/lang/String;

    const/4 v3, 0x0

    .line 57
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z

    .line 63
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 69
    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 70
    iput v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    .line 71
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    const-string v0, ""

    .line 79
    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I)I
    .registers 2

    .line 40
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return p1
.end method

.method static synthetic access$1208(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I
    .registers 3

    .line 40
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    return v0
.end method

.method static synthetic access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)[I
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTriggerEvents:[I

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;[I)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;I[I)Z
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventInArray(I[I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 1

    .line 40
    iget-boolean p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z
    .registers 2

    .line 40
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V
    .registers 1

    .line 40
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    return-void
.end method

.method static synthetic access$2200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddConnectionType(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isNoConnectivityEvent(Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)I
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->convertEventToNotConnected(Lcom/ironsource/eventsmodule/EventData;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sessionDepthIsSet(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result p0

    return p0
.end method

.method private backupEventsToDb()V
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 416
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private declared-synchronized convertEventToNotConnected(Lcom/ironsource/eventsmodule/EventData;)I
    .registers 3

    monitor-enter p0

    .line 149
    :try_start_1
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    const v0, 0x15f90

    add-int/2addr p1, v0

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;"
        }
    .end annotation

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 314
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 316
    new-instance p1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;

    invoke-direct {p1, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$3;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 328
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gt p1, p3, :cond_1f

    .line 329
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_38

    .line 331
    :cond_1f
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p3}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v0, p3, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p2

    .line 333
    iget-object p3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/List;Ljava/lang/String;)V

    :goto_38
    return-object p1
.end method

.method private isEventInArray(I[I)Z
    .registers 6

    .line 451
    invoke-direct {p0, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    .line 452
    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_14

    .line 453
    aget v2, p2, v0

    if-ne p1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_14

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    :goto_14
    return v1
.end method

.method private isEventsArrayNotEmpty([I)Z
    .registers 2

    if-eqz p1, :cond_7

    .line 445
    array-length p1, p1

    if-lez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method private declared-synchronized isNoConnectivityEvent(Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "none"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2f

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 131
    monitor-exit p0

    return p1

    .line 136
    :cond_c
    :try_start_c
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mNonConnectivityEvents:[I

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 138
    invoke-virtual {p2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    iget-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mNonConnectivityEvents:[I

    invoke-direct {p0, p1, p2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventInArray(I[I)Z

    move-result p1

    goto :goto_2d

    .line 141
    :cond_1f
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2d
    .catchall {:try_start_c .. :try_end_2d} :catchall_2f

    .line 144
    :goto_2d
    monitor-exit p0

    return p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x400

    .line 660
    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;I)V

    return-void
.end method

.method private limitEventStringMember(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;I)V
    .registers 7

    .line 646
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 648
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 650
    :try_start_c
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 651
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 652
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    .line 654
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method private sendEvents()V
    .registers 7

    const/4 v0, 0x0

    .line 238
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z

    .line 242
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDBSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_6
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    invoke-direct {p0, v3, v2, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initCombinedEventList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 246
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->clearEvents(Ljava/lang/String;)V

    .line 247
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_a6

    .line 249
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 250
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a5

    .line 251
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 255
    :try_start_33
    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->updateSegmentsData(Lorg/json/JSONObject;)V

    .line 258
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getAbt()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    const-string v4, "abt"

    .line 260
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_45
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getBatchParams()Ljava/util/Map;

    move-result-object v3

    .line 265
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_81

    .line 266
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_57
    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_57

    .line 269
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_7c} :catch_7d

    goto :goto_57

    :catch_7d
    move-exception v3

    .line 275
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    :cond_81
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v3, v2, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 279
    new-instance v3, Lcom/ironsource/eventsmodule/EventsSender;

    new-instance v4, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;

    invoke-direct {v4, p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$2;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    invoke-direct {v3, v4}, Lcom/ironsource/eventsmodule/EventsSender;-><init>(Lcom/ironsource/eventsmodule/IEventsSenderResultListener;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 307
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getEventsServerUrl()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_a5
    return-void

    :catchall_a6
    move-exception v0

    .line 247
    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0

    return-void
.end method

.method private sessionDepthIsSet(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 3

    .line 626
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    const-string v0, "sessionDepth"

    .line 632
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private shouldAddConnectionType(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4

    .line 618
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_2a

    .line 619
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_2a

    .line 620
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2a

    .line 621
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_2a

    .line 622
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    return p1
.end method

.method private shouldAddSessionDepth(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4

    .line 607
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_42

    .line 608
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x202

    if-eq v0, v1, :cond_42

    .line 609
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x8c

    if-eq v0, v1, :cond_42

    .line 610
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_42

    .line 611
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_42

    .line 612
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_42

    .line 613
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_42

    .line 614
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    const/16 v0, 0x34

    if-eq p1, v0, :cond_42

    const/4 p1, 0x1

    goto :goto_43

    :cond_42
    const/4 p1, 0x0

    :goto_43
    return p1
.end method

.method private shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ironsource/eventsmodule/EventData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    if-lt p1, v1, :cond_d

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method private shouldEventBeLogged(Lcom/ironsource/eventsmodule/EventData;)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    .line 467
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 469
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    invoke-direct {p0, p1, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventInArray(I[I)Z

    move-result p1

    xor-int/2addr v0, p1

    goto :goto_2b

    .line 471
    :cond_17
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptInEvents:[I

    invoke-direct {p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventsArrayNotEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 473
    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result p1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptInEvents:[I

    invoke-direct {p0, p1, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isEventInArray(I[I)Z

    move-result v0

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :cond_2b
    :goto_2b
    return v0
.end method

.method private shouldSendEvents()Z
    .registers 3

    .line 425
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHadTriggerEvent:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private updateSegmentsData(Lorg/json/JSONObject;)V
    .registers 7

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    if-eqz v0, :cond_86

    .line 520
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v0

    if-lez v0, :cond_17

    const-string v0, "age"

    .line 521
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getAge()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    :cond_17
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "gen"

    .line 523
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getGender()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    :cond_2e
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v0

    if-lez v0, :cond_41

    const-string v0, "lvl"

    .line 525
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 526
    :cond_41
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string v0, "pay"

    .line 527
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIsPaying()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 528
    :cond_58
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_6f

    const-string v0, "iapt"

    .line 529
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getIapt()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 530
    :cond_6f
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_86

    const-string v0, "ucd"

    .line 531
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/IronSourceSegment;->getUcd()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 534
    :cond_86
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    if-eqz v0, :cond_bd

    .line 535
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getSegmentId()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9b

    const-string v1, "segmentId"

    .line 537
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    :cond_9b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;->getCustomSegments()Lorg/json/JSONObject;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 541
    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 543
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b8} :catch_b9

    goto :goto_a5

    :catch_b9
    move-exception p1

    .line 548
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_bd
    return-void
.end method

.method private verifyCurrentFormatter(Ljava/lang/String;)V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->getFormatterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 341
    :cond_e
    iget v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    :cond_16
    return-void
.end method


# virtual methods
.method public getAbt()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    return-object v0
.end method

.method protected abstract getCurrentPlacement(I)Ljava/lang/String;
.end method

.method public getGenericEventParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    return-object v0
.end method

.method getProviderNameForEvent(Lcom/ironsource/eventsmodule/EventData;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 491
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "provider"

    .line 492
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    return-object v0
.end method

.method protected abstract getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I
.end method

.method protected initConnectivitySensitiveEventsSet()V
    .registers 1

    return-void
.end method

.method initState()V
    .registers 4

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 95
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    iget v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    .line 96
    new-instance v0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EventThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    .line 97
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->start()V

    .line 98
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->prepareHandler()V

    .line 99
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    .line 100
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSessionId:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mConnectivitySensitiveEventsSet:Ljava/util/Set;

    .line 102
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->initConnectivitySensitiveEventsSet()V

    return-void
.end method

.method protected abstract isTriggerEvent(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized log(Lcom/ironsource/eventsmodule/EventData;)V
    .registers 4

    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventThread:Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;

    new-instance v1, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;-><init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager$EventThread;->postTask(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 234
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V
    .registers 6

    .line 506
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 507
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 510
    new-instance v0, Lcom/ironsource/eventsmodule/EventsSender;

    invoke-direct {v0}, Lcom/ironsource/eventsmodule/EventsSender;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/ironsource/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method

.method public setABT(Ljava/lang/String;)V
    .registers 2

    .line 554
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mAbt:Ljava/lang/String;

    return-void
.end method

.method public setBackupThreshold(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 348
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    :cond_4
    return-void
.end method

.method public setBatchParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mBatchParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method protected abstract setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V
.end method

.method public setEventAuctionParams(Ljava/util/Map;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 636
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "auctionTrials"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_14

    const-string p2, "auctionFallback"

    .line 639
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public setEventGenericParams(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mGenericEventParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 389
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 390
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_d

    .line 391
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 393
    :cond_d
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public setFormatterType(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 399
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 400
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public setHasServerResponse(Z)V
    .registers 2

    .line 484
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .registers 2

    .line 408
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    return-void
.end method

.method public setMaxEventsPerBatch(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 360
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxEventsPerBatch:I

    :cond_4
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .registers 2

    if-lez p1, :cond_4

    .line 354
    iput p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    :cond_4
    return-void
.end method

.method public setNonConnectivityEvents([ILandroid/content/Context;)V
    .registers 4

    .line 383
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mNonConnectivityEvents:[I

    .line 384
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultNonConnectivityEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public setOptInEvents([ILandroid/content/Context;)V
    .registers 4

    .line 371
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptInEvents:[I

    .line 372
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptInEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public setOptOutEvents([ILandroid/content/Context;)V
    .registers 4

    .line 365
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 366
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method public declared-synchronized setServerSegmentData(Lcom/ironsource/mediationsdk/model/ServerSegmetData;)V
    .registers 2

    monitor-enter p0

    .line 125
    :try_start_1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mServerSegmentData:Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 126
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTriggerEvents([ILandroid/content/Context;)V
    .registers 4

    .line 377
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTriggerEvents:[I

    .line 378
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveDefaultTriggerEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    return-void
.end method

.method protected abstract shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method protected abstract shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized start(Landroid/content/Context;Lcom/ironsource/mediationsdk/IronSourceSegment;)V
    .registers 6

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    .line 114
    invoke-static {p1, v0, v1}, Lcom/ironsource/eventsmodule/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    .line 115
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V

    .line 116
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 117
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultOptInEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mOptInEvents:[I

    .line 118
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultTriggerEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mTriggerEvents:[I

    .line 119
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getDefaultNonConnectivityEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mNonConnectivityEvents:[I

    .line 120
    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mSegment:Lcom/ironsource/mediationsdk/IronSourceSegment;

    .line 121
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->mContext:Landroid/content/Context;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    .line 122
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public triggerEventsSend()V
    .registers 1

    .line 501
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->sendEvents()V

    return-void
.end method
