.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 22
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "limit_ad_tracking"

    .line 23
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-nez v1, :cond_2c

    const-string v1, "advertising_id"

    .line 26
    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 28
    iput v3, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 29
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    goto :goto_36

    .line 31
    :cond_27
    iput v2, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 32
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    goto :goto_36

    .line 35
    :cond_2c
    iput v3, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 36
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;
    :try_end_30
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_36

    :catch_31
    const/4 p1, -0x1

    .line 40
    iput p1, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 41
    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    :goto_36
    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h1;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Libraries/a;-><init>(Landroid/content/Context;)V

    .line 3
    iget v1, v0, Lcom/chartboost/sdk/Libraries/a;->a:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 4
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    return-void
.end method

.method private static c()Z
    .registers 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/chartboost/sdk/Libraries/d$a;
    .registers 6

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "robolectric"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string v0, "CBIdentity"

    const-string v1, "I must be called from a background thread"

    .line 2
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_73

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 6
    :cond_1f
    :try_start_1f
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->b()V

    goto :goto_2e

    .line 7
    :cond_29
    sget-object v0, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Landroid/content/Context;)V

    .line 9
    :goto_2e
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Ljava/lang/String;

    .line 10
    iget v1, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_37

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 11
    :goto_38
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/chartboost/sdk/impl/g1;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    if-eqz v3, :cond_50

    if-nez v0, :cond_50

    const-string v4, "uuid"

    invoke-static {v1, v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_50
    if-eqz v0, :cond_57

    const-string v3, "gaid"

    .line 17
    invoke-static {v1, v3, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_57
    new-instance v3, Lcom/chartboost/sdk/Libraries/d$a;

    iget v4, p0, Lcom/chartboost/sdk/Libraries/d;->a:I

    .line 21
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_6c

    const-string v2, "000000000"

    goto :goto_6e

    :cond_6c
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/d;->c:Ljava/lang/String;

    :goto_6e
    invoke-direct {v3, v4, v1, v2, v0}, Lcom/chartboost/sdk/Libraries/d$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_1f .. :try_end_71} :catchall_73

    monitor-exit p0

    return-object v3

    :catchall_73
    move-exception v0

    monitor-exit p0

    throw v0
.end method
