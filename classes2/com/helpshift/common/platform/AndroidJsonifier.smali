.class public Lcom/helpshift/common/platform/AndroidJsonifier;
.super Ljava/lang/Object;
.source "AndroidJsonifier.java"

# interfaces
.implements Lcom/helpshift/common/platform/Jsonifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private jsonifyAnalyticsDTO(Lcom/helpshift/analytics/dto/AnalyticsEventDTO;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 193
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 194
    iget-object v1, p1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;->timeStamp:Ljava/lang/String;

    const-string v2, "ts"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    iget-object v1, p1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;->type:Lcom/helpshift/analytics/AnalyticsEventType;

    iget-object v1, v1, Lcom/helpshift/analytics/AnalyticsEventType;->key:Ljava/lang/String;

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    iget-object v1, p1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;->data:Ljava/util/Map;

    if-eqz v1, :cond_31

    iget-object v1, p1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;->data:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 197
    new-instance v1, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;->data:Ljava/util/Map;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/helpshift/common/platform/AndroidJsonifier;->jsonifyToObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "d"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    return-object v0
.end method

.method private jsonifyBreadCrumbDTO(Lcom/helpshift/meta/dto/BreadCrumbDTO;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 186
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    iget-object v1, p1, Lcom/helpshift/meta/dto/BreadCrumbDTO;->action:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    iget-object p1, p1, Lcom/helpshift/meta/dto/BreadCrumbDTO;->dateTime:Ljava/lang/String;

    const-string v1, "datetime"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private jsonifyDebugLogDTO(Lcom/helpshift/meta/dto/DebugLogDTO;)Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 173
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    iget-object v1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->msg:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 175
    iget-object v1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->msg:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_10
    iget-object v1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->level:Ljava/lang/Integer;

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    iget-object v1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->tag:Ljava/lang/String;

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    iget-object v1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->throwable:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 180
    iget-object p1, p1, Lcom/helpshift/meta/dto/DebugLogDTO;->throwable:Ljava/lang/String;

    const-string v1, "exception"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2d
    return-object v0
.end method


# virtual methods
.method public jsonify(Ljava/util/Collection;)Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jsonify(Ljava/util/Map;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 31
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    .line 35
    :cond_27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p1

    :catch_2c
    move-exception p1

    .line 38
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while calling jsonify on map"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public jsonifyAnalyticsDTOList(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/analytics/dto/AnalyticsEventDTO;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 78
    :try_start_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/analytics/dto/AnalyticsEventDTO;

    .line 79
    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidJsonifier;->jsonifyAnalyticsDTO(Lcom/helpshift/analytics/dto/AnalyticsEventDTO;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_20} :catch_26

    goto :goto_d

    .line 85
    :cond_21
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_26
    move-exception p1

    .line 83
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while forming analytics string"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public jsonifyBreadCrumbDTOList(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/meta/dto/BreadCrumbDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 90
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_29

    .line 93
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/meta/dto/BreadCrumbDTO;

    .line 94
    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidJsonifier;->jsonifyBreadCrumbDTO(Lcom/helpshift/meta/dto/BreadCrumbDTO;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception p1

    .line 98
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while forming breadcrumb string"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    :cond_29
    return-object v0
.end method

.method public jsonifyCustomIssueFieldDTOList(Ljava/util/List;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/cif/dto/CustomIssueFieldDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 155
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 156
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;

    .line 158
    :try_start_15
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 159
    iget-object v3, v1, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 160
    iget-object v3, v1, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;->values:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_23
    if-ge v5, v4, :cond_2d

    aget-object v6, v3, v5

    .line 161
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 163
    :cond_2d
    iget-object v1, v1, Lcom/helpshift/cif/dto/CustomIssueFieldDTO;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_32} :catch_33

    goto :goto_9

    :catch_33
    move-exception p1

    .line 166
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while forming custom issue field string"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    :cond_3d
    return-object v0
.end method

.method public jsonifyCustomMetaMap(Ljava/util/Map;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 137
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 139
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 140
    instance-of v3, v2, [Ljava/lang/String;

    if-eqz v3, :cond_32

    .line 141
    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v3}, Lcom/helpshift/common/platform/AndroidJsonifier;->jsonifyListToJsonArray(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    .line 144
    :cond_32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3b} :catch_3d

    goto :goto_d

    :cond_3c
    return-object v0

    :catch_3d
    move-exception p1

    .line 149
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while forming custom meta string"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public jsonifyDebugLogDTOList(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/meta/dto/DebugLogDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 106
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_29

    .line 109
    :try_start_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/meta/dto/DebugLogDTO;

    .line 110
    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidJsonifier;->jsonifyDebugLogDTO(Lcom/helpshift/meta/dto/DebugLogDTO;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1e} :catch_1f

    goto :goto_b

    :catch_1f
    move-exception p1

    .line 114
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while forming debugLog string"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    :cond_29
    return-object v0
.end method

.method public jsonifyListToJsonArray(Ljava/util/List;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_17
    return-object v0
.end method

.method public jsonifyLogModelList(Ljava/util/List;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/helpshift/logger/model/LogModel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 215
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/helpshift/logger/model/LogModel;

    .line 217
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "dt"

    .line 218
    iget-object v4, v1, Lcom/helpshift/logger/model/LogModel;->timeStamp:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "l"

    .line 219
    iget-object v4, v1, Lcom/helpshift/logger/model/LogModel;->level:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ct"

    .line 220
    iget-object v4, v1, Lcom/helpshift/logger/model/LogModel;->extras:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msg"

    .line 221
    iget-object v4, v1, Lcom/helpshift/logger/model/LogModel;->message:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "st"

    .line 222
    iget-object v4, v1, Lcom/helpshift/logger/model/LogModel;->stacktrace:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    iget-object v3, v1, Lcom/helpshift/logger/model/LogModel;->sdkVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5d

    const-string v3, "src"

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdk.android."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/helpshift/logger/model/LogModel;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_5d
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_60} :catch_62

    goto :goto_9

    :cond_61
    return-object v0

    :catch_62
    move-exception p1

    .line 232
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while jsonifying LogModelList"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public jsonifyToArray(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 206
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    .line 209
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while jsonifying string to array"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public jsonifyToObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 239
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 240
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception p1

    .line 244
    sget-object p2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v0, "Exception while jsonifying single object."

    invoke-static {p1, p2, v0}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public jsonifyToObject(Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 45
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_26} :catch_28

    goto :goto_d

    :cond_27
    return-object v0

    :catch_28
    move-exception p1

    .line 52
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Exception while calling jsonify on map"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public removeKeyFromJsonObjString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 124
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_c

    :catch_c
    return-object p1
.end method
