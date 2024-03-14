.class public Lcom/chartboost/sdk/Model/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/h$a;,
        Lcom/chartboost/sdk/Model/h$b;
    }
.end annotation


# instance fields
.field public final A:I

.field public final B:Z

.field public final C:Ljava/lang/String;

.field public final D:Ljava/lang/String;

.field private final E:Lcom/chartboost/sdk/Model/h$a;

.field public F:Lcom/chartboost/sdk/Model/h$b;

.field private G:Ljava/lang/String;

.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:J

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Z

.field public final x:Z

.field public final y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "configVariant"

    .line 2
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/Model/h;->a:Ljava/lang/String;

    const-string v0, "prefetchDisable"

    .line 3
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/h;->b:Z

    const-string v0, "publisherDisable"

    .line 4
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/h;->c:Z

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/chartboost/sdk/Model/h$a;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/h$a;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/Model/h;->E:Lcom/chartboost/sdk/Model/h$a;

    .line 8
    :try_start_25
    invoke-static/range {p1 .. p1}, Lcom/chartboost/sdk/Model/h$b;->a(Lorg/json/JSONObject;)Lcom/chartboost/sdk/Model/h$b;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/Model/h;->F:Lcom/chartboost/sdk/Model/h$b;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception v0

    .line 10
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_30
    const/4 v0, 0x0

    const-string v3, "publisherWarning"

    .line 14
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/Model/h;->G:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "invalidateFolderList"

    .line 17
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 19
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    :goto_4b
    if-ge v6, v5, :cond_5d

    .line 21
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5a

    .line 23
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 26
    :cond_5d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/chartboost/sdk/Model/h;->d:Ljava/util/List;

    const-string v0, "native"

    .line 29
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_70

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_70
    const-string v3, "enabled"

    const/4 v5, 0x1

    .line 32
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v1, Lcom/chartboost/sdk/Model/h;->e:Z

    const-string v6, "inplayEnabled"

    .line 33
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v1, Lcom/chartboost/sdk/Model/h;->f:Z

    const-string v7, "interstitialEnabled"

    .line 34
    invoke-virtual {v0, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v1, Lcom/chartboost/sdk/Model/h;->g:Z

    const-string v8, "lockOrientation"

    .line 35
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v1, Lcom/chartboost/sdk/Model/h;->h:Z

    const-string v9, "prefetchSession"

    const/4 v10, 0x3

    .line 36
    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v1, Lcom/chartboost/sdk/Model/h;->i:I

    const-string v11, "rewardVideoEnabled"

    .line 37
    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/h;->j:Z

    const-string v0, "trackingLevels"

    .line 40
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_af

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_af
    const-string v12, "critical"

    .line 43
    invoke-virtual {v0, v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->k:Z

    const-string v12, "includeStackTrace"

    .line 44
    invoke-virtual {v0, v12, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->p:Z

    const-string v12, "error"

    .line 45
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->l:Z

    const-string v12, "debug"

    .line 46
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v12, "session"

    .line 47
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->m:Z

    const-string v12, "system"

    .line 48
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->n:Z

    const-string v12, "timing"

    .line 49
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v1, Lcom/chartboost/sdk/Model/h;->o:Z

    const-string v12, "user"

    .line 50
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-wide/16 v12, 0xc8

    const-string v0, "getAdRetryBaseMs"

    .line 52
    invoke-virtual {v2, v0, v12, v13}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/chartboost/sdk/Model/h;->q:J

    const-string v0, "getAdRetryMaxBackoffExponent"

    .line 55
    invoke-virtual {v2, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/chartboost/sdk/Model/h;->r:I

    const-string v0, "webview"

    .line 60
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_108

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_108
    const/high16 v12, 0x6400000

    const-string v13, "cacheMaxBytes"

    .line 66
    invoke-virtual {v2, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/chartboost/sdk/Model/h;->s:I

    const/16 v12, 0xa

    const-string v13, "cacheMaxUnits"

    .line 68
    invoke-virtual {v2, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    if-lez v13, :cond_11d

    move v12, v13

    .line 69
    :cond_11d
    iput v12, v1, Lcom/chartboost/sdk/Model/h;->t:I

    .line 70
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v13, Lcom/chartboost/sdk/Libraries/b;->a:I

    const-string v14, "cacheTTLs"

    invoke-virtual {v2, v14, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v12

    long-to-int v13, v12

    iput v13, v1, Lcom/chartboost/sdk/Model/h;->u:I

    .line 72
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "directories"

    .line 73
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-eqz v13, :cond_155

    .line 75
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    const/4 v15, 0x0

    :goto_143
    if-ge v15, v14, :cond_155

    .line 77
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_152

    .line 79
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_152
    add-int/lit8 v15, v15, 0x1

    goto :goto_143

    .line 82
    :cond_155
    invoke-static {v12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/chartboost/sdk/Model/h;->v:Ljava/util/List;

    .line 85
    invoke-static {}, Lcom/chartboost/sdk/Model/h;->d()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/chartboost/sdk/Model/h;->w:Z

    .line 86
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/chartboost/sdk/Model/h;->x:Z

    .line 87
    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/chartboost/sdk/Model/h;->y:Z

    const-string v3, "invalidatePendingImpression"

    .line 89
    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 96
    invoke-virtual {v2, v8, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/chartboost/sdk/Model/h;->z:Z

    .line 97
    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/chartboost/sdk/Model/h;->A:I

    .line 98
    invoke-virtual {v2, v11, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v1, Lcom/chartboost/sdk/Model/h;->B:Z

    const-string v3, "version"

    const-string v4, "v2"

    .line 99
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/chartboost/sdk/Model/h;->C:Ljava/lang/String;

    .line 101
    new-array v3, v10, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    const/4 v2, 0x2

    const-string v6, "/interstitial/get"

    aput-object v6, v3, v2

    const-string v6, "%s/%s%s"

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v7, v1, Lcom/chartboost/sdk/Model/h;->C:Ljava/lang/String;

    aput-object v7, v3, v5

    const-string v7, "prefetch"

    aput-object v7, v3, v2

    const-string v7, "%s/%s/%s"

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/chartboost/sdk/Model/h;->D:Ljava/lang/String;

    .line 103
    new-array v3, v10, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v0, v1, Lcom/chartboost/sdk/Model/h;->C:Ljava/lang/String;

    aput-object v0, v3, v5

    const-string v0, "/reward/get"

    aput-object v0, v3, v2

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private static d()Z
    .registers 7

    const/4 v0, 0x3

    .line 1
    new-array v1, v0, [I

    fill-array-data v1, :array_50

    .line 3
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/x;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_18

    goto :goto_4e

    :cond_18
    const-string v4, "[^\\d.]"

    const-string v5, ""

    .line 10
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\."

    .line 11
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 14
    :goto_27
    array-length v5, v2

    if-ge v4, v5, :cond_4e

    if-ge v4, v0, :cond_4e

    .line 17
    :try_start_2c
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v1, v4

    if-le v5, v6, :cond_3c

    const/4 v0, 0x1

    return v0

    .line 19
    :cond_3c
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v6, v1, v4
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_48} :catch_4e

    if-ge v5, v6, :cond_4b

    return v3

    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :catch_4e
    :cond_4e
    :goto_4e
    return v3

    nop

    :array_50
    .array-data 4
        0x4
        0x4
        0x2
    .end array-data
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Model/h$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/h;->E:Lcom/chartboost/sdk/Model/h$a;

    return-object v0
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/h;->c:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/h;->G:Ljava/lang/String;

    return-object v0
.end method
