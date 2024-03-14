.class Lcom/vungle/warren/VisionController;
.super Ljava/lang/Object;
.source "VisionController.java"


# static fields
.field static final ADVERTISER_DETAILS:Ljava/lang/String; = "advertiser_details"

.field static final AGGREGATE:Ljava/lang/String; = "aggregate"

.field static final CAMPAIGN_DETAILS:Ljava/lang/String; = "campaign_details"

.field static final CREATIVE_DETAILS:Ljava/lang/String; = "creative_details"

.field static final DATA_SCIENCE_CACHE:Ljava/lang/String; = "data_science_cache"

.field static final FILTER_ID:Ljava/lang/String; = "_id"

.field static final LAST_TIME_VIEWED:Ljava/lang/String; = "last_time_viewed"

.field static final LAST_VIEWED_ADVERTISER_ID:Ljava/lang/String; = "last_viewed_advertiser_id"

.field static final LAST_VIEWED_CAMPAIGN_ID:Ljava/lang/String; = "last_viewed_campaign_id"

.field static final LAST_VIEWED_CREATIVE_ID:Ljava/lang/String; = "last_viewed_creative_id"

.field static final TOTAL_VIEW_COUNT:Ljava/lang/String; = "total_view_count"

.field static final VIEW_COUNT:Ljava/lang/String; = "view_count"

.field static final VISION:Ljava/lang/String; = "vision"

.field static final VISION_COOKIE:Ljava/lang/String; = "visionCookie"

.field static final WINDOW:Ljava/lang/String; = "window"


# instance fields
.field private config:Lcom/vungle/warren/vision/VisionConfig;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final networkProvider:Lcom/vungle/warren/utility/NetworkProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final repository:Lcom/vungle/warren/persistence/Repository;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/warren/persistence/Repository;Lcom/vungle/warren/utility/NetworkProvider;)V
    .registers 4
    .param p1    # Lcom/vungle/warren/persistence/Repository;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/warren/utility/NetworkProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/vungle/warren/vision/VisionConfig;

    invoke-direct {v0}, Lcom/vungle/warren/vision/VisionConfig;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    .line 57
    iput-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    .line 58
    iput-object p2, p0, Lcom/vungle/warren/VisionController;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    return-void
.end method

.method private getDataScienceCache()Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    const-class v1, Lcom/vungle/warren/model/Cookie;

    const-string v2, "visionCookie"

    invoke-virtual {v0, v2, v1}, Lcom/vungle/warren/persistence/Repository;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/warren/model/Cookie;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    goto :goto_1a

    :cond_14
    const-string v1, "data_science_cache"

    .line 64
    invoke-virtual {v0, v1}, Lcom/vungle/warren/model/Cookie;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0
.end method


# virtual methods
.method clearData()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    return-void
.end method

.method getFilterName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4f3875ed

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x4bd2e9b2    # 2.7644772E7f

    if-eq v0, v1, :cond_20

    const v1, 0x6e061b2e

    if-eq v0, v1, :cond_16

    goto :goto_34

    :cond_16
    const-string v0, "advertiser_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x2

    goto :goto_35

    :cond_20
    const-string v0, "creative_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x0

    goto :goto_35

    :cond_2a
    const-string v0, "campaign_details"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 p1, 0x1

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p1, -0x1

    :goto_35
    if-eqz p1, :cond_43

    if-eq p1, v3, :cond_40

    if-eq p1, v2, :cond_3d

    const/4 p1, 0x0

    return-object p1

    :cond_3d
    const-string p1, "advertiser"

    return-object p1

    :cond_40
    const-string p1, "campaign"

    return-object p1

    :cond_43
    const-string p1, "creative"

    return-object p1
.end method

.method public getPayload()Lcom/google/gson/JsonObject;
    .registers 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    .line 94
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/vungle/warren/VisionController;->getDataScienceCache()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    const-string v3, "data_science_cache"

    .line 97
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_12
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v2, :cond_67

    .line 101
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->networkProvider:Lcom/vungle/warren/utility/NetworkProvider;

    invoke-virtual {v2}, Lcom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v2

    if-eqz v2, :cond_51

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3b

    const/4 v4, 0x4

    if-eq v2, v4, :cond_51

    const/16 v4, 0x9

    if-eq v2, v4, :cond_3b

    const/16 v4, 0x11

    if-eq v2, v4, :cond_51

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3b

    const/4 v4, 0x7

    if-eq v2, v4, :cond_51

    .line 114
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_68

    .line 105
    :cond_3b
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->wifi:I

    if-lez v2, :cond_4a

    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->wifi:I

    goto :goto_68

    :cond_4a
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_68

    .line 111
    :cond_51
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->mobile:I

    if-lez v2, :cond_60

    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->mobile:I

    goto :goto_68

    :cond_60
    iget-object v2, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v2, v2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget v2, v2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    .line 118
    :goto_68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 119
    new-instance v6, Lcom/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v7, "aggregate"

    .line 120
    invoke-virtual {v1, v7, v6}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 121
    iget-object v7, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v7, v7, Lcom/vungle/warren/vision/VisionConfig;->aggregationTimeWindows:[I

    if-eqz v7, :cond_179

    .line 122
    iget-object v7, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v7, v7, Lcom/vungle/warren/vision/VisionConfig;->aggregationTimeWindows:[I

    array-length v8, v7

    const/4 v9, 0x0

    :goto_82
    if-ge v9, v8, :cond_179

    aget v10, v7, v9

    .line 123
    sget-object v11, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sub-long v11, v4, v11

    .line 124
    iget-object v13, v0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v13, v11, v12}, Lcom/vungle/warren/persistence/Repository;->getVisionAggregationInfo(J)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v13

    invoke-virtual {v13}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vungle/warren/vision/VisionAggregationInfo;

    .line 125
    new-instance v14, Lcom/google/gson/JsonObject;

    invoke-direct {v14}, Lcom/google/gson/JsonObject;-><init>()V

    .line 126
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v15, "window"

    invoke-virtual {v14, v15, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    if-eqz v13, :cond_ae

    .line 127
    iget-object v10, v13, Lcom/vungle/warren/vision/VisionAggregationInfo;->lastCreative:Ljava/lang/String;

    goto :goto_af

    :cond_ae
    const/4 v10, 0x0

    :goto_af
    const-string v15, "last_viewed_creative_id"

    invoke-virtual {v14, v15, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_b9

    .line 128
    iget v10, v13, Lcom/vungle/warren/vision/VisionAggregationInfo;->totalCount:I

    goto :goto_ba

    :cond_b9
    const/4 v10, 0x0

    :goto_ba
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v13, "total_view_count"

    invoke-virtual {v14, v13, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 129
    iget-object v10, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v10, v10, Lcom/vungle/warren/vision/VisionConfig;->aggregationFilters:[Ljava/lang/String;

    if-eqz v10, :cond_162

    .line 130
    iget-object v10, v0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object v10, v10, Lcom/vungle/warren/vision/VisionConfig;->aggregationFilters:[Ljava/lang/String;

    array-length v13, v10

    const/4 v15, 0x0

    :goto_cf
    if-ge v15, v13, :cond_162

    aget-object v3, v10, v15

    move-wide/from16 v16, v4

    .line 131
    new-instance v4, Lcom/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/google/gson/JsonArray;-><init>()V

    .line 132
    invoke-virtual {v14, v3, v4}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 133
    invoke-virtual {v0, v3}, Lcom/vungle/warren/VisionController;->getFilterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    iget-object v5, v0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {v5, v11, v12, v2, v3}, Lcom/vungle/warren/persistence/Repository;->getVisionAggregationData(JILjava/lang/String;)Lcom/vungle/warren/persistence/FutureResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vungle/warren/persistence/FutureResult;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_150

    .line 136
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_150

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/vungle/warren/vision/VisionAggregationData;

    move/from16 v18, v2

    .line 137
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    move-object/from16 v19, v5

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v3

    const-string v3, "_id"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/vungle/warren/vision/VisionAggregationData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v3, v0, Lcom/vungle/warren/vision/VisionAggregationData;->viewCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "view_count"

    invoke-virtual {v2, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 140
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v5, v7

    move/from16 v21, v8

    iget-wide v7, v0, Lcom/vungle/warren/vision/VisionAggregationData;->lastTimeStamp:J

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "last_time_viewed"

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 141
    invoke-virtual {v4, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    move-object/from16 v0, p0

    move-object v7, v5

    move/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    move/from16 v8, v21

    goto :goto_f3

    :cond_150
    move/from16 v18, v2

    move-object v5, v7

    move/from16 v21, v8

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object v7, v5

    move-wide/from16 v4, v16

    move/from16 v2, v18

    move/from16 v8, v21

    goto/16 :goto_cf

    :cond_162
    move/from16 v18, v2

    move-wide/from16 v16, v4

    move-object v5, v7

    move/from16 v21, v8

    .line 146
    invoke-virtual {v6, v14}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object v7, v5

    move-wide/from16 v4, v16

    move/from16 v2, v18

    move/from16 v8, v21

    goto/16 :goto_82

    :cond_179
    return-object v1
.end method

.method getVisionConfig()Lcom/vungle/warren/vision/VisionConfig;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    .line 172
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-boolean v0, v0, Lcom/vungle/warren/vision/VisionConfig;->enabled:Z

    return v0
.end method

.method reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    new-instance v7, Lcom/vungle/warren/model/VisionData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v1, v7

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/vungle/warren/model/VisionData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object p2, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object p2, p2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    iget-object p2, p2, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget p2, p2, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_22

    :cond_21
    const/4 p2, 0x0

    :goto_22
    invoke-virtual {p1, p2}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    return-void
.end method

.method setConfig(Lcom/vungle/warren/vision/VisionConfig;)V
    .registers 4
    .param p1    # Lcom/vungle/warren/vision/VisionConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/vungle/warren/VisionController;->config:Lcom/vungle/warren/vision/VisionConfig;

    .line 77
    iget-boolean v0, p1, Lcom/vungle/warren/vision/VisionConfig;->enabled:Z

    if-eqz v0, :cond_15

    .line 78
    iget-object v0, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    iget-object v1, p1, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    if-eqz v1, :cond_11

    iget-object p1, p1, Lcom/vungle/warren/vision/VisionConfig;->viewLimit:Lcom/vungle/warren/vision/VisionConfig$Limits;

    iget p1, p1, Lcom/vungle/warren/vision/VisionConfig$Limits;->device:I

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {v0, p1}, Lcom/vungle/warren/persistence/Repository;->trimVisionData(I)V

    :cond_15
    return-void
.end method

.method setDataScienceCache(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/warren/persistence/DatabaseHelper$DBException;
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/vungle/warren/model/Cookie;

    const-string v1, "visionCookie"

    invoke-direct {v0, v1}, Lcom/vungle/warren/model/Cookie;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    const-string v1, "data_science_cache"

    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/vungle/warren/model/Cookie;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_e
    iget-object p1, p0, Lcom/vungle/warren/VisionController;->repository:Lcom/vungle/warren/persistence/Repository;

    invoke-virtual {p1, v0}, Lcom/vungle/warren/persistence/Repository;->save(Ljava/lang/Object;)V

    return-void
.end method
