.class public Lcom/facebook/GraphResponse;
.super Ljava/lang/Object;
.source "GraphResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphResponse$PagingDirection;
    }
.end annotation


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field public static final SUCCESS_KEY:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "GraphResponse"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lorg/json/JSONObject;

.field private final graphObjectArray:Lorg/json/JSONArray;

.field private final rawResponse:Ljava/lang/String;

.field private final request:Lcom/facebook/GraphRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .registers 11

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 82
    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 74
    invoke-direct/range {v0 .. v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONArray;Lcom/facebook/FacebookRequestError;)V
    .registers 7

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    .line 98
    iput-object p2, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 99
    iput-object p3, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 101
    iput-object p5, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    .line 102
    iput-object p6, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 402
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_22

    .line 404
    new-instance v3, Lcom/facebook/GraphResponse;

    .line 406
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/GraphRequest;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v3, v4, p1, v5}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 407
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    return-object v1
.end method

.method private static createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 361
    instance-of v0, p2, Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    .line 362
    check-cast p2, Lorg/json/JSONObject;

    .line 365
    invoke-static {p2, p3, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object p3

    if-eqz p3, :cond_47

    .line 367
    sget-object p2, Lcom/facebook/GraphResponse;->TAG:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {p3}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result p2

    const/16 v0, 0xbe

    if-ne p2, v0, :cond_41

    .line 369
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/internal/Utility;->isCurrentAccessToken(Lcom/facebook/AccessToken;)Z

    move-result p2

    if-eqz p2, :cond_41

    .line 370
    invoke-virtual {p3}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result p2

    const/16 v0, 0x1ed

    if-eq p2, v0, :cond_34

    .line 371
    invoke-static {v1}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    goto :goto_41

    .line 372
    :cond_34
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result p2

    if-nez p2, :cond_41

    .line 373
    invoke-static {}, Lcom/facebook/AccessToken;->expireCurrentAccessToken()V

    .line 376
    :cond_41
    :goto_41
    new-instance p2, Lcom/facebook/GraphResponse;

    invoke-direct {p2, p0, p1, p3}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    return-object p2

    :cond_47
    const-string p3, "body"

    const-string v0, "FACEBOOK_NON_JSON_RESULT"

    .line 380
    invoke-static {p2, p3, v0}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 382
    instance-of p3, p2, Lorg/json/JSONObject;

    if-eqz p3, :cond_5f

    .line 383
    new-instance p3, Lcom/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/json/JSONObject;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3

    .line 384
    :cond_5f
    instance-of p3, p2, Lorg/json/JSONArray;

    if-eqz p3, :cond_6f

    .line 385
    new-instance p3, Lcom/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/json/JSONArray;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object p3

    .line 388
    :cond_6f
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 391
    :cond_71
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, p3, :cond_81

    .line 392
    new-instance p3, Lcom/facebook/GraphResponse;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {p3, p0, p1, p2, v1}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object p3

    .line 394
    :cond_81
    new-instance p0, Lcom/facebook/FacebookException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Got unexpected object type in response, class: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 305
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 306
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_51

    .line 310
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphRequest;

    .line 316
    :try_start_13
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "body"

    .line 317
    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_24

    .line 318
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    goto :goto_26

    :cond_24
    const/16 v5, 0xc8

    :goto_26
    const-string v6, "code"

    .line 319
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 322
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_33} :catch_43
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_33} :catch_34

    goto :goto_52

    :catch_34
    move-exception v4

    .line 330
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :catch_43
    move-exception v4

    .line 327
    new-instance v5, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v5, v3, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    :goto_51
    move-object v5, p2

    .line 335
    :goto_52
    instance-of v3, v5, Lorg/json/JSONArray;

    if-eqz v3, :cond_97

    check-cast v5, Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ne v3, v0, :cond_97

    .line 341
    :goto_5e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_96

    .line 342
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/GraphRequest;

    .line 344
    :try_start_6a
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 345
    invoke-static {v0, p0, v3, p2}, Lcom/facebook/GraphResponse;->createResponseFromObject(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/GraphResponse;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_75} :catch_85
    .catch Lcom/facebook/FacebookException; {:try_start_6a .. :try_end_75} :catch_76

    goto :goto_93

    :catch_76
    move-exception v3

    .line 350
    new-instance v4, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :catch_85
    move-exception v3

    .line 347
    new-instance v4, Lcom/facebook/GraphResponse;

    new-instance v6, Lcom/facebook/FacebookRequestError;

    invoke-direct {v6, p0, v3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v4, v0, p0, v6}, Lcom/facebook/GraphResponse;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_96
    return-object v1

    .line 336
    :cond_97
    new-instance p0, Lcom/facebook/FacebookException;

    const-string p1, "Unexpected number of results"

    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p0

    return-void
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 274
    sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    .line 274
    invoke-static {v0, v2, v3, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-static {p0, p1, p2}, Lcom/facebook/GraphResponse;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 290
    invoke-static {p1, p2, v0}, Lcom/facebook/GraphResponse;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 291
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 295
    invoke-virtual {p2}, Lcom/facebook/GraphRequestBatch;->getId()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "Response"

    const-string p2, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    .line 291
    invoke-static {v0, p0, p2, v1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/GraphRequestBatch;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/GraphResponse;",
            ">;"
        }
    .end annotation

    const-string v0, "Response <Error>: %s"

    const-string v1, "Response"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 240
    :try_start_7
    invoke-static {}, Lcom/facebook/FacebookSdk;->isFullyInitialized()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 246
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0x190

    if-lt v5, v6, :cond_1a

    .line 247
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    goto :goto_1e

    .line 249
    :cond_1a
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 252
    :goto_1e
    invoke-static {v4, p0, p1}, Lcom/facebook/GraphResponse;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;

    move-result-object p0
    :try_end_22
    .catch Lcom/facebook/FacebookException; {:try_start_7 .. :try_end_22} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_35
    .catchall {:try_start_7 .. :try_end_22} :catchall_33

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :cond_26
    :try_start_26
    const-string v5, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 242
    sget-object v6, Lcom/facebook/GraphResponse;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v6, Lcom/facebook/FacebookException;

    invoke-direct {v6, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_33
    .catch Lcom/facebook/FacebookException; {:try_start_26 .. :try_end_33} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_33} :catch_35
    .catchall {:try_start_26 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    goto :goto_5e

    :catch_35
    move-exception v5

    .line 262
    :try_start_36
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v6, v1, v0, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v5}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v0}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_33

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catch_4c
    move-exception v5

    .line 254
    :try_start_4d
    sget-object v6, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-static {v6, v1, v0, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {p1, p0, v5}, Lcom/facebook/GraphResponse;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object p0
    :try_end_5a
    .catchall {:try_start_4d .. :try_end_5a} :catchall_33

    .line 265
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :goto_5e
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    throw p0
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getJSONArray()Lorg/json/JSONArray;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObjectArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public final getJSONObject()Lorg/json/JSONObject;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/facebook/GraphResponse;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lcom/facebook/GraphRequest;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/GraphResponse$PagingDirection;)Lcom/facebook/GraphRequest;
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    const-string v2, "paging"

    .line 182
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 184
    sget-object v2, Lcom/facebook/GraphResponse$PagingDirection;->NEXT:Lcom/facebook/GraphResponse$PagingDirection;

    if-ne p1, v2, :cond_18

    const-string p1, "next"

    .line 185
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_18
    const-string p1, "previous"

    .line 187
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_20

    :cond_1f
    move-object p1, v1

    .line 191
    :goto_20
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-object v1

    :cond_27
    if-eqz p1, :cond_36

    .line 195
    iget-object v0, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    return-object v1

    .line 203
    :cond_36
    :try_start_36
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/GraphResponse;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/net/URL;)V
    :try_end_46
    .catch Ljava/net/MalformedURLException; {:try_start_36 .. :try_end_46} :catch_47

    return-object v0

    :catch_47
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 216
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/facebook/GraphResponse;->connection:Ljava/net/HttpURLConnection;

    .line 217
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    goto :goto_15

    :cond_13
    const/16 v4, 0xc8

    :goto_15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    const-string v0, "unknown"

    .line 222
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{Response: "

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " responseCode: "

    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", graphObject: "

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/GraphResponse;->graphObject:Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", error: "

    .line 228
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/facebook/GraphResponse;->error:Lcom/facebook/FacebookRequestError;

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
