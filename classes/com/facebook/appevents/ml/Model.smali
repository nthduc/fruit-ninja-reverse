.class public final Lcom/facebook/appevents/ml/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final SEQ_LEN:I = 0x80


# instance fields
.field private convs_0_bias:Lcom/facebook/appevents/ml/MTensor;

.field private convs_0_weight:Lcom/facebook/appevents/ml/MTensor;

.field private convs_1_bias:Lcom/facebook/appevents/ml/MTensor;

.field private convs_1_weight:Lcom/facebook/appevents/ml/MTensor;

.field private convs_2_bias:Lcom/facebook/appevents/ml/MTensor;

.field private convs_2_weight:Lcom/facebook/appevents/ml/MTensor;

.field private embedding:Lcom/facebook/appevents/ml/MTensor;

.field private fc1_bias:Lcom/facebook/appevents/ml/MTensor;

.field private fc1_weight:Lcom/facebook/appevents/ml/MTensor;

.field private fc2_bias:Lcom/facebook/appevents/ml/MTensor;

.field private fc2_weight:Lcom/facebook/appevents/ml/MTensor;

.field private final final_weights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->final_weights:Ljava/util/Map;

    const-string v0, "embed.weight"

    .line 56
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.0.weight"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_0_weight:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.1.weight"

    .line 58
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.2.weight"

    .line 59
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->transpose3D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.0.bias"

    .line 60
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_0_bias:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.1.bias"

    .line 61
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "convs.2.bias"

    .line 62
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "fc1.weight"

    .line 63
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "fc2.weight"

    .line 64
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "fc1.bias"

    .line 65
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/MTensor;

    const-string v0, "fc2.bias"

    .line 66
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/ml/MTensor;

    iput-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/MTensor;

    .line 68
    new-instance v0, Lcom/facebook/appevents/ml/Model$1;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/ml/Model$1;-><init>(Lcom/facebook/appevents/ml/Model;)V

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_95
    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".weight"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bias"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/ml/MTensor;

    .line 79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/appevents/ml/MTensor;

    if-eqz v3, :cond_da

    .line 81
    invoke-static {v3}, Lcom/facebook/appevents/ml/Operator;->transpose2D(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v3

    .line 82
    iget-object v5, p0, Lcom/facebook/appevents/ml/Model;->final_weights:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_da
    if-eqz v4, :cond_95

    .line 85
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->final_weights:Ljava/util/Map;

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_95

    :cond_e2
    return-void
.end method

.method public static build(Ljava/io/File;)Lcom/facebook/appevents/ml/Model;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 136
    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/facebook/appevents/ml/Model;->parse(Ljava/io/File;)Ljava/util/Map;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_e} :catch_15

    .line 138
    :try_start_e
    new-instance v0, Lcom/facebook/appevents/ml/Model;

    invoke-direct {v0, p0}, Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_13} :catch_15

    return-object v0

    :catch_14
    return-object v1

    :catch_15
    move-exception p0

    .line 142
    const-class v0, Lcom/facebook/appevents/ml/Model;

    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getMapping()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 215
    :cond_a
    :try_start_a
    new-instance v0, Lcom/facebook/appevents/ml/Model$2;

    invoke-direct {v0}, Lcom/facebook/appevents/ml/Model$2;-><init>()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-class v2, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static parse(Ljava/io/File;)Ljava/util/Map;
    .registers 17
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/ml/MTensor;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 148
    :cond_a
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v2, p0

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 150
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    new-array v0, v2, [B

    .line 152
    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 153
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    const/4 v3, 0x4

    if-ge v2, v3, :cond_26

    return-object v1

    :cond_26
    const/4 v4, 0x0

    .line 159
    invoke-static {v0, v4, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 160
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    add-int/lit8 v6, v5, 0x4

    if-ge v2, v6, :cond_39

    return-object v1

    .line 167
    :cond_39
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0, v3, v5}, Ljava/lang/String;-><init>([BII)V

    .line 168
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    .line 171
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 172
    :goto_4e
    array-length v9, v7

    if-ge v8, v9, :cond_5a

    .line 173
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4e

    .line 175
    :cond_5a
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 179
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 180
    invoke-static {}, Lcom/facebook/appevents/ml/Model;->getMapping()Ljava/util/Map;

    move-result-object v8

    .line 182
    array-length v9, v7

    move v10, v6

    const/4 v6, 0x0

    :goto_69
    if-ge v6, v9, :cond_c0

    aget-object v11, v7, v6

    .line 184
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 185
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [I

    const/4 v14, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 186
    :goto_7a
    array-length v4, v13

    if-ge v14, v4, :cond_8a

    .line 187
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v13, v14

    .line 188
    aget v4, v13, v14

    mul-int v15, v15, v4

    add-int/lit8 v14, v14, 0x1

    goto :goto_7a

    :cond_8a
    mul-int/lit8 v4, v15, 0x4

    add-int v12, v10, v4

    if-le v12, v2, :cond_91

    return-object v1

    .line 195
    :cond_91
    invoke-static {v0, v10, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 196
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    new-instance v10, Lcom/facebook/appevents/ml/MTensor;

    invoke-direct {v10, v13}, Lcom/facebook/appevents/ml/MTensor;-><init>([I)V

    .line 198
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v10}, Lcom/facebook/appevents/ml/MTensor;->getData()[F

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14, v15}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 200
    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b8

    .line 201
    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 203
    :cond_b8
    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_bb} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_bb} :catch_c1

    add-int/lit8 v6, v6, 0x1

    move v10, v12

    const/4 v4, 0x0

    goto :goto_69

    :cond_c0
    return-object v5

    :catch_c1
    move-exception v0

    .line 211
    const-class v2, Lcom/facebook/appevents/ml/Model;

    invoke-static {v0, v2}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :catch_c7
    return-object v1
.end method


# virtual methods
.method public predictOnMTML(Lcom/facebook/appevents/ml/MTensor;[Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/ml/MTensor;
    .registers 11
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->isObjectCrashing(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/16 v0, 0x80

    .line 92
    :try_start_a
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->embedding:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p2, v0, v2}, Lcom/facebook/appevents/ml/Operator;->embedding([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p2

    .line 94
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_0_weight:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p2, v0}, Lcom/facebook/appevents/ml/Operator;->conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p2

    .line 95
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_0_bias:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p2, v0}, Lcom/facebook/appevents/ml/Operator;->addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 96
    invoke-static {p2}, Lcom/facebook/appevents/ml/Operator;->relu(Lcom/facebook/appevents/ml/MTensor;)V

    .line 98
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->convs_1_weight:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p2, v0}, Lcom/facebook/appevents/ml/Operator;->conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/facebook/appevents/ml/Model;->convs_1_bias:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0, v2}, Lcom/facebook/appevents/ml/Operator;->addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 100
    invoke-static {v0}, Lcom/facebook/appevents/ml/Operator;->relu(Lcom/facebook/appevents/ml/MTensor;)V

    const/4 v2, 0x2

    .line 101
    invoke-static {v0, v2}, Lcom/facebook/appevents/ml/Operator;->maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 103
    iget-object v3, p0, Lcom/facebook/appevents/ml/Model;->convs_2_weight:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v0, v3}, Lcom/facebook/appevents/ml/Operator;->conv1D(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/facebook/appevents/ml/Model;->convs_2_bias:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {v3, v4}, Lcom/facebook/appevents/ml/Operator;->addmv(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V

    .line 105
    invoke-static {v3}, Lcom/facebook/appevents/ml/Operator;->relu(Lcom/facebook/appevents/ml/MTensor;)V

    const/4 v4, 0x1

    .line 107
    invoke-virtual {p2, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    invoke-static {p2, v5}, Lcom/facebook/appevents/ml/Operator;->maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p2

    .line 108
    invoke-virtual {v0, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/facebook/appevents/ml/Operator;->maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v0

    .line 109
    invoke-virtual {v3, v4}, Lcom/facebook/appevents/ml/MTensor;->getShape(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/facebook/appevents/ml/Operator;->maxPool1D(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;

    move-result-object v3

    .line 111
    invoke-static {p2, v4}, Lcom/facebook/appevents/ml/Operator;->flatten(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 112
    invoke-static {v0, v4}, Lcom/facebook/appevents/ml/Operator;->flatten(Lcom/facebook/appevents/ml/MTensor;I)V

    .line 113
    invoke-static {v3, v4}, Lcom/facebook/appevents/ml/Operator;->flatten(Lcom/facebook/appevents/ml/MTensor;I)V

    const/4 v5, 0x4

    .line 115
    new-array v5, v5, [Lcom/facebook/appevents/ml/MTensor;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    aput-object v0, v5, v4

    aput-object v3, v5, v2

    const/4 p2, 0x3

    aput-object p1, v5, p2

    invoke-static {v5}, Lcom/facebook/appevents/ml/Operator;->concatenate([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->fc1_weight:Lcom/facebook/appevents/ml/MTensor;

    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc1_bias:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/ml/Operator;->dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->relu(Lcom/facebook/appevents/ml/MTensor;)V

    .line 119
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->fc2_weight:Lcom/facebook/appevents/ml/MTensor;

    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->fc2_bias:Lcom/facebook/appevents/ml/MTensor;

    invoke-static {p1, p2, v0}, Lcom/facebook/appevents/ml/Operator;->dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->relu(Lcom/facebook/appevents/ml/MTensor;)V

    .line 122
    iget-object p2, p0, Lcom/facebook/appevents/ml/Model;->final_weights:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".weight"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/appevents/ml/MTensor;

    .line 123
    iget-object v0, p0, Lcom/facebook/appevents/ml/Model;->final_weights:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ".bias"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/appevents/ml/MTensor;

    if-eqz p2, :cond_c7

    if-nez p3, :cond_bf

    goto :goto_c7

    .line 128
    :cond_bf
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/ml/Operator;->dense(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;

    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/facebook/appevents/ml/Operator;->softmax(Lcom/facebook/appevents/ml/MTensor;)V
    :try_end_c6
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_c6} :catch_c8

    return-object p1

    :cond_c7
    :goto_c7
    return-object v1

    :catch_c8
    move-exception p1

    .line 131
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->handleThrowable(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
