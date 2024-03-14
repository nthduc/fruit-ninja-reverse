.class final Lcom/facebook/appevents/suggestedevents/FeatureExtractor;
.super Ljava/lang/Object;
.source "FeatureExtractor.java"


# static fields
.field private static final NUM_OF_FEATURES:I = 0x1e

.field private static final REGEX_ADD_TO_CART_BUTTON_TEXT:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

.field private static final REGEX_ADD_TO_CART_PAGE_TITLE:Ljava/lang/String; = "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

.field private static final REGEX_CR_HAS_CONFIRM_PASSWORD_FIELD:Ljava/lang/String; = "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

.field private static final REGEX_CR_HAS_LOG_IN_KEYWORDS:Ljava/lang/String; = "(?i)(sign in)|login|signIn"

.field private static final REGEX_CR_HAS_SIGN_ON_KEYWORDS:Ljava/lang/String; = "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

.field private static final REGEX_CR_PASSWORD_FIELD:Ljava/lang/String; = "password"

.field private static eventInfo:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static initialized:Z = false

.field private static languageInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rules:Lorg/json/JSONObject;

.field private static textTypeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDenseFeatures(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 112
    :cond_a
    :try_start_a
    sget-boolean v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z

    if-nez v0, :cond_f

    return-object v1

    :cond_f
    const/16 v0, 0x1e

    .line 115
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 116
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_17} :catch_52

    .line 118
    :try_start_17
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 119
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "view"

    .line 120
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "screenname"

    .line 122
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 125
    invoke-static {v2, v3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 126
    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v4

    .line 127
    invoke-static {v0, v4}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V

    .line 129
    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_46

    return-object v1

    .line 134
    :cond_46
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v3, p0, v2, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p0

    .line 135
    invoke-static {v0, p0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_51
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_51} :catch_51
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_51} :catch_52

    :catch_51
    return-object v0

    :catch_52
    move-exception p0

    .line 141
    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    :try_start_a
    const-string v0, "is_interacted"

    .line 389
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-object p0

    :cond_13
    const-string v0, "childviews"

    .line 393
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1c

    return-object v1

    :cond_1c
    const/4 v0, 0x0

    .line 398
    :goto_1d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_37

    .line 399
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->getInteractedNode(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_2b} :catch_37
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2b} :catch_31

    if-eqz v2, :cond_2e

    return-object v2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :catch_31
    move-exception p0

    .line 408
    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_37
    :cond_37
    return-object v1
.end method

.method static getTextFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 106
    :cond_a
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_2a} :catch_2b

    return-object p0

    :catch_2b
    move-exception p0

    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method static initialize(Ljava/io/File;)V
    .registers 8

    const-string v0, "4"

    const-string v1, "3"

    const-string v2, "2"

    const-string v3, "1"

    const-class v4, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v4}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    return-void

    .line 62
    :cond_11
    :try_start_11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sput-object v4, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    .line 63
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 65
    new-array p0, p0, [B

    .line 66
    invoke-virtual {v4, p0}, Ljava/io/InputStream;->read([B)I

    .line 67
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_d7
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_37} :catch_d1

    .line 74
    :try_start_37
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    .line 75
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v4, "ENGLISH"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v4, "GERMAN"

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v4, "SPANISH"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    const-string v4, "JAPANESE"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    .line 81
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "VIEW_CONTENT"

    const-string v5, "0"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "SEARCH"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "ADD_TO_CART"

    invoke-interface {p0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "ADD_TO_WISHLIST"

    invoke-interface {p0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "INITIATE_CHECKOUT"

    invoke-interface {p0, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "ADD_PAYMENT_INFO"

    const-string v5, "5"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "PURCHASE"

    const-string v5, "6"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "LEAD"

    const-string v5, "7"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    const-string v4, "COMPLETE_REGISTRATION"

    const-string v5, "8"

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    .line 92
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v4, "BUTTON_TEXT"

    invoke-interface {p0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v3, "PAGE_TITLE"

    invoke-interface {p0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v2, "RESOLVED_DOCUMENT_LINK"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    const-string v1, "BUTTON_ID"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 97
    sput-boolean p0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_d0} :catch_d1

    return-void

    :catch_d1
    move-exception p0

    .line 98
    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_d7
    return-void
.end method

.method private static isButton(Lorg/json/JSONObject;)Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    :try_start_a
    const-string v0, "classtypebitmask"

    .line 357
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_16

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1

    :catch_16
    move-exception p0

    .line 358
    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method static isInitialized()Z
    .registers 3

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 101
    :cond_a
    :try_start_a
    sget-boolean v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->initialized:Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c} :catch_d

    return v0

    :catch_d
    move-exception v0

    const-class v2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 9

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 294
    :cond_a
    :try_start_a
    array-length v0, p0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_24

    aget-object v3, p0, v2

    .line 295
    array-length v4, p1

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_21

    aget-object v6, p1, v5

    .line 296
    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1a} :catch_25

    if-eqz v6, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    return v1

    :catch_25
    move-exception p0

    .line 302
    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static nonparseFeatures(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .registers 21

    move-object/from16 v0, p3

    const-string v1, "LEAD"

    const-string v2, "PURCHASE"

    const-string v3, "PAGE_TITLE"

    const-string v4, "BUTTON_TEXT"

    const-string v5, "COMPLETE_REGISTRATION"

    const-string v6, "ENGLISH"

    const-class v7, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v7}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_18

    return-object v8

    :cond_18
    const/16 v7, 0x1e

    .line 221
    :try_start_1a
    new-array v7, v7, [F

    const/4 v9, 0x0

    .line 222
    invoke-static {v7, v9}, Ljava/util/Arrays;->fill([FF)V

    .line 224
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-le v10, v13, :cond_2b

    sub-int/2addr v10, v13

    goto :goto_2c

    :cond_2b
    const/4 v10, 0x0

    :goto_2c
    int-to-float v10, v10

    aput v10, v7, v11
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_2f} :catch_149

    :goto_2f
    const/high16 v10, 0x3f800000    # 1.0f

    .line 228
    :try_start_31
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v12, v11, :cond_4d

    move-object/from16 v11, p1

    .line 229
    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->isButton(Lorg/json/JSONObject;)Z

    move-result v13

    if-eqz v13, :cond_4a

    const/16 v13, 0x9

    .line 230
    aget v14, v7, v13

    add-float/2addr v14, v10

    aput v14, v7, v13
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_4a} :catch_4d
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4a} :catch_149

    :cond_4a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2f

    :catch_4d
    :cond_4d
    const/16 v11, 0xd

    const/high16 v12, -0x40800000    # -1.0f

    :try_start_51
    aput v12, v7, v11

    const/16 v11, 0xe

    aput v12, v7, v11

    .line 240
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 242
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, p0

    .line 244
    invoke-static {v14, v13, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 245
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 246
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xf

    .line 249
    invoke-static {v6, v5, v4, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_91

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_92

    :cond_91
    const/4 v15, 0x0

    :goto_92
    aput v15, v7, v14

    const/16 v14, 0x10

    .line 250
    invoke-static {v6, v5, v3, v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9f

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_a0

    :cond_9f
    const/4 v15, 0x0

    :goto_a0
    aput v15, v7, v14

    const/16 v14, 0x11

    const-string v15, "BUTTON_ID"

    .line 251
    invoke-static {v6, v5, v15, v12}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_b0

    :cond_af
    const/4 v5, 0x0

    :goto_b0
    aput v5, v7, v14

    const/16 v5, 0x12

    const-string v12, "password"

    .line 254
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_bf

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_c0

    :cond_bf
    const/4 v12, 0x0

    :goto_c0
    aput v12, v7, v5

    const/16 v5, 0x13

    const-string v12, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    .line 256
    invoke-static {v12, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_cf

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_d0

    :cond_cf
    const/4 v12, 0x0

    :goto_d0
    aput v12, v7, v5

    const/16 v5, 0x14

    const-string v12, "(?i)(sign in)|login|signIn"

    .line 257
    invoke-static {v12, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_df

    const/high16 v12, 0x3f800000    # 1.0f

    goto :goto_e0

    :cond_df
    const/4 v12, 0x0

    :goto_e0
    aput v12, v7, v5

    const/16 v5, 0x15

    const-string v12, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    .line 258
    invoke-static {v12, v0}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ef

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_f0

    :cond_ef
    const/4 v0, 0x0

    :goto_f0
    aput v0, v7, v5

    const/16 v0, 0x16

    .line 261
    invoke-static {v6, v2, v4, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_fd

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_fe

    :cond_fd
    const/4 v5, 0x0

    :goto_fe
    aput v5, v7, v0

    const/16 v0, 0x18

    .line 262
    invoke-static {v6, v2, v3, v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_10c

    :cond_10b
    const/4 v2, 0x0

    :goto_10c
    aput v2, v7, v0

    const/16 v0, 0x19

    const-string v2, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    .line 265
    invoke-static {v2, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    :goto_11c
    aput v2, v7, v0

    const/16 v0, 0x1b

    const-string v2, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    .line 266
    invoke-static {v2, v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12b

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_12c

    :cond_12b
    const/4 v2, 0x0

    :goto_12c
    aput v2, v7, v0

    const/16 v0, 0x1c

    .line 270
    invoke-static {v6, v1, v4, v13}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_139

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_13a

    :cond_139
    const/4 v2, 0x0

    :goto_13a
    aput v2, v7, v0

    const/16 v0, 0x1d

    .line 271
    invoke-static {v6, v1, v3, v11}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_146

    const/high16 v9, 0x3f800000    # 1.0f

    :cond_146
    aput v9, v7, v0
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_148} :catch_149

    return-object v7

    :catch_149
    move-exception v0

    .line 273
    const-class v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0, v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v8
.end method

.method private static parseFeatures(Lorg/json/JSONObject;)[F
    .registers 15

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    :cond_a
    const/16 v0, 0x1e

    .line 145
    :try_start_c
    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 146
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    const-string v2, "text"

    .line 147
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    .line 148
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "classname"

    .line 149
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "inputtype"

    const/4 v6, -0x1

    .line 150
    invoke-virtual {p0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    .line 152
    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v3, v7, v9

    const-string v3, "$"

    const-string v10, "amount"

    const-string v11, "price"

    const-string v12, "total"

    .line 154
    filled-new-array {v3, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v3, :cond_5e

    .line 155
    aget v3, v0, v8
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_56} :catch_14a

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v3, v12

    :try_start_5c
    aput v3, v0, v8

    :cond_5e
    const-string v3, "password"

    const-string v12, "pwd"

    .line 158
    filled-new-array {v3, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 159
    aget v3, v0, v9
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_6e} :catch_14a

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v3, v12

    :try_start_74
    aput v3, v0, v9

    :cond_76
    const-string v3, "tel"

    const-string v12, "phone"

    .line 162
    filled-new-array {v3, v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 163
    aget v3, v0, v6
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_86} :catch_14a

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v3, v12

    :try_start_8c
    aput v3, v0, v6

    :cond_8e
    const-string v3, "search"

    .line 166
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const/4 v3, 0x4

    .line 167
    aget v7, v0, v3
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_9d} :catch_14a

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v7, v12

    :try_start_a3
    aput v7, v0, v3

    :cond_a5
    if-ltz v5, :cond_b2

    const/4 v3, 0x5

    .line 172
    aget v7, v0, v3
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_aa} :catch_14a

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v10

    double-to-float v7, v12

    :try_start_b0
    aput v7, v0, v3

    :cond_b2
    const/4 v3, 0x3

    if-eq v5, v3, :cond_b7

    if-ne v5, v6, :cond_c2

    :cond_b7
    const/4 v3, 0x6

    .line 177
    aget v6, v0, v3
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b0 .. :try_end_ba} :catch_14a

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    double-to-float v6, v6

    :try_start_c0
    aput v6, v0, v3

    :cond_c2
    const/16 v3, 0x20

    if-eq v5, v3, :cond_d2

    .line 181
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 182
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_dd

    :cond_d2
    const/4 v3, 0x7

    .line 183
    aget v5, v0, v3
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_c0 .. :try_end_d5} :catch_14a

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v10

    double-to-float v5, v5

    :try_start_db
    aput v5, v0, v3

    :cond_dd
    const-string v3, "checkbox"

    .line 187
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f1

    const/16 v3, 0x8

    .line 188
    aget v5, v0, v3
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_db .. :try_end_e9} :catch_14a

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v10

    double-to-float v5, v5

    :try_start_ef
    aput v5, v0, v3

    :cond_f1
    const-string v3, "complete"

    const-string v5, "confirm"

    const-string v6, "done"

    const-string v7, "submit"

    .line 191
    filled-new-array {v3, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v9, [Ljava/lang/String;

    aput-object v2, v5, v8

    invoke-static {v3, v5}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->matchIndicators([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_113

    const/16 v2, 0xa

    .line 193
    aget v3, v0, v2
    :try_end_10b
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_10b} :catch_14a

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v10

    double-to-float v3, v5

    :try_start_111
    aput v3, v0, v2

    :cond_113
    const-string v2, "radio"

    .line 197
    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12f

    const-string v2, "button"

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12f

    const/16 v2, 0xc

    .line 198
    aget v3, v0, v2
    :try_end_127
    .catch Ljava/lang/Throwable; {:try_start_111 .. :try_end_127} :catch_14a

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v10

    double-to-float v3, v3

    :try_start_12d
    aput v3, v0, v2
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_12d .. :try_end_12f} :catch_14a

    :cond_12f
    :try_start_12f
    const-string v2, "childviews"

    .line 202
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_139
    if-ge v8, v2, :cond_149

    .line 205
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->parseFeatures(Lorg/json/JSONObject;)[F

    move-result-object v3

    invoke-static {v0, v3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->sum([F[F)V
    :try_end_146
    .catch Lorg/json/JSONException; {:try_start_12f .. :try_end_146} :catch_149
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_146} :catch_14a

    add-int/lit8 v8, v8, 0x1

    goto :goto_139

    :catch_149
    :cond_149
    return-object v0

    :catch_14a
    move-exception p0

    .line 211
    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .registers 11

    const-string v0, "childviews"

    const-string v1, "is_interacted"

    const-class v2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    return v3

    .line 307
    :cond_e
    :try_start_e
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_16

    return v4

    .line 315
    :cond_16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v5, 0x0

    .line 316
    :goto_1b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_31

    .line 317
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 318
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_33

    :cond_2e
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_31
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 325
    :goto_33
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_4b

    const/4 p0, 0x0

    .line 327
    :goto_3b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_66

    .line 328
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p0, p0, 0x1

    goto :goto_3b

    :cond_4b
    const/4 v1, 0x0

    .line 332
    :goto_4c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_63

    .line 333
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 334
    invoke-static {v7, p1}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->pruneTree(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 336
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    :cond_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 339
    :cond_63
    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_66
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_66} :catch_6d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_66} :catch_67

    :cond_66
    return v5

    :catch_67
    move-exception p0

    .line 347
    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_6d
    return v3
.end method

.method private static regexMatched(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 290
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_16} :catch_17

    return p0

    :catch_17
    move-exception p0

    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static regexMatched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 278
    :cond_a
    :try_start_a
    sget-object v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->rules:Lorg/json/JSONObject;

    const-string v2, "rulesForLanguage"

    .line 280
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v2, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->languageInfo:Ljava/util/Map;

    .line 281
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "rulesForEvent"

    .line 282
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->eventInfo:Ljava/util/Map;

    .line 283
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "positiveRules"

    .line 284
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->textTypeInfo:Ljava/util/Map;

    .line 285
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-static {p0, p3}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->regexMatched(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_46} :catch_47

    return p0

    :catch_47
    move-exception p0

    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method

.method private static sum([F[F)V
    .registers 5

    const-class v0, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 351
    :goto_a
    :try_start_a
    array-length v1, p0

    if-ge v0, v1, :cond_17

    .line 352
    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    aput v1, p0, v0
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_14} :catch_18

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_17
    return-void

    :catch_18
    move-exception p0

    .line 354
    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method

.method private static updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .registers 7

    const-string v0, ""

    const-class v1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {v1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    :try_start_b
    const-string v1, "text"

    .line 363
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    .line 364
    invoke-virtual {p0, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_23} :catch_54

    const-string v3, " "

    if-nez v2, :cond_2d

    .line 366
    :try_start_27
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 369
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const-string v0, "childviews"

    .line 372
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_42

    return-void

    :cond_42
    const/4 v0, 0x0

    .line 376
    :goto_43
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_47} :catch_54

    if-ge v0, v1, :cond_53

    .line 378
    :try_start_49
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 379
    invoke-static {v1, p1, p2}, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;->updateHintAndTextRecursively(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_49 .. :try_end_50} :catch_50
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_50} :catch_54

    :catch_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_53
    return-void

    :catch_54
    move-exception p0

    .line 384
    const-class p1, Lcom/facebook/appevents/suggestedevents/FeatureExtractor;

    invoke-static {p0, p1}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
