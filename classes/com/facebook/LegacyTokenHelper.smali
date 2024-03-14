.class final Lcom/facebook/LegacyTokenHelper;
.super Ljava/lang/Object;
.source "LegacyTokenHelper.java"


# static fields
.field public static final APPLICATION_ID_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ApplicationId"

.field public static final DECLINED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.DeclinedPermissions"

.field public static final DEFAULT_CACHE_KEY:Ljava/lang/String; = "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

.field public static final EXPIRATION_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpirationDate"

.field public static final EXPIRED_PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.ExpiredPermissions"

.field private static final INVALID_BUNDLE_MILLISECONDS:J = -0x8000000000000000L

.field private static final IS_SSO_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.IsSSO"

.field private static final JSON_VALUE:Ljava/lang/String; = "value"

.field private static final JSON_VALUE_ENUM_TYPE:Ljava/lang/String; = "enumType"

.field private static final JSON_VALUE_TYPE:Ljava/lang/String; = "valueType"

.field public static final LAST_REFRESH_DATE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.LastRefreshDate"

.field public static final PERMISSIONS_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Permissions"

.field private static final TAG:Ljava/lang/String; = "LegacyTokenHelper"

.field public static final TOKEN_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.Token"

.field public static final TOKEN_SOURCE_KEY:Ljava/lang/String; = "com.facebook.TokenCachingStrategy.AccessTokenSource"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final TYPE_BOOLEAN_ARRAY:Ljava/lang/String; = "bool[]"

.field private static final TYPE_BYTE:Ljava/lang/String; = "byte"

.field private static final TYPE_BYTE_ARRAY:Ljava/lang/String; = "byte[]"

.field private static final TYPE_CHAR:Ljava/lang/String; = "char"

.field private static final TYPE_CHAR_ARRAY:Ljava/lang/String; = "char[]"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "double"

.field private static final TYPE_DOUBLE_ARRAY:Ljava/lang/String; = "double[]"

.field private static final TYPE_ENUM:Ljava/lang/String; = "enum"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "float"

.field private static final TYPE_FLOAT_ARRAY:Ljava/lang/String; = "float[]"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "int"

.field private static final TYPE_INTEGER_ARRAY:Ljava/lang/String; = "int[]"

.field private static final TYPE_LONG:Ljava/lang/String; = "long"

.field private static final TYPE_LONG_ARRAY:Ljava/lang/String; = "long[]"

.field private static final TYPE_SHORT:Ljava/lang/String; = "short"

.field private static final TYPE_SHORT_ARRAY:Ljava/lang/String; = "short[]"

.field private static final TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TYPE_STRING_LIST:Ljava/lang/String; = "stringList"


# instance fields
.field private cache:Landroid/content/SharedPreferences;

.field private cacheKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, v0}, Lcom/facebook/LegacyTokenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    .line 125
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p2, "com.facebook.SharedPreferencesTokenCachingStrategy.DEFAULT_KEY"

    :cond_10
    iput-object p2, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_19

    move-object p1, p2

    .line 135
    :cond_19
    iget-object p2, p0, Lcom/facebook/LegacyTokenHelper;->cacheKey:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    return-void
.end method

.method private deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    const-string v1, "{}"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "valueType"

    .line 449
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bool"

    .line 451
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "value"

    if-eqz v2, :cond_26

    .line 452
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_22f

    :cond_26
    const-string v2, "bool[]"

    .line 453
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4a

    .line 454
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Z

    .line 456
    :goto_39
    array-length v2, v1

    if-ge v4, v2, :cond_45

    .line 457
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    aput-boolean v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 459
    :cond_45
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_22f

    :cond_4a
    const-string v2, "byte"

    .line 460
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 461
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_22f

    :cond_5c
    const-string v2, "byte[]"

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 463
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 464
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [B

    .line 465
    :goto_6e
    array-length v2, v1

    if-ge v4, v2, :cond_7b

    .line 466
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6e

    .line 468
    :cond_7b
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_22f

    :cond_80
    const-string v2, "short"

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 470
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_22f

    :cond_92
    const-string v2, "short[]"

    .line 471
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 472
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [S

    .line 474
    :goto_a4
    array-length v2, v1

    if-ge v4, v2, :cond_b1

    .line 475
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    .line 477
    :cond_b1
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_22f

    :cond_b6
    const-string v2, "int"

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 479
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_22f

    :cond_c7
    const-string v2, "int[]"

    .line 480
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 481
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [I

    .line 483
    :goto_d9
    array-length v2, v1

    if-ge v4, v2, :cond_e5

    .line 484
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_d9

    .line 486
    :cond_e5
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_22f

    :cond_ea
    const-string v2, "long"

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 488
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_22f

    :cond_fb
    const-string v2, "long[]"

    .line 489
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 490
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [J

    .line 492
    :goto_10d
    array-length v2, v1

    if-ge v4, v2, :cond_119

    .line 493
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10d

    .line 495
    :cond_119
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_22f

    :cond_11e
    const-string v2, "float"

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    .line 497
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_22f

    :cond_130
    const-string v2, "float[]"

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 499
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 501
    :goto_142
    array-length v2, v1

    if-ge v4, v2, :cond_14f

    .line 502
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_142

    .line 504
    :cond_14f
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_22f

    :cond_154
    const-string v2, "double"

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_165

    .line 506
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_22f

    :cond_165
    const-string v2, "double[]"

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_188

    .line 508
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [D

    .line 510
    :goto_177
    array-length v2, v1

    if-ge v4, v2, :cond_183

    .line 511
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    aput-wide v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_177

    .line 513
    :cond_183
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_22f

    :cond_188
    const-string v2, "char"

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1a6

    .line 515
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22f

    .line 516
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_22f

    .line 517
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_22f

    :cond_1a6
    const-string v2, "char[]"

    .line 519
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d5

    .line 520
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 522
    :goto_1b9
    array-length v3, v1

    if-ge v2, v3, :cond_1d1

    .line 523
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1ce

    .line 524
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1ce

    .line 525
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    :cond_1ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b9

    .line 528
    :cond_1d1
    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto :goto_22f

    :cond_1d5
    const-string v2, "string"

    .line 529
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e5

    .line 530
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22f

    :cond_1e5
    const-string v2, "stringList"

    .line 531
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_212

    .line 532
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 534
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1fa
    if-ge v4, v1, :cond_20e

    .line 536
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 537
    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v3, v5, :cond_206

    const/4 v3, 0x0

    goto :goto_208

    :cond_206
    check-cast v3, Ljava/lang/String;

    :goto_208
    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1fa

    .line 539
    :cond_20e
    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_22f

    :cond_212
    const-string v2, "enum"

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22f

    :try_start_21a
    const-string v0, "enumType"

    .line 542
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 546
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 547
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_22f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21a .. :try_end_22f} :catch_22f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21a .. :try_end_22f} :catch_22f

    :catch_22f
    :cond_22f
    :goto_22f
    return-void
.end method

.method public static getApplicationId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "bundle"

    .line 305
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    .line 306
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const-wide/high16 v1, -0x8000000000000000L

    .line 319
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long v3, p0, v1

    if-nez v3, :cond_f

    return-object v0

    .line 324
    :cond_f
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static getExpirationDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    const-string v0, "bundle"

    .line 218
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 219
    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getExpirationMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    const-string v0, "bundle"

    .line 229
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 230
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastRefreshDate(Landroid/os/Bundle;)Ljava/util/Date;
    .registers 2

    const-string v0, "bundle"

    .line 284
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 285
    invoke-static {p0, v0}, Lcom/facebook/LegacyTokenHelper;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getLastRefreshMilliseconds(Landroid/os/Bundle;)J
    .registers 3

    const-string v0, "bundle"

    .line 295
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 296
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPermissions(Landroid/os/Bundle;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "bundle"

    .line 239
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.Permissions"

    .line 240
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSource(Landroid/os/Bundle;)Lcom/facebook/AccessTokenSource;
    .registers 3

    const-string v0, "bundle"

    .line 269
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    .line 270
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 271
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lcom/facebook/AccessTokenSource;

    return-object p0

    :cond_14
    const-string v0, "com.facebook.TokenCachingStrategy.IsSSO"

    .line 273
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 274
    sget-object p0, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    goto :goto_21

    :cond_1f
    sget-object p0, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    :goto_21
    return-object p0
.end method

.method public static getToken(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2

    const-string v0, "bundle"

    .line 207
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    .line 208
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasTokenInformation(Landroid/os/Bundle;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "com.facebook.TokenCachingStrategy.Token"

    .line 193
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 194
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    goto :goto_22

    :cond_13
    const-wide/16 v1, 0x0

    const-string v3, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 198
    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public static putApplicationId(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const-string v0, "bundle"

    .line 310
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ApplicationId"

    .line 311
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5

    .line 328
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putDeclinedPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    .line 255
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 256
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.facebook.TokenCachingStrategy.DeclinedPermissions"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static putExpirationDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    const-string v0, "bundle"

    .line 223
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 224
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 225
    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static putExpirationMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    const-string v0, "bundle"

    .line 234
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.ExpirationDate"

    .line 235
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putExpiredPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    .line 262
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 263
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.facebook.TokenCachingStrategy.ExpiredPermissions"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static putLastRefreshDate(Landroid/os/Bundle;Ljava/util/Date;)V
    .registers 3

    const-string v0, "bundle"

    .line 289
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 290
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 291
    invoke-static {p0, v0, p1}, Lcom/facebook/LegacyTokenHelper;->putDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public static putLastRefreshMilliseconds(Landroid/os/Bundle;J)V
    .registers 4

    const-string v0, "bundle"

    .line 300
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.LastRefreshDate"

    .line 301
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static putPermissions(Landroid/os/Bundle;Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bundle"

    .line 248
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 249
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "com.facebook.TokenCachingStrategy.Permissions"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static putSource(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)V
    .registers 3

    const-string v0, "bundle"

    .line 279
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.AccessTokenSource"

    .line 280
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public static putToken(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const-string v0, "bundle"

    .line 212
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 213
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.facebook.TokenCachingStrategy.Token"

    .line 214
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 333
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_7

    return-void

    .line 341
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 343
    instance-of v1, p2, Ljava/lang/Byte;

    const/4 v2, 0x0

    const-string v3, "value"

    if-eqz v1, :cond_20

    .line 345
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->intValue()I

    move-result p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "byte"

    goto/16 :goto_1a1

    .line 346
    :cond_20
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_31

    .line 348
    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->intValue()I

    move-result p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "short"

    goto/16 :goto_1a1

    .line 349
    :cond_31
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_42

    .line 351
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "int"

    goto/16 :goto_1a1

    .line 352
    :cond_42
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_53

    .line 354
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p2, "long"

    goto/16 :goto_1a1

    .line 355
    :cond_53
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_64

    .line 357
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "float"

    goto/16 :goto_1a1

    .line 358
    :cond_64
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_75

    .line 360
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p2, "double"

    goto/16 :goto_1a1

    .line 361
    :cond_75
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_86

    .line 363
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "bool"

    goto/16 :goto_1a1

    .line 364
    :cond_86
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_95

    .line 366
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "char"

    goto/16 :goto_1a1

    .line 367
    :cond_95
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_a2

    .line 369
    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "string"

    goto/16 :goto_1a1

    .line 370
    :cond_a2
    instance-of v1, p2, Ljava/lang/Enum;

    if-eqz v1, :cond_be

    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "enumType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "enum"

    goto/16 :goto_1a1

    .line 377
    :cond_be
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 378
    instance-of v4, p2, [B

    const/4 v5, 0x0

    if-eqz v4, :cond_dd

    .line 380
    check-cast p2, [B

    check-cast p2, [B

    array-length v2, p2

    :goto_cd
    if-ge v5, v2, :cond_d7

    aget-byte v4, p2, v5

    .line 381
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    :cond_d7
    const-string v2, "byte[]"

    :goto_d9
    move-object p2, v2

    move-object v2, v1

    goto/16 :goto_1a1

    .line 383
    :cond_dd
    instance-of v4, p2, [S

    if-eqz v4, :cond_f3

    .line 385
    check-cast p2, [S

    check-cast p2, [S

    array-length v2, p2

    :goto_e6
    if-ge v5, v2, :cond_f0

    aget-short v4, p2, v5

    .line 386
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_e6

    :cond_f0
    const-string v2, "short[]"

    goto :goto_d9

    .line 388
    :cond_f3
    instance-of v4, p2, [I

    if-eqz v4, :cond_109

    .line 390
    check-cast p2, [I

    check-cast p2, [I

    array-length v2, p2

    :goto_fc
    if-ge v5, v2, :cond_106

    aget v4, p2, v5

    .line 391
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_fc

    :cond_106
    const-string v2, "int[]"

    goto :goto_d9

    .line 393
    :cond_109
    instance-of v4, p2, [J

    if-eqz v4, :cond_11f

    .line 395
    check-cast p2, [J

    check-cast p2, [J

    array-length v2, p2

    :goto_112
    if-ge v5, v2, :cond_11c

    aget-wide v6, p2, v5

    .line 396
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_112

    :cond_11c
    const-string v2, "long[]"

    goto :goto_d9

    .line 398
    :cond_11f
    instance-of v4, p2, [F

    if-eqz v4, :cond_136

    .line 400
    check-cast p2, [F

    check-cast p2, [F

    array-length v2, p2

    :goto_128
    if-ge v5, v2, :cond_133

    aget v4, p2, v5

    float-to-double v6, v4

    .line 401
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_128

    :cond_133
    const-string v2, "float[]"

    goto :goto_d9

    .line 403
    :cond_136
    instance-of v4, p2, [D

    if-eqz v4, :cond_14c

    .line 405
    check-cast p2, [D

    check-cast p2, [D

    array-length v2, p2

    :goto_13f
    if-ge v5, v2, :cond_149

    aget-wide v6, p2, v5

    .line 406
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_13f

    :cond_149
    const-string v2, "double[]"

    goto :goto_d9

    .line 408
    :cond_14c
    instance-of v4, p2, [Z

    if-eqz v4, :cond_163

    .line 410
    check-cast p2, [Z

    check-cast p2, [Z

    array-length v2, p2

    :goto_155
    if-ge v5, v2, :cond_15f

    aget-boolean v4, p2, v5

    .line 411
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_155

    :cond_15f
    const-string v2, "bool[]"

    goto/16 :goto_d9

    .line 413
    :cond_163
    instance-of v4, p2, [C

    if-eqz v4, :cond_17e

    .line 415
    check-cast p2, [C

    check-cast p2, [C

    array-length v2, p2

    :goto_16c
    if-ge v5, v2, :cond_17a

    aget-char v4, p2, v5

    .line 416
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_16c

    :cond_17a
    const-string v2, "char[]"

    goto/16 :goto_d9

    .line 418
    :cond_17e
    instance-of v4, p2, Ljava/util/List;

    if-eqz v4, :cond_1a0

    .line 421
    check-cast p2, Ljava/util/List;

    .line 422
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_188
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_198

    .line 423
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_198
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_188

    :cond_19c
    const-string v2, "stringList"

    goto/16 :goto_d9

    :cond_1a0
    move-object p2, v2

    :goto_1a1
    if-eqz p2, :cond_1b4

    const-string v1, "valueType"

    .line 433
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v2, :cond_1ad

    .line 437
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    :cond_1ad
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 441
    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1b4
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public load()Landroid/os/Bundle;
    .registers 8

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 145
    :try_start_1f
    invoke-direct {p0, v2, v0}, Lcom/facebook/LegacyTokenHelper;->deserializeKey(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception v0

    .line 148
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v3, 0x5

    sget-object v4, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading cached value for key: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' -- "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v4, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_46
    return-object v0
.end method

.method public save(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, "bundle"

    .line 161
    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/LegacyTokenHelper;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    :try_start_1f
    invoke-direct {p0, v2, p1, v0}, Lcom/facebook/LegacyTokenHelper;->serializeKey(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/SharedPreferences$Editor;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_13

    :catch_23
    move-exception p1

    .line 170
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v1, 0x5

    sget-object v3, Lcom/facebook/LegacyTokenHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing value for key: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' -- "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v3, p1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
