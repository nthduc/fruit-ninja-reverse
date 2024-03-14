.class public final Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Model/h;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-boolean p0, p0, Lcom/chartboost/sdk/Model/h;->w:Z

    if-nez p0, :cond_7

    const-string p0, "native"

    return-object p0

    :cond_7
    const-string p0, "web"

    return-object p0
.end method

.method static a(Ljava/lang/String;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->e:Lcom/chartboost/sdk/Chartboost$CBFramework;

    const-string v1, "CBConfig"

    if-nez v0, :cond_c

    const-string p0, "Set a valid CBFramework first"

    .line 2
    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Invalid Version String"

    .line 6
    invoke-static {v1, p0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_18
    sput-object p0, Lcom/chartboost/sdk/j;->c:Ljava/lang/String;

    return-void
.end method

.method static a()Z
    .registers 2

    .line 14
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 16
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    if-eqz v0, :cond_2c

    .line 18
    sget-object v0, Lcom/chartboost/sdk/j;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 20
    sget-object v0, Lcom/chartboost/sdk/j;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    .line 21
    :cond_1c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppSignature is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_24
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppId is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_2c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. Activity context seems to be not initialized properly, host activity or application context is being sent as null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_34
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. SDK seems to be not initialized properly, check for any integration issues"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4

    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x0

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    return p0

    .line 39
    :cond_17
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 40
    iget v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_38

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_38

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_38

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_38

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_38

    const/4 p0, 0x1

    :cond_38
    return p0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/chartboost/sdk/Model/h;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .line 10
    :try_start_0
    new-instance p2, Lcom/chartboost/sdk/Model/h;

    invoke-direct {p2, p1}, Lcom/chartboost/sdk/Model/h;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p0

    .line 13
    const-class p1, Lcom/chartboost/sdk/c;

    const-string p2, "updateConfig"

    invoke-static {p1, p2, p0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static b()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4c

    .line 2
    :try_start_3
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/x;->a(I)Z

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_54

    const-string v2, "android.permission.INTERNET"

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    if-eqz v1, :cond_1c

    .line 3
    :try_start_13
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    goto :goto_24

    .line 6
    :cond_1c
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    :goto_24
    const/4 v2, 0x1

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    .line 10
    :goto_2a
    sput-boolean p0, Lcom/chartboost/sdk/j;->m:Z

    if-eqz v1, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    .line 11
    :goto_31
    sput-boolean p0, Lcom/chartboost/sdk/j;->n:Z

    .line 13
    sget-boolean p0, Lcom/chartboost/sdk/j;->m:Z

    if-nez p0, :cond_44

    .line 15
    sget-boolean p0, Lcom/chartboost/sdk/j;->n:Z

    if-nez p0, :cond_3c

    return v2

    .line 16
    :cond_3c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_44
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_4c
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid activity context passed during intitalization"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_54} :catch_54

    :catch_54
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static c()Z
    .registers 1

    .line 1
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/chartboost/sdk/c;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method
