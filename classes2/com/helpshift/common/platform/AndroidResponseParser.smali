.class Lcom/helpshift/common/platform/AndroidResponseParser;
.super Ljava/lang/Object;
.source "AndroidResponseParser.java"

# interfaces
.implements Lcom/helpshift/common/platform/network/ResponseParser;


# static fields
.field private static final AVATAR_IMAGE_CACHE_DEFAULT_INTERVAL:I = 0xdbba00

.field private static final OPTIONS_MAX_LIMIT:I = 0x1f4

.field private static final SMART_INTENT_CLIENT_CACHE_DEFAULT_INTERVAL:J = 0xf731400L

.field private static final SMART_INTENT_REFRESH_DEFAULT_INTERVAL:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "Helpshift_AResponseParser"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertDeliveryStateToInt(Ljava/lang/String;)I
    .registers 7

    .line 1507
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x32158c51

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2b

    const v1, 0x355996

    if-eq v0, v1, :cond_21

    const v1, 0x35cf98

    if-eq v0, v1, :cond_17

    goto :goto_35

    :cond_17
    const-string v0, "sent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x2

    goto :goto_36

    :cond_21
    const-string v0, "read"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x1

    goto :goto_36

    :cond_2b
    const-string v0, "unread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p1, -0x1

    :goto_36
    if-eqz p1, :cond_3f

    if-eq p1, v4, :cond_3e

    if-eq p1, v3, :cond_3d

    return v2

    :cond_3d
    return v3

    :cond_3e
    return v4

    :cond_3f
    return v2
.end method

.method private parseAdminActionCardMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "created_at"

    .line 936
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    sget-object v2, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->addMilliSeconds(Lcom/helpshift/util/HSSimpleDateFormat;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 939
    invoke-static {v6}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v7

    const-string v0, "action_cards"

    .line 943
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "actions"

    .line 944
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 946
    new-instance v5, Lcom/helpshift/conversation/activeconversation/model/Action;

    const-string v9, "display_text"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 947
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "type"

    .line 948
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/helpshift/conversation/activeconversation/model/ActionType;->fromValue(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/ActionType;

    move-result-object v11

    const-string v12, "data"

    .line 949
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/helpshift/util/HSJSONUtils;->toStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v5, v9, v10, v11, v3}, Lcom/helpshift/conversation/activeconversation/model/Action;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/model/ActionType;Ljava/util/Map;)V

    .line 950
    new-instance v11, Lcom/helpshift/conversation/activeconversation/model/ActionCard;

    const-string v3, "title"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "image_url"

    .line 951
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "is_image_secure"

    .line 952
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v11, v3, v9, v0, v5}, Lcom/helpshift/conversation/activeconversation/model/ActionCard;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/helpshift/conversation/activeconversation/model/Action;)V

    .line 956
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    const-string v3, "body"

    .line 957
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "author"

    .line 961
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 960
    invoke-direct {p0, v3, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v9

    .line 962
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/model/ActionCard;)V

    const-string v1, "md_state"

    const-string v3, ""

    .line 964
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->deliveryState:I

    const-string v1, "redacted"

    .line 966
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;->isRedacted:Z

    return-object v0
.end method

.method private parseAdminAttachmentEntities(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "redacted"

    const-string v3, "body"

    .line 1285
    :try_start_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "meta"

    .line 1286
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1c

    const-string v6, "attachments"

    .line 1290
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    :cond_1c
    if-eqz v6, :cond_ff

    .line 1293
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_26

    goto/16 :goto_ff

    :cond_26
    const-string v5, "id"

    .line 1297
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "created_at"

    .line 1298
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1299
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "author"

    .line 1300
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v9

    .line 1301
    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    const-string v11, "md_state"

    const-string v12, ""

    .line 1302
    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v0

    move-object v11, v5

    const/4 v5, 0x0

    .line 1304
    :goto_53
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v5, v12, :cond_ff

    .line 1305
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1306
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1307
    sget-object v11, Lcom/helpshift/common/util/HSDateFormatSpec;->STORAGE_TIME_FORMAT:Lcom/helpshift/util/HSSimpleDateFormat;

    add-int/lit8 v5, v5, 0x1

    .line 1309
    invoke-static {v11, v7, v5}, Lcom/helpshift/common/util/HSDateFormatSpec;->addMilliSeconds(Lcom/helpshift/util/HSSimpleDateFormat;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1310
    invoke-static {v14}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v15

    .line 1312
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_89

    .line 1313
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v13, v11

    goto :goto_8a

    :cond_89
    move-object v13, v8

    :goto_8a
    const-string v11, "url"

    .line 1314
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v11, "content-type"

    .line 1315
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v11, "size"

    .line 1316
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string v11, "file-name"

    .line 1317
    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v11, "secure?"

    .line 1318
    invoke-virtual {v12, v11, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    if-nez v24, :cond_b3

    .line 1319
    invoke-virtual {v12, v2, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b1

    goto :goto_b3

    :cond_b1
    const/4 v11, 0x0

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v11, 0x1

    :goto_b4
    const-string v10, "image"

    .line 1322
    invoke-virtual {v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_da

    .line 1323
    new-instance v10, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    const-string v1, "thumbnail"

    .line 1327
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move v12, v11

    move-object v11, v10

    move-object/from16 v27, v2

    move v2, v12

    move-object/from16 v12, v25

    move-object/from16 v17, v9

    move-object/from16 v18, v20

    move-object/from16 v19, v22

    move-object/from16 v20, v1

    move/from16 v22, v26

    invoke-direct/range {v11 .. v23}, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    move-object v1, v10

    goto :goto_ef

    :cond_da
    move-object/from16 v27, v2

    move v2, v11

    .line 1331
    new-instance v1, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    move-object v11, v1

    move-object/from16 v12, v25

    move-object/from16 v17, v9

    move/from16 v18, v23

    move-object/from16 v19, v21

    move-object/from16 v21, v22

    move/from16 v22, v26

    invoke-direct/range {v11 .. v22}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1336
    :goto_ef
    iput v0, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->deliveryState:I

    .line 1337
    iput-boolean v2, v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->isRedacted:Z

    .line 1338
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_f6} :catch_100

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v11, v25

    move-object/from16 v2, v27

    goto/16 :goto_53

    :cond_ff
    :goto_ff
    return-object v4

    :catch_100
    move-exception v0

    .line 1343
    sget-object v1, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v2, "Parsing exception while reading admin attachment message"

    .line 1344
    invoke-static {v0, v1, v2}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0

    return-void
.end method

.method private parseAdminEmptyMessageWithTextInputDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_4
    const-string v2, "input"

    .line 831
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "created_at"

    .line 832
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 833
    invoke-static {v7}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 834
    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    const-string v4, "id"

    .line 835
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v4, "author"

    .line 838
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v15, 0x0

    invoke-direct {v1, v4, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v10

    const-string v4, "chatbot_info"

    .line 839
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v4, "placeholder"

    .line 840
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "required"

    .line 841
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v4, "label"

    .line 842
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "skip_label"

    .line 843
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object v4, v3

    move-object v15, v2

    invoke-direct/range {v4 .. v17}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    const-string v2, "md_state"

    const-string v4, ""

    .line 846
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->deliveryState:I

    const-string v2, "redacted"

    const/4 v4, 0x0

    .line 847
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->isRedacted:Z
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6b} :catch_6c

    return-object v3

    :catch_6c
    move-exception v0

    .line 851
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading admin empty message with text input"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method private parseAdminMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 430
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_14a

    goto/16 :goto_af

    :sswitch_e
    const-string v1, "txt_msg_with_numeric_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x3

    goto/16 :goto_af

    :sswitch_19
    const-string v1, "bot_ended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0xe

    goto/16 :goto_af

    :sswitch_25
    const-string v1, "empty_msg_with_txt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x5

    goto/16 :goto_af

    :sswitch_30
    const-string v1, "bot_started"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0xd

    goto/16 :goto_af

    :sswitch_3c
    const-string v1, "faq_list"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0xa

    goto/16 :goto_af

    :sswitch_48
    const-string v1, "txt_msg_with_txt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x1

    goto :goto_af

    :sswitch_52
    const-string v1, "txt_msg_with_option_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x6

    goto :goto_af

    :sswitch_5c
    const-string v1, "txt_msg_with_dt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x4

    goto :goto_af

    :sswitch_66
    const-string v1, "txt_msg_with_actions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0xc

    goto :goto_af

    :sswitch_71
    const-string v1, "txt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x0

    goto :goto_af

    :sswitch_7b
    const-string v1, "rsc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0x8

    goto :goto_af

    :sswitch_86
    const-string v1, "rfr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0x9

    goto :goto_af

    :sswitch_91
    const-string v1, "rar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x7

    goto :goto_af

    :sswitch_9b
    const-string v1, "txt_msg_with_email_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/4 v0, 0x2

    goto :goto_af

    :sswitch_a5
    const-string v1, "faq_list_msg_with_option_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_af

    const/16 v0, 0xb

    :cond_af
    :goto_af
    packed-switch v0, :pswitch_data_188

    const-string p1, "input"

    goto/16 :goto_12e

    .line 472
    :pswitch_b6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseBotControlMessage(Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_148

    .line 468
    :pswitch_c3
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithActionCardMessageDM(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_148

    .line 465
    :pswitch_cc
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFAQListMessageWitOptionInputDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_148

    .line 462
    :pswitch_d5
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFAQListMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_148

    .line 459
    :pswitch_de
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseRequestForReopenMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 456
    :pswitch_e6
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseRequestScreenshotMessageDM(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 453
    :pswitch_ee
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseRequestAppReviewMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 450
    :pswitch_f6
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithOptionInputDM(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 447
    :pswitch_fe
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminEmptyMessageWithTextInputDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_148

    .line 444
    :pswitch_106
    invoke-direct {p0, p2, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithTextInputDM(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 441
    :pswitch_10e
    invoke-direct {p0, p2, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithTextInputDM(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 438
    :pswitch_116
    invoke-direct {p0, p2, v4}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithTextInputDM(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 435
    :pswitch_11e
    invoke-direct {p0, p2, v5}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageWithTextInputDM(Lorg/json/JSONObject;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 432
    :pswitch_126
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessageDM(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_148

    .line 475
    :goto_12e
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_148

    .line 476
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseUnsupportedAdminMessageWithInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13f
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_1 .. :try_end_13f} :catch_140

    goto :goto_148

    :catch_140
    move-exception p1

    const-string p2, "Helpshift_AResponseParser"

    const-string p3, "Exception while parsing messages: "

    .line 481
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_148
    :goto_148
    return-void

    nop

    :sswitch_data_14a
    .sparse-switch
        -0x3ebff4fd -> :sswitch_a5
        -0xb0d3d25 -> :sswitch_9b
        0x1b823 -> :sswitch_91
        0x1b8be -> :sswitch_86
        0x1ba42 -> :sswitch_7b
        0x1c270 -> :sswitch_71
        0x3a40471 -> :sswitch_66
        0x7f3ce67 -> :sswitch_5c
        0x1640a48c -> :sswitch_52
        0x1fdc97af -> :sswitch_48
        0x35355c27 -> :sswitch_3c
        0x35e1ae09 -> :sswitch_30
        0x5d46a5b2 -> :sswitch_25
        0x6d06fa42 -> :sswitch_19
        0x7e0aec8c -> :sswitch_e
    .end sparse-switch

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_126
        :pswitch_11e
        :pswitch_116
        :pswitch_10e
        :pswitch_106
        :pswitch_fe
        :pswitch_f6
        :pswitch_ee
        :pswitch_e6
        :pswitch_de
        :pswitch_d5
        :pswitch_cc
        :pswitch_c3
        :pswitch_b6
        :pswitch_b6
    .end packed-switch
.end method

.method private parseAdminMessageDM(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 889
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "created_at"

    .line 890
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 891
    invoke-static {v5}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 893
    new-instance v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "body"

    .line 894
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "author"

    .line 897
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    const-string v2, "md_state"

    const-string v3, ""

    .line 898
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;->deliveryState:I

    const-string v2, "redacted"

    .line 899
    invoke-virtual {p1, v2, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;->isRedacted:Z

    .line 900
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminAttachmentEntities(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    move-exception p1

    .line 905
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading admin text message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseAdminMessageWithActionCardMessageDM(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    const-string v1, "created_at"

    .line 912
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 913
    invoke-static {v5}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 915
    new-instance v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "body"

    .line 916
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "author"

    .line 919
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v8

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    const-string v2, "md_state"

    const-string v3, ""

    .line 920
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;->deliveryState:I

    const-string v2, "redacted"

    .line 921
    invoke-virtual {p1, v2, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/helpshift/conversation/activeconversation/message/AdminMessageDM;->isRedacted:Z

    .line 922
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminActionCardMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4c} :catch_4d

    return-object v0

    :catch_4d
    move-exception p1

    .line 926
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading admin action card message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseAdminMessageWithOptionInputDM(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 751
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "input"

    .line 753
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "created_at"

    .line 754
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 755
    invoke-static {v8}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v9

    .line 756
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;

    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "body"

    .line 757
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "author"

    .line 759
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v15, 0x0

    invoke-direct {v1, v5, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v11

    const-string v5, "chatbot_info"

    .line 760
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 761
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v5, "required"

    .line 762
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    const-string v5, "label"

    .line 763
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v5, "skip_label"

    .line 764
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 765
    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseOptions(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v17

    .line 766
    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseOptionType(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    move-result-object v3

    move-object v5, v4

    move-object/from16 v18, v2

    const/4 v2, 0x0

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v5 .. v17}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;)V

    const-string v3, "md_state"

    const-string v5, ""

    .line 767
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->deliveryState:I

    const-string v3, "redacted"

    .line 769
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->isRedacted:Z

    .line 771
    invoke-direct/range {p0 .. p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminAttachmentEntities(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 772
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithOptionInputDM;->attachmentCount:I

    move-object/from16 v2, v18

    .line 774
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_8b} :catch_8c

    return-object v2

    :catch_8c
    move-exception v0

    .line 779
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading admin text message with option input"

    .line 780
    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method private parseAdminMessageWithTextInputDM(Lorg/json/JSONObject;I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "I)",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 858
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "input"

    .line 859
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "created_at"

    .line 860
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 861
    invoke-static {v8}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v9

    .line 862
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;

    const-string v5, "id"

    .line 863
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "body"

    .line 864
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "author"

    .line 866
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v15, 0x0

    invoke-direct {v1, v5, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v11

    const-string v5, "chatbot_info"

    .line 867
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 868
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v5, "placeholder"

    .line 869
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v5, "required"

    .line 870
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v5, "label"

    .line 871
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v5, "skip_label"

    .line 872
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v18, 0x0

    move-object v5, v4

    move-object/from16 v19, v2

    const/4 v2, 0x0

    move-object/from16 v15, v16

    move-object/from16 v16, v3

    move/from16 v17, p2

    invoke-direct/range {v5 .. v18}, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)V

    const-string v3, "md_state"

    const-string v5, ""

    .line 875
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->deliveryState:I

    const-string v3, "redacted"

    .line 876
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/helpshift/conversation/activeconversation/message/AdminMessageWithTextInputDM;->isRedacted:Z

    move-object/from16 v2, v19

    .line 877
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-direct/range {p0 .. p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminAttachmentEntities(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_85} :catch_86

    return-object v2

    :catch_86
    move-exception v0

    .line 882
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading admin message with text input"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method private parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1523
    instance-of v0, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x1

    :goto_7
    const-string v1, "author"

    .line 1526
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v0

    iput-object v0, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    const-string v0, "request_id"

    .line 1527
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->createdRequestId:Ljava/lang/String;

    return-void
.end method

.method private parseAvatarKeys(Lorg/json/JSONObject;)Lcom/helpshift/configuration/response/AvatarConfig;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1475
    new-instance v10, Lcom/helpshift/configuration/response/AvatarConfig;

    const/4 v0, 0x0

    const-string v1, "savtr"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "pagnt"

    .line 1476
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, ""

    const-string v4, "af"

    .line 1477
    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pbot"

    .line 1478
    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v0, "bf"

    .line 1479
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "snn"

    .line 1480
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "turl"

    .line 1481
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "ce"

    const v3, 0xdbba00

    .line 1482
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v11, p1

    move-object v0, v10

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-wide v8, v11

    invoke-direct/range {v0 .. v9}, Lcom/helpshift/configuration/response/AvatarConfig;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method private parseDisableHelpshiftBrandingValue(Lorg/json/JSONObject;)Z
    .registers 4

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    const-string v1, "hl"

    .line 396
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method

.method private parseFAQList(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 610
    :goto_6
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 611
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "data"

    .line 612
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 614
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;

    const-string v5, "title"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "publish_id"

    .line 615
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "language"

    .line 616
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v5, v3}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM$FAQ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_33
    return-object v0
.end method

.method private parseFAQListMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;
    .registers 13

    :try_start_0
    const-string v0, "created_at"

    .line 651
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 652
    invoke-static {v4}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 653
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "body"

    .line 654
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "author"

    .line 656
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v10, 0x0

    invoke-direct {p0, v1, v10}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v7

    const-string v1, "faqs"

    .line 657
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFAQList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    const-string v1, "faq_source"

    .line 658
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "md_state"

    const-string v2, ""

    .line 659
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->deliveryState:I

    const-string v1, "redacted"

    .line 661
    invoke-virtual {p1, v1, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageDM;->isRedacted:Z
    :try_end_4d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception p1

    .line 665
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading faq list message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseFAQListMessageWitOptionInputDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_4
    const-string v2, "input"

    .line 624
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "created_at"

    .line 625
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 626
    invoke-static {v7}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 627
    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;

    const-string v4, "id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "body"

    .line 628
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "author"

    .line 630
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const/4 v15, 0x0

    invoke-direct {v1, v4, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v10

    const-string v4, "faqs"

    .line 631
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFAQList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    const-string v4, "faq_source"

    .line 632
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v4, "chatbot_info"

    .line 633
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v4, "required"

    .line 634
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v4, "label"

    .line 635
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v4, "skip_label"

    .line 636
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 637
    invoke-direct {v1, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseOptions(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    move-object v4, v3

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v2

    invoke-direct/range {v4 .. v17}, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "md_state"

    const-string v4, ""

    .line 638
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v3, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;->deliveryState:I

    const-string v2, "redacted"

    const/4 v4, 0x0

    .line 639
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v3, Lcom/helpshift/conversation/activeconversation/message/FAQListMessageWithOptionInputDM;->isRedacted:Z
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7e} :catch_7f

    return-object v3

    :catch_7f
    move-exception v0

    .line 643
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading list message with option input"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method private parseFollowupAcceptedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;
    .registers 11

    :try_start_0
    const-string v0, "created_at"

    .line 694
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 696
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    const-string v1, "body"

    .line 697
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 699
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    const-string v1, "meta"

    .line 700
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "refers"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    const-string v1, "id"

    .line 702
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 703
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 704
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;->isRedacted:Z

    .line 705
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_50} :catch_51

    return-object v0

    :catch_51
    move-exception p1

    .line 709
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading follow-up accepted message"

    .line 710
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseFollowupRejectedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;
    .registers 11

    :try_start_0
    const-string v0, "created_at"

    .line 672
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 674
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    const-string v1, "body"

    .line 675
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 677
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    const-string v1, "meta"

    .line 678
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "refers"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    const-string v1, "id"

    .line 680
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 681
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 682
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;->isRedacted:Z

    .line 683
    invoke-direct {p0, v0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_50} :catch_51

    return-object v0

    :catch_51
    move-exception p1

    .line 687
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading follow-up rejected message"

    .line 688
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;
    .registers 6

    const-string v0, "role"

    if-eqz p2, :cond_7

    .line 1489
    :try_start_4
    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->LOCAL_USER:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    goto :goto_9

    .line 1492
    :cond_7
    sget-object p2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->SYSTEM:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    .line 1494
    :goto_9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1495
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->getEnum(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    move-result-object p2

    .line 1497
    :cond_17
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/Author;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 1498
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/helpshift/conversation/activeconversation/message/Author;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_28} :catch_29

    return-object v0

    :catch_29
    move-exception p1

    .line 1502
    sget-object p2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v0, "Parsing exception while reading author of message"

    invoke-static {p1, p2, v0}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseMessageDMs(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    const-string v0, "Helpshift_AResponseParser"

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 404
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_47

    .line 407
    :try_start_e
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "type"

    .line 408
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "origin"

    .line 409
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "admin"

    .line 411
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 412
    invoke-direct {p0, v5, v4, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_44

    :cond_2a
    const-string v7, "mobile"

    .line 414
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 415
    invoke-direct {p0, v5, v4, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMobileMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_44

    :cond_36
    const-string v4, "Unknown message type received."

    .line 418
    invoke-static {v0, v4}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_e .. :try_end_3b} :catch_3e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_3b} :catch_3c

    goto :goto_44

    :catch_3c
    move-exception v4

    goto :goto_3f

    :catch_3e
    move-exception v4

    :goto_3f
    const-string v5, "Exception while parsing messages: "

    .line 422
    invoke-static {v0, v5, v4}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_47
    return-object v1
.end method

.method private parseMobileMessage(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 487
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_154

    goto/16 :goto_c4

    :sswitch_b
    const-string v1, "rsp_txt_msg_with_dt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xd

    goto/16 :goto_c4

    :sswitch_17
    const-string v1, "rsp_txt_msg_with_option_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xe

    goto/16 :goto_c4

    :sswitch_23
    const-string v1, "rsp_empty_msg_with_txt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0x9

    goto/16 :goto_c4

    :sswitch_2f
    const-string v1, "rsp_txt_msg_with_txt_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xa

    goto/16 :goto_c4

    :sswitch_3b
    const-string v1, "txt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x0

    goto/16 :goto_c4

    :sswitch_46
    const-string v1, "ncr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x2

    goto/16 :goto_c4

    :sswitch_51
    const-string v1, "si"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0x8

    goto/16 :goto_c4

    :sswitch_5d
    const-string v1, "sc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x4

    goto :goto_c4

    :sswitch_67
    const-string v1, "rj"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x7

    goto :goto_c4

    :sswitch_71
    const-string v1, "ra"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x6

    goto :goto_c4

    :sswitch_7b
    const-string v1, "ca"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x3

    goto :goto_c4

    :sswitch_85
    const-string v1, "at"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x5

    goto :goto_c4

    :sswitch_8f
    const-string v1, "ar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/4 v0, 0x1

    goto :goto_c4

    :sswitch_99
    const-string v1, "rsp_txt_msg_with_numeric_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xc

    goto :goto_c4

    :sswitch_a4
    const-string v1, "bot_cancelled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0x10

    goto :goto_c4

    :sswitch_af
    const-string v1, "rsp_faq_list_msg_with_option_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xf

    goto :goto_c4

    :sswitch_ba
    const-string v1, "rsp_txt_msg_with_email_input"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const/16 v0, 0xb

    :cond_c4
    :goto_c4
    packed-switch v0, :pswitch_data_19a

    goto/16 :goto_153

    .line 527
    :pswitch_c9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseBotControlMessage(Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_153

    .line 524
    :pswitch_d6
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseResponseMessageForOptionInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_153

    .line 520
    :pswitch_e3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseResponseMessageForTextInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 513
    :pswitch_ef
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseUserSmartIntentMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 510
    :pswitch_fb
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFollowupRejectedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 507
    :pswitch_103
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFollowupAcceptedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 504
    :pswitch_10b
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseUserAttachmentMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 501
    :pswitch_113
    invoke-direct {p0, p2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseScreenshotMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 498
    :pswitch_11b
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseConfirmationAcceptedMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 495
    :pswitch_127
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseConfirmationRejectedMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 492
    :pswitch_133
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAcceptedAppReviewMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 489
    :pswitch_13f
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseReadableUserMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14a
    .catch Lcom/helpshift/common/exception/RootAPIException; {:try_start_1 .. :try_end_14a} :catch_14b

    goto :goto_153

    :catch_14b
    move-exception p1

    const-string p2, "Helpshift_AResponseParser"

    const-string p3, "Exception while parsing messages: "

    .line 532
    invoke-static {p2, p3, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_153
    return-void

    :sswitch_data_154
    .sparse-switch
        -0x318c7d35 -> :sswitch_ba
        -0x2732e90d -> :sswitch_af
        -0x2086ab27 -> :sswitch_a4
        -0x5a48f84 -> :sswitch_99
        0xc31 -> :sswitch_8f
        0xc33 -> :sswitch_85
        0xc5e -> :sswitch_7b
        0xe2f -> :sswitch_71
        0xe38 -> :sswitch_67
        0xe50 -> :sswitch_5d
        0xe56 -> :sswitch_51
        0x1a95d -> :sswitch_46
        0x1c270 -> :sswitch_3b
        0x1d6c939f -> :sswitch_2f
        0x36c765a2 -> :sswitch_23
        0x6cd7e29c -> :sswitch_17
        0x7b7c9477 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_13f
        :pswitch_133
        :pswitch_127
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_ef
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_d6
        :pswitch_d6
        :pswitch_c9
    .end packed-switch
.end method

.method private parseOptionType(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    .line 746
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "options"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    invoke-static {v0, p1}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;->getType(Ljava/lang/String;I)Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Type;

    move-result-object p1

    return-object p1
.end method

.method private parseOptions(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "options"

    .line 735
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 736
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/16 v2, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_37

    .line 738
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 739
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;

    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "data"

    .line 740
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/helpshift/conversation/activeconversation/message/input/OptionInput$Option;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_37
    return-object v0
.end method

.method private parsePeriodicReview(Lorg/json/JSONObject;)Lcom/helpshift/configuration/response/PeriodicReview;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1468
    new-instance v0, Lcom/helpshift/configuration/response/PeriodicReview;

    const-string v1, "s"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "i"

    .line 1469
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "t"

    const-string v4, ""

    .line 1470
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/helpshift/configuration/response/PeriodicReview;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method

.method private parseRequestAppReviewMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;
    .registers 12

    :try_start_0
    const-string v0, "meta"

    .line 1351
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v2, "state"

    .line 1353
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    const-string v2, "invisible"

    .line 1355
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v9, 0x0

    goto :goto_26

    :cond_24
    :goto_24
    const/4 v0, 0x1

    const/4 v9, 0x1

    :goto_26
    const-string v0, "created_at"

    .line 1356
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1357
    invoke-static {v5}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v6

    .line 1358
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "body"

    .line 1359
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "author"

    .line 1362
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1361
    invoke-direct {p0, v2, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Z)V

    const-string v2, "md_state"

    const-string v3, ""

    .line 1365
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->deliveryState:I

    const-string v2, "redacted"

    .line 1366
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/helpshift/conversation/activeconversation/message/RequestAppReviewMessageDM;->isRedacted:Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_62} :catch_63

    return-object v0

    :catch_63
    move-exception p1

    .line 1370
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading request review message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseRequestForReopenMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;
    .registers 11

    :try_start_0
    const-string v0, "created_at"

    .line 716
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 717
    invoke-static {v4}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 718
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "body"

    .line 719
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "author"

    .line 722
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v8, 0x0

    .line 721
    invoke-direct {p0, v1, v8}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    const-string v1, "md_state"

    const-string v2, ""

    .line 724
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->deliveryState:I

    const-string v1, "redacted"

    .line 725
    invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/helpshift/conversation/activeconversation/message/RequestForReopenMessageDM;->isRedacted:Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-object v0

    :catch_3e
    move-exception p1

    .line 729
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading reopen message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseRequestScreenshotMessageDM(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ">;"
        }
    .end annotation

    .line 1376
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "meta"

    .line 1378
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "response"

    .line 1379
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    const-string v3, "state"

    .line 1382
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move v10, v1

    goto :goto_1d

    :cond_1c
    const/4 v10, 0x0

    :goto_1d
    const-string v1, "created_at"

    .line 1384
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1385
    invoke-static {v6}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 1386
    new-instance v1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;

    const-string v3, "id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "body"

    .line 1387
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "author"

    .line 1390
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1389
    invoke-direct {p0, v3, v2}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v9

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Z)V

    const-string v3, "md_state"

    const-string v4, ""

    .line 1393
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->deliveryState:I

    const-string v3, "redacted"

    .line 1394
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/helpshift/conversation/activeconversation/message/RequestScreenshotMessageDM;->isRedacted:Z

    .line 1395
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    invoke-direct {p0, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAdminAttachmentEntities(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_63} :catch_64

    return-object v0

    :catch_64
    move-exception p1

    .line 1400
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading request screenshot message"

    .line 1401
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseScreenshotMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "redacted"

    const-string v3, ""

    const-string v4, "body"

    :try_start_a
    const-string v5, "meta"

    .line 1407
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "attachments"

    .line 1408
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v7, "created_at"

    .line 1409
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1410
    invoke-static {v10}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v11

    .line 1411
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1412
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_34

    :cond_30
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_34
    move-object v9, v4

    .line 1413
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    const-string v7, "author"

    .line 1415
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v15, 0x1

    invoke-direct {v1, v7, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v13

    const-string v7, "content-type"

    .line 1417
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "thumbnail"

    .line 1418
    invoke-virtual {v5, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "file-name"

    .line 1419
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v8, "url"

    .line 1420
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v8, "size"

    .line 1421
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v8, "secure?"

    .line 1422
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    move-object v8, v4

    const/16 v20, 0x1

    move-object v15, v7

    invoke-direct/range {v8 .. v19}, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    const-string v7, "id"

    .line 1423
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->serverId:Ljava/lang/String;

    const-string v7, "md_state"

    .line 1424
    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->deliveryState:I

    .line 1425
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_90

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8e

    goto :goto_90

    :cond_8e
    const/4 v2, 0x0

    goto :goto_91

    :cond_90
    :goto_90
    const/4 v2, 0x1

    :goto_91
    iput-boolean v2, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isRedacted:Z

    const-string v2, "zipped"

    .line 1426
    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;->isZipped:Z

    .line 1427
    invoke-direct {v1, v4, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_9e} :catch_9f

    return-object v4

    :catch_9f
    move-exception v0

    .line 1431
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading screenshot message"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method private parseSmartIntents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_37

    .line 1187
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    .line 1188
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "children"

    .line 1189
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_26

    .line 1192
    invoke-direct {p0, v4, v5}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseSmartIntents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v6

    .line 1194
    :cond_26
    new-instance v5, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;

    const-string v7, "label"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v4, p1, v6}, Lcom/helpshift/conversation/smartintent/dto/SmartIntentDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1199
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_37
    return-object v0
.end method

.method private parseUnsupportedAdminMessageWithInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;
    .registers 13

    .line 973
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 974
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-static {v4}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v5

    .line 976
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "body"

    .line 977
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "author"

    .line 979
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v7

    const-string v1, "type"

    .line 980
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "chatbot_info"

    .line 981
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v1, "input"

    .line 982
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Lcom/helpshift/conversation/activeconversation/message/UnsupportedAdminMessageWithInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_46} :catch_47

    return-object p1

    :catch_47
    move-exception p1

    .line 985
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading unsupported admin message with input"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method private parseUserAttachmentMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "redacted"

    const-string v3, "body"

    :try_start_8
    const-string v4, "meta"

    .line 1437
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "attachments"

    .line 1438
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "created_at"

    .line 1439
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1440
    invoke-static {v9}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v10

    .line 1441
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1442
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_32

    :cond_2e
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_32
    move-object v8, v3

    .line 1444
    new-instance v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    const-string v6, "author"

    .line 1447
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v15, 0x1

    invoke-direct {v1, v6, v15}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v12

    const-string v6, "size"

    .line 1448
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    const-string v6, "content-type"

    .line 1449
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v6, "url"

    .line 1450
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "file-name"

    .line 1451
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v7, "secure?"

    .line 1452
    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    move-object v7, v3

    const/16 v18, 0x1

    move-object v15, v6

    invoke-direct/range {v7 .. v17}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v6, "id"

    .line 1453
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->serverId:Ljava/lang/String;

    const-string v6, "md_state"

    const-string v7, ""

    .line 1454
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->deliveryState:I

    .line 1456
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_8a

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_8a

    :cond_88
    const/4 v2, 0x0

    goto :goto_8b

    :cond_8a
    :goto_8a
    const/4 v2, 0x1

    :goto_8b
    iput-boolean v2, v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->isRedacted:Z

    const-string v2, "zipped"

    .line 1457
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v3, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;->isZipped:Z

    .line 1458
    invoke-direct {v1, v3, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_98} :catch_99

    return-object v3

    :catch_99
    move-exception v0

    .line 1462
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading user attachment message"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public parseAcceptedAppReviewMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;
    .registers 11

    .line 198
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 199
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 201
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;

    const-string v1, "body"

    .line 202
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 204
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    const-string v1, "meta"

    .line 205
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "refers"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;I)V

    const-string v1, "id"

    .line 207
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 208
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/AcceptedAppReviewMessageDM;->isRedacted:Z

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_56

    return-object p1

    :catch_56
    move-exception p1

    .line 214
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading accepted review message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseAuthToken(Ljava/lang/String;)Lcom/helpshift/auth/dto/WebSocketAuthData;
    .registers 4

    .line 337
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "token"

    .line 338
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "endpoint"

    .line 339
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Lcom/helpshift/auth/dto/WebSocketAuthData;

    invoke-direct {v1, p1, v0}, Lcom/helpshift/auth/dto/WebSocketAuthData;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_20

    :catch_17
    move-exception p1

    const-string v0, "Helpshift_AResponseParser"

    const-string v1, "Exception in parsing auth token"

    .line 343
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_20
    return-object v1
.end method

.method public parseBotControlMessage(Ljava/lang/String;Z)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 20

    move-object/from16 v1, p0

    .line 568
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 569
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 570
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v3, "chatbot_info"

    .line 571
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v3, "redacted"

    const/4 v12, 0x0

    .line 572
    invoke-virtual {v0, v3, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v3, "created_at"

    .line 573
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 574
    invoke-static {v6}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_30} :catch_8b

    const-string v3, "author"

    const-string v4, "body"

    if-eqz p2, :cond_55

    .line 576
    :try_start_36
    new-instance v13, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;

    .line 577
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3, v12}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v9

    move-object v3, v13

    move-object v4, v14

    move-object v10, v2

    invoke-direct/range {v3 .. v11}, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "has_next_bot"

    .line 582
    invoke-virtual {v0, v2, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v13, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->hasNextBot:Z

    .line 583
    iput-boolean v15, v13, Lcom/helpshift/conversation/activeconversation/message/AdminBotControlMessageDM;->isRedacted:Z

    return-object v13

    :cond_55
    const-string v5, "meta"

    .line 587
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v9, "chatbot_cancelled_reason"

    .line 588
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v9, "refers"

    .line 589
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 590
    new-instance v13, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;

    .line 591
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 593
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v9

    const/16 v16, 0x2

    move-object v3, v13

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v2

    move-object v2, v13

    move/from16 v13, v16

    invoke-direct/range {v3 .. v13}, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 597
    iput-object v14, v2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->serverId:Ljava/lang/String;

    .line 598
    iput-boolean v15, v2, Lcom/helpshift/conversation/activeconversation/message/UserBotControlMessageDM;->isRedacted:Z

    .line 599
    invoke-direct {v1, v2, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_8a} :catch_8b

    return-object v2

    :catch_8b
    move-exception v0

    .line 604
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading bot control messages."

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method public parseConfigResponse(Ljava/lang/String;)Lcom/helpshift/configuration/response/RootServerConfig;
    .registers 48

    move-object/from16 v1, p0

    const-string v0, "avtr"

    const-string v2, "hdr"

    const-string v3, "si"

    const-string v4, "profile_created_at"

    const-string v5, "last_redaction_at"

    .line 993
    :try_start_c
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_25

    .line 996
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v25, v5

    goto :goto_27

    :cond_25
    move-object/from16 v25, v8

    .line 999
    :goto_27
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1000
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v26, v4

    goto :goto_3a

    :cond_38
    move-object/from16 v26, v8

    :goto_3a
    const-string v4, "pfi"

    const-wide/16 v9, 0x0

    .line 1004
    invoke-virtual {v6, v4, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v11, 0x3e8

    div-long v28, v4, v11

    const-string v4, "pri"

    .line 1007
    invoke-virtual {v6, v4, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    div-long v30, v4, v11

    const-string v4, "afp"

    const/4 v5, 0x0

    .line 1010
    invoke-virtual {v6, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 1016
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_92

    .line 1017
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "enabled"

    .line 1018
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v7, "tree_sla"

    const-wide/32 v11, 0x927c0

    .line 1019
    invoke-virtual {v3, v7, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v13, "model_sla"

    .line 1020
    invoke-virtual {v3, v13, v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "cache_sla"

    const-wide/32 v13, 0xf731400

    .line 1022
    invoke-virtual {v3, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v36, v3

    move/from16 v33, v4

    move-object/from16 v35, v7

    move-object/from16 v34, v11

    goto :goto_9a

    :cond_92
    move-object/from16 v34, v8

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    const/16 v33, 0x0

    :goto_9a
    const-string v3, "wa"

    const-string v4, "[[\"*/*\"]]"

    .line 1028
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1027
    invoke-static {v3}, Lcom/helpshift/util/HSJSONUtils;->nestedJsonArrayToNestedArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v37

    const-string v3, "ll"

    .line 1031
    sget-object v4, Lcom/helpshift/logger/constants/LogLevel;->FATAL:Lcom/helpshift/logger/constants/LogLevel;

    invoke-virtual {v4}, Lcom/helpshift/logger/constants/LogLevel;->getValue()I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 1036
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_b6
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_b6} :catch_16b

    const-string v4, ""

    if-eqz v3, :cond_d7

    .line 1037
    :try_start_ba
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sh"

    .line 1038
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "htxt"

    .line 1039
    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "hurl"

    .line 1040
    invoke-virtual {v2, v11, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v41, v2

    move/from16 v39, v3

    move-object/from16 v40, v7

    goto :goto_dd

    :cond_d7
    move-object/from16 v40, v4

    move-object/from16 v41, v40

    const/16 v39, 0x0

    .line 1043
    :goto_dd
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 1044
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAvatarKeys(Lorg/json/JSONObject;)Lcom/helpshift/configuration/response/AvatarConfig;

    move-result-object v8

    :cond_eb
    move-object/from16 v42, v8

    const-string v0, "asae"

    const/4 v2, 0x1

    .line 1048
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v0, "pasi"

    .line 1051
    invoke-virtual {v6, v0, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v44

    .line 1053
    new-instance v0, Lcom/helpshift/configuration/response/RootServerConfig;

    const-string v3, "rne"

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v3, "pfe"

    .line 1054
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v3, "csat"

    .line 1055
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v3, "dia"

    .line 1056
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v3, "t"

    .line 1057
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseDisableHelpshiftBrandingValue(Lorg/json/JSONObject;)Z

    move-result v14

    const-string v3, "issue_exists"

    .line 1058
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    const-string v3, "dbgl"

    const/16 v7, 0x64

    .line 1059
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    const-string v3, "bcl"

    .line 1060
    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    const-string v3, "rurl"

    .line 1061
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v3, "pr"

    .line 1062
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parsePeriodicReview(Lorg/json/JSONObject;)Lcom/helpshift/configuration/response/PeriodicReview;

    move-result-object v19

    const-string v3, "ic"

    .line 1063
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    const-string v3, "gm"

    .line 1064
    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v3, "tyi"

    .line 1065
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const-string v3, "rq"

    .line 1066
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const-string v3, "conversation_history_enabled"

    .line 1067
    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v24

    const-string v3, "allow_user_attachments"

    .line 1070
    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    move-object v9, v0

    invoke-direct/range {v9 .. v45}, Lcom/helpshift/configuration/response/RootServerConfig;-><init>(ZZZZZZIILjava/lang/String;Lcom/helpshift/configuration/response/PeriodicReview;ZLjava/lang/String;ZZZLjava/lang/Long;Ljava/lang/Long;ZJJZZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IZLjava/lang/String;Ljava/lang/String;Lcom/helpshift/configuration/response/AvatarConfig;ZJ)V
    :try_end_16a
    .catch Lorg/json/JSONException; {:try_start_ba .. :try_end_16a} :catch_16b

    return-object v0

    :catch_16b
    move-exception v0

    .line 1088
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while fetching config"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0
.end method

.method public parseConfirmationAcceptedMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;
    .registers 10

    .line 221
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 222
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 224
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;

    const-string v1, "body"

    .line 225
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 227
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    const/4 v7, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    const-string v1, "id"

    .line 229
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 230
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationAcceptedMessageDM;->isRedacted:Z

    .line 232
    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_4a

    return-object p1

    :catch_4a
    move-exception p1

    .line 236
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading confirmation accepted message"

    .line 237
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseConfirmationRejectedMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;
    .registers 11

    .line 244
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 245
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 247
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;

    const-string v1, "body"

    .line 248
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 251
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v8, 0x0

    invoke-direct {p0, v1, v8}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    const/4 v7, 0x2

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;I)V

    const-string v1, "id"

    .line 253
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 254
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;->deliveryState:I

    const-string v1, "redacted"

    .line 255
    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/ConfirmationRejectedMessageDM;->isRedacted:Z

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_48} :catch_49

    return-object p1

    :catch_49
    move-exception p1

    .line 260
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading confirmation rejected message"

    .line 261
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseConversationHistory(Ljava/lang/String;)Lcom/helpshift/conversation/dto/ConversationHistory;
    .registers 6

    .line 294
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "issues"

    .line 296
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 297
    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 298
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseReadableConversation(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    const-string v1, "has_older_messages"

    .line 301
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 302
    new-instance v1, Lcom/helpshift/conversation/dto/ConversationHistory;

    invoke-direct {v1, p1, v0}, Lcom/helpshift/conversation/dto/ConversationHistory;-><init>(Ljava/util/List;Z)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    return-object v1

    :catch_35
    move-exception p1

    .line 305
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading conversation history"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public parseConversationInbox(Ljava/lang/String;)Lcom/helpshift/conversation/dto/ConversationInbox;
    .registers 7

    const-string v0, "has_older_messages"

    .line 268
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "issues"

    .line 270
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 271
    :goto_13
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2b

    .line 272
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseReadableConversation(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_2b
    const/4 v2, 0x0

    .line 277
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 278
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_3a
    const-string v0, "cursor"

    .line 281
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "issue_exists"

    .line 283
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 284
    new-instance v3, Lcom/helpshift/conversation/dto/ConversationInbox;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/helpshift/conversation/dto/ConversationInbox;-><init>(Ljava/lang/String;Ljava/util/List;ZLjava/lang/Boolean;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_4b} :catch_4c

    return-object v3

    :catch_4c
    move-exception p1

    .line 287
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading conversation inbox"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public parseErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "msg"

    .line 1533
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1534
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 1535
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    return-object p1

    :catch_12
    :cond_12
    const-string p1, ""

    return-object p1
.end method

.method public parseFollowupAcceptedMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;
    .registers 4

    .line 324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFollowupAcceptedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupAcceptedMessageDM;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 328
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading follow-up accepted message"

    .line 329
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseFollowupRejectedMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;
    .registers 4

    .line 312
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseFollowupRejectedMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/FollowupRejectedMessageDM;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 316
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading follow-up rejected message"

    .line 317
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseReadableConversation(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/model/Conversation;
    .registers 24

    const-string v0, "csat_expiry_at"

    const-string v1, "resolution_question_expiry_at"

    const-string v2, "intent"

    const-string v3, "preissue_id"

    const-string v4, "issue_id"

    const-string v5, "acid"

    .line 1095
    :try_start_c
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "messages"

    .line 1096
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_19} :catch_104

    move-object/from16 v8, p0

    :try_start_1b
    invoke-direct {v8, v7}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageDMs(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    .line 1099
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_25
    const/4 v10, 0x0

    if-ltz v9, :cond_40

    .line 1100
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/helpshift/conversation/activeconversation/message/MessageDM;

    .line 1104
    instance-of v12, v11, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;

    if-nez v12, :cond_3d

    instance-of v12, v11, Lcom/helpshift/conversation/activeconversation/message/AdminImageAttachmentMessageDM;

    if-nez v12, :cond_3d

    .line 1106
    invoke-virtual {v11}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getCreatedAt()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    goto :goto_42

    :cond_3d
    add-int/lit8 v9, v9, -0x1

    goto :goto_25

    :cond_40
    move-object/from16 v19, v10

    :goto_42
    const-string v9, "state"

    .line 1111
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Lcom/helpshift/conversation/dto/IssueState;->fromInt(I)Lcom/helpshift/conversation/dto/IssueState;

    move-result-object v13

    const-string v9, "created_at"

    .line 1112
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1113
    invoke-static {v14}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v15

    const-string v9, "type"

    .line 1114
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1116
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_65

    move-object/from16 v21, v10

    goto :goto_6b

    :cond_65
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    .line 1117
    :goto_6b
    new-instance v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;

    const-string v11, "title"

    const-string v12, ""

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v11, "updated_at"

    .line 1121
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v11, "publish_id"

    .line 1122
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v11, v5

    move-object/from16 v20, v9

    invoke-direct/range {v11 .. v21}, Lcom/helpshift/conversation/activeconversation/model/Conversation;-><init>(Ljava/lang/String;Lcom/helpshift/conversation/dto/IssueState;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "redacted"

    const/4 v12, 0x0

    .line 1125
    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->isRedacted:Z

    .line 1126
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_98

    move-object v4, v10

    goto :goto_9c

    :cond_98
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_9c
    iput-object v4, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->serverId:Ljava/lang/String;

    .line 1127
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move-object v3, v10

    goto :goto_aa

    :cond_a6
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_aa
    iput-object v3, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->preConversationServerId:Ljava/lang/String;

    .line 1128
    iput-object v9, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->issueType:Ljava/lang/String;

    const-string v3, "request_id"

    .line 1129
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->createdRequestId:Ljava/lang/String;

    .line 1131
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bd

    goto :goto_c5

    .line 1132
    :cond_bd
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    :goto_c5
    iput-object v10, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->smartIntentIds:Ljava/util/List;

    const-string v2, "issue"

    .line 1134
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    const-string v2, "csat_received"

    .line 1137
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_da

    sget-object v2, Lcom/helpshift/conversation/states/ConversationCSATState;->SUBMITTED_SYNCED:Lcom/helpshift/conversation/states/ConversationCSATState;

    goto :goto_dc

    :cond_da
    sget-object v2, Lcom/helpshift/conversation/states/ConversationCSATState;->NONE:Lcom/helpshift/conversation/states/ConversationCSATState;

    :goto_dc
    iput-object v2, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatState:Lcom/helpshift/conversation/states/ConversationCSATState;

    .line 1141
    :cond_de
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 1142
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->resolutionExpiryAt:Ljava/lang/Long;

    .line 1144
    :cond_ee
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 1145
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v5, Lcom/helpshift/conversation/activeconversation/model/Conversation;->csatExpiryAt:Ljava/lang/Long;

    .line 1147
    :cond_fe
    invoke-virtual {v5, v7}, Lcom/helpshift/conversation/activeconversation/model/Conversation;->setMessageDMs(Ljava/util/List;)V
    :try_end_101
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_101} :catch_102

    return-object v5

    :catch_102
    move-exception v0

    goto :goto_107

    :catch_104
    move-exception v0

    move-object/from16 v8, p0

    .line 1151
    :goto_107
    sget-object v1, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v2, "Parsing exception in reading conversation"

    invoke-static {v0, v1, v2}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0

    return-void
.end method

.method public parseReadableUserMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;
    .registers 9

    .line 96
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 97
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 99
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "author"

    .line 101
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    const-string v1, "id"

    .line 102
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 103
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserMessageDM;->isRedacted:Z

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_48} :catch_49

    return-object p1

    :catch_49
    move-exception p1

    .line 109
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading user text message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseResponseMessageForOptionInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;
    .registers 21

    move-object/from16 v1, p0

    .line 789
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 790
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 794
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2732e90d

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_2b

    const v5, 0x6cd7e29c

    if-eq v4, v5, :cond_21

    goto :goto_34

    :cond_21
    const-string v4, "rsp_txt_msg_with_option_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v3, 0x0

    goto :goto_34

    :cond_2b
    const-string v4, "rsp_faq_list_msg_with_option_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v3, 0x1

    :cond_34
    :goto_34
    if-eqz v3, :cond_3d

    if-eq v3, v7, :cond_3a

    const/4 v0, 0x0

    return-object v0

    .line 799
    :cond_3a
    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->FAQ_LIST_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    goto :goto_3f

    .line 796
    :cond_3d
    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/MessageType;->ADMIN_TEXT_WITH_OPTION_INPUT:Lcom/helpshift/conversation/activeconversation/message/MessageType;

    :goto_3f
    move-object/from16 v18, v2

    const-string v2, "skipped"

    .line 805
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4e

    const-string v2, "{}"

    :goto_4b
    move-object/from16 v16, v2

    goto :goto_59

    :cond_4e
    const-string v2, "option_data"

    .line 806
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4b

    :goto_59
    const-string v2, "created_at"

    .line 807
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 808
    invoke-static {v10}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v11

    .line 809
    new-instance v2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;

    const-string v3, "body"

    .line 810
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v3, "author"

    .line 812
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v3, v7}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v13

    const-string v3, "chatbot_info"

    .line 813
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v3, "meta"

    .line 816
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "refers"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v8, v2

    invoke-direct/range {v8 .. v18}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/helpshift/conversation/activeconversation/message/MessageType;)V

    const-string v3, "id"

    .line 818
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->serverId:Ljava/lang/String;

    const-string v3, "redacted"

    .line 819
    invoke-virtual {v0, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForOptionInput;->isRedacted:Z

    .line 820
    invoke-direct {v1, v2, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_a2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_a2} :catch_a3

    return-object v2

    :catch_a3
    move-exception v0

    .line 824
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading user response for option input"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0

    return-void
.end method

.method public parseResponseMessageForTextInput(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;
    .registers 22

    move-object/from16 v1, p0

    .line 116
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_de

    goto :goto_4e

    :sswitch_1d
    const-string v4, "rsp_txt_msg_with_dt_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x4

    goto :goto_4e

    :sswitch_27
    const-string v4, "rsp_empty_msg_with_txt_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x0

    goto :goto_4e

    :sswitch_31
    const-string v4, "rsp_txt_msg_with_txt_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x1

    goto :goto_4e

    :sswitch_3b
    const-string v4, "rsp_txt_msg_with_numeric_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x3

    goto :goto_4e

    :sswitch_45
    const-string v4, "rsp_txt_msg_with_email_input"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    const/4 v3, 0x2

    :cond_4e
    :goto_4e
    if-eqz v3, :cond_62

    if-eq v3, v9, :cond_5e

    if-eq v3, v6, :cond_5c

    if-eq v3, v5, :cond_5f

    if-eq v3, v7, :cond_5a

    const/4 v0, 0x0

    return-object v0

    :cond_5a
    const/4 v5, 0x4

    goto :goto_5f

    :cond_5c
    const/4 v5, 0x2

    goto :goto_5f

    :cond_5e
    const/4 v5, 0x1

    :cond_5f
    :goto_5f
    const/16 v19, 0x0

    goto :goto_65

    :cond_62
    const/4 v5, 0x1

    const/16 v19, 0x1

    :goto_65
    if-nez v19, :cond_71

    const-string v2, "skipped"

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_71

    const/4 v2, 0x1

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    const-string v3, "meta"

    .line 142
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "created_at"

    .line 143
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 144
    invoke-static {v11}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v12

    .line 145
    new-instance v4, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;

    const-string v6, "body"

    .line 146
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v6, "author"

    .line 148
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v1, v6, v9}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v14

    const-string v6, "chatbot_info"

    .line 150
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v6, "refers"

    .line 152
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v9, v4

    move v15, v5

    move/from16 v17, v2

    invoke-direct/range {v9 .. v19}, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;ILjava/lang/String;ZLjava/lang/String;Z)V

    if-ne v5, v7, :cond_bf

    if-nez v2, :cond_bf

    const-string v2, "dt"

    .line 156
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->dateInMillis:J

    const-string v2, "timezone"

    .line 157
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->timeZoneId:Ljava/lang/String;

    :cond_bf
    const-string v2, "id"

    .line 160
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->serverId:Ljava/lang/String;

    const-string v2, "redacted"

    .line 161
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v4, Lcom/helpshift/conversation/activeconversation/message/UserResponseMessageForTextInputDM;->isRedacted:Z

    .line 162
    invoke-direct {v1, v4, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_d2} :catch_d3

    return-object v4

    :catch_d3
    move-exception v0

    .line 166
    sget-object v2, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v3, "Parsing exception while reading user response for text input"

    invoke-static {v0, v2, v3}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_de
    .sparse-switch
        -0x318c7d35 -> :sswitch_45
        -0x5a48f84 -> :sswitch_3b
        0x1d6c939f -> :sswitch_31
        0x36c765a2 -> :sswitch_27
        0x7b7c9477 -> :sswitch_1d
    .end sparse-switch
.end method

.method public parseScreenshotMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;
    .registers 4

    .line 174
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseScreenshotMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/ScreenshotMessageDM;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 178
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading user screenshot message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseSingleFAQ(Ljava/lang/String;)Lcom/helpshift/faq/FaqCore;
    .registers 16

    const-string v0, "issue_tags"

    const-string v1, "stags"

    .line 1158
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1159
    new-instance p1, Lcom/helpshift/faq/FaqCore;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "publish_id"

    .line 1160
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "language"

    .line 1161
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "section_id"

    .line 1162
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "title"

    .line 1163
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "body"

    .line 1164
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v3, "is_rtl"

    .line 1166
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v11, "true"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 1167
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1169
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    invoke-static {v1}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_54

    :cond_4f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_54
    move-object v12, v1

    .line 1170
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1171
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-static {v0}, Lcom/helpshift/util/HSJSONUtils;->jsonArrayToStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_69

    :cond_64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_69
    move-object v13, v0

    move-object v3, p1

    invoke-direct/range {v3 .. v13}, Lcom/helpshift/faq/FaqCore;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;Ljava/util/List;Ljava/util/List;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_6e} :catch_6f

    return-object p1

    :catch_6f
    move-exception p1

    .line 1174
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading single faq"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseSmartIntentSearchModel(Ljava/lang/String;)Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;
    .registers 12

    .line 1237
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "weights"

    .line 1238
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent_ids"

    .line 1240
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "version"

    .line 1241
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1244
    invoke-static {v1}, Lcom/helpshift/util/HSJSONUtils;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    const-string v1, "label_base_probabilities"

    .line 1246
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1248
    invoke-static {v1}, Lcom/helpshift/util/HSJSONUtils;->getDoubleListFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v8

    .line 1250
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-ne v1, v3, :cond_90

    const-string v1, "vocabulary"

    .line 1255
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "word_label_probabilities"

    .line 1257
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1259
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v3, v4, :cond_88

    .line 1263
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 1264
    :goto_4b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_63

    .line 1266
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/helpshift/util/HSJSONUtils;->getDoubleListFromJSONArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    .line 1267
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    :cond_63
    const-string p1, "parameters"

    .line 1270
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "confidence_threshold"

    .line 1271
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const-string v0, "max_combined_confidence"

    .line 1272
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1274
    new-instance p1, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/helpshift/conversation/smartintent/dto/SISearchModelDTO;-><init>(Ljava/lang/Integer;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    return-object p1

    .line 1260
    :cond_88
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Mismatch in vocabulary and wordLabelProbability array"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1251
    :cond_90
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Mismatch in LeafIntentIds and baseProbabilities list"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_98} :catch_98

    :catch_98
    move-exception p1

    .line 1279
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading smart intent model"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1

    return-void
.end method

.method public parseSmartIntentTree(Ljava/lang/String;)Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;
    .registers 16

    .line 1208
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "tree"

    .line 1209
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    .line 1210
    invoke-direct {p0, v1, p1}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseSmartIntents(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v12

    const-string p1, "version"

    .line 1211
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p1, "translations"

    .line 1212
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "token_delimiters"

    .line 1213
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1214
    new-instance v13, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "prompt_title"

    .line 1216
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "typing_hint"

    .line 1217
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "search_title"

    .line 1218
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "empty_search_title"

    .line 1219
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "empty_search_desc"

    .line 1220
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string p1, "eis"

    .line 1221
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1222
    invoke-static {v1}, Lcom/helpshift/util/HSJSONUtils;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v11

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/helpshift/conversation/smartintent/dto/SITreeDTO;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_56} :catch_57

    return-object v13

    :catch_57
    move-exception p1

    .line 1227
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading smart intent tree"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseUserAttachmentMessageDM(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;
    .registers 4

    .line 186
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseUserAttachmentMessageDM(Lorg/json/JSONObject;)Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;

    move-result-object p1
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object p1

    :catch_a
    move-exception p1

    .line 190
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading user attachment message"

    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseUserSmartIntentMessage(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageDM;
    .registers 9

    .line 538
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "created_at"

    .line 539
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "intent_labels"

    .line 540
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 542
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1e

    .line 544
    invoke-static {p1}, Lcom/helpshift/util/HSJSONUtils;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    goto :goto_1f

    :cond_1e
    move-object v2, v1

    .line 547
    :goto_1f
    invoke-static {v3}, Lcom/helpshift/common/util/HSDateFormatSpec;->convertToEpochTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 548
    new-instance p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;

    const-string v1, "author"

    .line 551
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {p0, v1, v6}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseMessageAuthor(Lorg/json/JSONObject;Z)Lcom/helpshift/conversation/activeconversation/message/Author;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;-><init>(Ljava/util/List;Ljava/lang/String;JLcom/helpshift/conversation/activeconversation/message/Author;)V

    const-string v1, "id"

    .line 552
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->serverId:Ljava/lang/String;

    const-string v1, "body"

    .line 553
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->body:Ljava/lang/String;

    const-string v1, "md_state"

    const-string v2, ""

    .line 554
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/helpshift/common/platform/AndroidResponseParser;->convertDeliveryStateToInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->deliveryState:I

    const-string v1, "redacted"

    const/4 v2, 0x0

    .line 555
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/helpshift/conversation/activeconversation/message/UserSmartIntentMessageDM;->isRedacted:Z

    .line 556
    invoke-direct {p0, p1, v0}, Lcom/helpshift/common/platform/AndroidResponseParser;->parseAndSetDataForUserSentMessages(Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lorg/json/JSONObject;)V
    :try_end_5e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5e} :catch_5f

    return-object p1

    :catch_5f
    move-exception p1

    .line 560
    sget-object v0, Lcom/helpshift/common/exception/ParseException;->GENERIC:Lcom/helpshift/common/exception/ParseException;

    const-string v1, "Parsing exception while reading user smart intent message"

    .line 561
    invoke-static {p1, v0, v1}, Lcom/helpshift/common/exception/RootAPIException;->wrap(Ljava/lang/Exception;Lcom/helpshift/common/exception/ExceptionType;Ljava/lang/String;)Lcom/helpshift/common/exception/RootAPIException;

    move-result-object p1

    throw p1
.end method

.method public parseWebSocketMessage(Ljava/lang/String;)Lcom/helpshift/conversation/dto/WebSocketMessage;
    .registers 9

    const/4 v0, 0x0

    .line 359
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 360
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/16 v3, 0x64

    const/4 v4, 0x1

    if-eq v2, v3, :cond_27

    const/16 p1, 0x6b

    if-eq v2, p1, :cond_17

    move-object p1, v0

    goto/16 :goto_90

    .line 363
    :cond_17
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 364
    new-instance p1, Lcom/helpshift/conversation/dto/WSPingMessage;

    invoke-direct {p1, v1, v2}, Lcom/helpshift/conversation/dto/WSPingMessage;-><init>(J)V

    goto :goto_90

    :cond_27
    const/4 v2, 0x2

    .line 367
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_2c} :catch_86

    move-object v2, v0

    const/4 v0, 0x0

    .line 369
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_8f

    .line 370
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 371
    new-instance v5, Lorg/json/JSONObject;

    const-string v6, "m"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "stream"

    .line 372
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "agent_type_activity"

    .line 373
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const-string v3, "action"

    .line 374
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "start"

    .line 375
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 376
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v6, "ttl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 377
    new-instance v3, Lcom/helpshift/conversation/dto/WSTypingActionMessage;

    invoke-direct {v3, v4, v5, v6}, Lcom/helpshift/conversation/dto/WSTypingActionMessage;-><init>(ZJ)V

    goto :goto_80

    :cond_71
    const-string v5, "stop"

    .line 379
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 380
    new-instance v3, Lcom/helpshift/conversation/dto/WSTypingActionMessage;

    const-wide/16 v5, 0x0

    invoke-direct {v3, p1, v5, v6}, Lcom/helpshift/conversation/dto/WSTypingActionMessage;-><init>(ZJ)V
    :try_end_80
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_80} :catch_84

    :goto_80
    move-object v2, v3

    :cond_81
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :catch_84
    move-exception p1

    goto :goto_88

    :catch_86
    move-exception p1

    move-object v2, v0

    :goto_88
    const-string v0, "Helpshift_AResponseParser"

    const-string v1, "Exception in parsing web-socket message"

    .line 388
    invoke-static {v0, v1, p1}, Lcom/helpshift/util/HSLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8f
    move-object p1, v2

    :goto_90
    return-object p1
.end method
