.class public Lcom/chartboost/sdk/Tracking/CBAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;,
        Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONArray;Ljava/lang/String;Lcom/chartboost/sdk/impl/u0;)V
    .registers 17

    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    :try_start_3
    const-string v0, "/post-install-event/"

    const-string v2, "tracking"

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    new-instance v0, Lcom/chartboost/sdk/impl/p0;

    const-string v4, "https://live.chartboost.com"

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v0

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    const-string v2, "track_info"

    move-object v3, p3

    .line 119
    invoke-virtual {v0, v2, p3}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    .line 120
    iput-boolean v2, v0, Lcom/chartboost/sdk/impl/p0;->m:Z

    move-object v2, p4

    .line 121
    invoke-virtual {v0, p4}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;)V

    move-object v2, p0

    .line 122
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    monitor-exit v1

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;Lcom/chartboost/sdk/impl/u0;)V
    .registers 21

    move-object/from16 v0, p4

    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    .line 101
    :try_start_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/post-install-event/"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v5, "%s%s"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 102
    new-instance v2, Lcom/chartboost/sdk/impl/p0;

    const-string v7, "https://live.chartboost.com"

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v6, v2

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v13, p6

    invoke-direct/range {v6 .. v13}, Lcom/chartboost/sdk/impl/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/p0$a;Lcom/chartboost/sdk/impl/u0;)V

    move-object/from16 v3, p3

    .line 108
    invoke-virtual {v2, v0, v3}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iput-boolean v4, v2, Lcom/chartboost/sdk/impl/p0;->m:Z

    .line 110
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/p0;->a(Ljava/lang/String;)V

    move-object v0, p0

    .line 111
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_37

    monitor-exit v1

    return-void

    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .registers 23

    move-object/from16 v0, p9

    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    .line 1
    :try_start_5
    sget-object v2, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    if-nez v2, :cond_12

    const-string v0, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.init() before calling any public API\'s"

    .line 2
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_183

    monitor-exit v1

    return-void

    .line 7
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v2

    if-nez v2, :cond_21

    const-string v0, "CBPostInstallTracker"

    const-string v2, "You need call Chartboost.startWithAppId() before tracking in-app purchases"

    .line 9
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_183

    monitor-exit v1

    return-void

    .line 13
    :cond_21
    :try_start_21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 16
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17a

    .line 17
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3d
    .catchall {:try_start_21 .. :try_end_3d} :catchall_183

    if-eqz v3, :cond_41

    goto/16 :goto_17a

    :cond_41
    :try_start_41
    const-string v3, "(\\d+\\.\\d+)|(\\d+)"

    .line 25
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    move-object/from16 v4, p3

    .line 26
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 28
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    .line 30
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_61} :catch_171
    .catchall {:try_start_41 .. :try_end_61} :catchall_183

    monitor-exit v1

    return-void

    .line 33
    :cond_63
    :try_start_63
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_67
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_67} :catch_171
    .catchall {:try_start_63 .. :try_end_67} :catchall_183

    const/4 v4, 0x0

    .line 41
    :try_start_68
    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-ne v0, v5, :cond_b3

    .line 42
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    .line 43
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7d

    goto :goto_aa

    .line 47
    :cond_7d
    new-array v4, v8, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v5, "purchaseData"

    move-object/from16 v10, p5

    invoke-static {v5, v10}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "purchaseSignature"

    move-object/from16 v10, p6

    .line 48
    invoke-static {v5, v10}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 49
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v10, "type"

    invoke-static {v10, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v9

    .line 50
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_fa

    :cond_aa
    :goto_aa
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for purchase data or purchase signature"

    .line 51
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_68 .. :try_end_b1} :catchall_183

    monitor-exit v1

    return-void

    .line 58
    :cond_b3
    :try_start_b3
    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    if-ne v0, v5, :cond_fa

    .line 59
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f1

    .line 60
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c4

    goto :goto_f1

    .line 64
    :cond_c4
    new-array v4, v8, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v5, "userID"

    move-object/from16 v10, p7

    invoke-static {v5, v10}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "purchaseToken"

    move-object/from16 v10, p8

    .line 65
    invoke-static {v5, v10}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    .line 66
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v10, "type"

    invoke-static {v10, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    aput-object v5, v4, v9

    .line 67
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v4

    goto :goto_fa

    :cond_f1
    :goto_f1
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed for for amazon user id or amazon purchase token"

    .line 68
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_b3 .. :try_end_f8} :catchall_183

    monitor-exit v1

    return-void

    :cond_fa
    :goto_fa
    if-nez v4, :cond_105

    :try_start_fc
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Error while parsing the receipt to a JSON Object, "

    .line 79
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_183

    monitor-exit v1

    return-void

    .line 83
    :cond_105
    :try_start_105
    sget-object v5, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v5}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object v5

    .line 84
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x6

    .line 86
    new-array v10, v10, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v11, "localized-title"

    move-object v12, p1

    invoke-static {v11, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v11

    aput-object v11, v10, v7

    const-string v7, "localized-description"

    move-object v11, p2

    .line 87
    invoke-static {v7, p2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v7

    aput-object v7, v10, v6

    .line 88
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v6, "price"

    invoke-static {v6, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v10, v9

    const-string v3, "currency"

    move-object/from16 v6, p4

    .line 89
    invoke-static {v3, v6}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v10, v8

    const-string v3, "productID"

    move-object v6, p0

    .line 90
    invoke-static {v3, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v10, v6

    const-string v3, "receipt"

    .line 91
    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v10, v4

    .line 92
    invoke-static {v10}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v3

    .line 98
    iget-object v4, v2, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v6, v2, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v2, v2, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    const-string v7, "iap"

    move-object p0, v4

    move-object p1, v6

    move-object p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v7

    move-object/from16 p5, p9

    move-object/from16 p6, v5

    invoke-static/range {p0 .. p6}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;Lcom/chartboost/sdk/impl/u0;)V
    :try_end_16f
    .catchall {:try_start_105 .. :try_end_16f} :catchall_183

    monitor-exit v1

    return-void

    :catch_171
    :try_start_171
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Invalid price object"

    .line 99
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_171 .. :try_end_178} :catchall_183

    monitor-exit v1

    return-void

    :cond_17a
    :goto_17a
    :try_start_17a
    const-string v0, "CBPostInstallTracker"

    const-string v2, "Null object is passed. Please pass a valid value object"

    .line 100
    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_181
    .catchall {:try_start_17a .. :try_end_181} :catchall_183

    monitor-exit v1

    return-void

    :catchall_183
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized trackInAppAmazonStorePurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    .line 1
    :try_start_3
    sget-object v11, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->AMAZON:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v2 .. v11}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized trackInAppGooglePlayPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    const-class v1, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v1

    .line 1
    :try_start_3
    sget-object v11, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;->GOOGLE_PLAY:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p4

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v11}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    .registers 12

    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v1

    if-nez v1, :cond_12

    const-string p0, "CBPostInstallTracker"

    const-string p1, "trackLevelInfo: SDK is not initialized"

    .line 4
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_ca

    monitor-exit v0

    return-void

    .line 7
    :cond_12
    :try_start_12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string p0, "CBPostInstallTracker"

    const-string p1, "Invalid value: event label cannot be empty or null"

    .line 8
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_ca

    monitor-exit v0

    return-void

    :cond_21
    if-nez p1, :cond_2c

    :try_start_23
    const-string p0, "CBPostInstallTracker"

    const-string p1, "Invalid value: level type cannot be empty or null, please choose from one of the CBLevelType enum values"

    .line 12
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_ca

    monitor-exit v0

    return-void

    :cond_2c
    if-ltz p2, :cond_c1

    if-gez p3, :cond_32

    goto/16 :goto_c1

    .line 21
    :cond_32
    :try_start_32
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    const-string p0, "CBPostInstallTracker"

    const-string p1, "Invalid value: description cannot be empty or null"

    .line 22
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_ca

    monitor-exit v0

    return-void

    .line 26
    :cond_41
    :try_start_41
    sget-object v2, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_4a

    .line 29
    invoke-static {v2}, Lcom/chartboost/sdk/i;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/u0;

    move-result-object v3

    :cond_4a
    move-object v6, v3

    const/4 v2, 0x7

    .line 32
    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "event_label"

    invoke-static {v3, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 33
    invoke-virtual {p1}, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;->getLevelType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "event_field"

    invoke-static {p1, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    .line 34
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "main_level"

    invoke-static {p1, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 35
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "sub_level"

    invoke-static {p1, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v2, p1

    const-string p0, "description"

    .line 36
    invoke-static {p0, p4}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x4

    aput-object p0, v2, p1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "timestamp"

    invoke-static {p1, p0}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v2, p1

    const-string p0, "data_type"

    const-string p1, "level_info"

    .line 38
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p0

    const/4 p1, 0x6

    aput-object p0, v2, p1

    .line 39
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object p0

    .line 46
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 47
    invoke-virtual {v4, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 48
    iget-object p0, v1, Lcom/chartboost/sdk/i;->s:Lcom/chartboost/sdk/Networking/g;

    iget-object v2, v1, Lcom/chartboost/sdk/i;->t:Lcom/chartboost/sdk/Model/g;

    iget-object v3, v1, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    const-string v5, "tracking"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Model/g;Lcom/chartboost/sdk/Tracking/a;Lorg/json/JSONArray;Ljava/lang/String;Lcom/chartboost/sdk/impl/u0;)V
    :try_end_bf
    .catchall {:try_start_41 .. :try_end_bf} :catchall_ca

    monitor-exit v0

    return-void

    :cond_c1
    :goto_c1
    :try_start_c1
    const-string p0, "CBPostInstallTracker"

    const-string p1, "Invalid value: Level number should be > 0"

    .line 49
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_ca

    monitor-exit v0

    return-void

    :catchall_ca
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;ILjava/lang/String;)V
    .registers 6

    const-class v0, Lcom/chartboost/sdk/Tracking/CBAnalytics;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_4
    invoke-static {p0, p1, p2, v1, p3}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->trackLevelInfo(Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBLevelType;IILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public declared-synchronized trackInAppPurchaseEvent(Ljava/util/EnumMap;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a3

    .line 1
    :try_start_5
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a3

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_a3

    .line 12
    :cond_4c
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_DATA:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 13
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->GOOGLE_PURCHASE_SIGNATURE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_USER_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->AMAZON_PURCHASE_TOKEN:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_ID:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_TITLE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_DESCRIPTION:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_PRICE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    sget-object v0, Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;->PRODUCT_CURRENCY_CODE:Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPPurchaseInfo;

    invoke-virtual {p1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    move-object v10, p2

    invoke-static/range {v1 .. v10}, Lcom/chartboost/sdk/Tracking/CBAnalytics;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Tracking/CBAnalytics$CBIAPType;)V
    :try_end_a1
    .catchall {:try_start_5 .. :try_end_a1} :catchall_ac

    monitor-exit p0

    return-void

    :cond_a3
    :goto_a3
    :try_start_a3
    const-string p1, "CBPostInstallTracker"

    const-string p2, "Null object is passed. Please pass a valid value object"

    .line 20
    invoke-static {p1, p2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_ac

    monitor-exit p0

    return-void

    :catchall_ac
    move-exception p1

    monitor-exit p0

    throw p1
.end method
