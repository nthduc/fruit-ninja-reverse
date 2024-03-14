.class public Lcom/ironsource/mediationsdk/integration/IntegrationHelper;
.super Ljava/lang/Object;
.source "IntegrationHelper.java"


# static fields
.field private static final BANNER_COMPATIBILITY_VERSION:Ljava/lang/String; = "4.3"

.field private static final SDK_COMPATIBILITY_VERSION:Ljava/lang/String; = "4.1"

.field private static final TAG:Ljava/lang/String; = "IntegrationHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIntegrationData(Landroid/app/Activity;Ljava/lang/String;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 9

    const-string v0, "IntegrationHelper"

    const/4 v1, 0x0

    .line 222
    :try_start_3
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v2, "getIntegrationData"

    const/4 v3, 0x1

    .line 223
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/app/Activity;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 224
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {p1, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/IntegrationData;

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - VERIFIED"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3a} :catch_41
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_3b

    return-object p0

    :catch_3b
    const-string p0, "Adapter version - NOT VERIFIED"

    .line 230
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :catch_41
    const-string p0, "Adapter - MISSING"

    .line 228
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-object v1
.end method

.method private static isActivitiesValid(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 12

    const-string v0, " - MISSING"

    const/4 v1, 0x1

    if-nez p1, :cond_6

    return v1

    :cond_6
    const-string v2, "IntegrationHelper"

    const-string v3, "*** Activities ***"

    .line 168
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    array-length v3, p1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    :goto_11
    if-ge v1, v3, :cond_6c

    aget-object v6, p1, v1

    .line 173
    :try_start_15
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 174
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v9, 0x10000

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 178
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_43

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - VERIFIED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 182
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_15 .. :try_end_55} :catch_56

    goto :goto_68

    .line 186
    :catch_56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    const/4 v5, 0x0

    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_6c
    return v5
.end method

.method private static isAdapterValid(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "SupersonicAds"

    const-string v1, "IntegrationHelper"

    const/4 v2, 0x0

    .line 61
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "--------------- IronSource  --------------"

    .line 62
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 64
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --------------"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.ironsource.adapters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Adapter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {p0, v3}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->getIntegrationData(Landroid/app/Activity;Ljava/lang/String;)Lcom/ironsource/mediationsdk/IntegrationData;

    move-result-object v4

    if-nez v4, :cond_53

    return v2

    .line 74
    :cond_53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {v4}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isAdapterVersionValid(Lcom/ironsource/mediationsdk/IntegrationData;)Z

    move-result v0

    if-nez v0, :cond_60

    return v2

    .line 80
    :cond_60
    invoke-static {v3}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateSDKVersion(Ljava/lang/String;)V

    .line 82
    iget-object v0, v4, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isActivitiesValid(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v0

    .line 86
    iget-object v3, v4, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isExternalLibsValid(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_72

    const/4 v0, 0x0

    .line 90
    :cond_72
    iget-object v3, v4, Lcom/ironsource/mediationsdk/IntegrationData;->services:[Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isServicesValid(Landroid/app/Activity;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7b

    const/4 v0, 0x0

    .line 94
    :cond_7b
    iget-boolean v3, v4, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    if-eqz v3, :cond_a1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-gt v3, v4, :cond_a1

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9b

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE - VERIFIED"

    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    :cond_9b
    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE - MISSING"

    .line 99
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a0} :catch_a2

    const/4 v0, 0x0

    :cond_a1
    :goto_a1
    return v0

    :catch_a2
    move-exception p0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdapterValid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private static isAdapterVersionValid(Lcom/ironsource/mediationsdk/IntegrationData;)Z
    .registers 5

    .line 210
    iget-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    const-string v1, "4.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "IntegrationHelper"

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    const-string v3, "4.3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4d

    .line 214
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/IntegrationData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " adapter "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is incompatible with SDK version "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", please update your adapter to version "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".*"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_4d
    :goto_4d
    const-string p0, "Adapter - VERIFIED"

    .line 211
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private static isExternalLibsValid(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string v1, "IntegrationHelper"

    const-string v2, "*** External Libraries ***"

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 153
    :try_start_1b
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - VERIFIED"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_3a} :catch_3b

    goto :goto_f

    :catch_3b
    const/4 v0, 0x0

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - MISSING"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_55
    return v0
.end method

.method private static isServicesValid(Landroid/app/Activity;[Ljava/lang/String;)Z
    .registers 12

    const-string v0, " - MISSING"

    const/4 v1, 0x1

    if-nez p1, :cond_6

    return v1

    .line 117
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "IntegrationHelper"

    const-string v4, "*** Services ***"

    .line 118
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    array-length v4, p1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    :goto_15
    if-ge v1, v4, :cond_6c

    aget-object v7, p1, v1

    .line 123
    :try_start_19
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 124
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x10000

    .line 126
    invoke-virtual {v2, v9, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 128
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_43

    .line 129
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - VERIFIED"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 132
    :cond_43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_55} :catch_56

    goto :goto_68

    .line 136
    :catch_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_68
    const/4 v6, 0x0

    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_6c
    return v6
.end method

.method private static validateGooglePlayServices(Landroid/app/Activity;)V
    .registers 2

    .line 239
    new-instance v0, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;

    invoke-direct {v0, p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper$1;-><init>(Landroid/app/Activity;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static validateIntegration(Landroid/app/Activity;)V
    .registers 20

    const-string v0, "IntegrationHelper"

    const-string v1, "Verifying Integration:"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static/range {p0 .. p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validatePermissions(Landroid/app/Activity;)V

    const-string v2, "AdColony"

    const-string v3, "AdMob"

    const-string v4, "Amazon"

    const-string v5, "AppLovin"

    const-string v6, "Chartboost"

    const-string v7, "Facebook"

    const-string v8, "Fyber"

    const-string v9, "HyprMX"

    const-string v10, "InMobi"

    const-string v11, "SupersonicAds"

    const-string v12, "Maio"

    const-string v13, "Mintegral"

    const-string v14, "MyTarget"

    const-string v15, "Pangle"

    const-string v16, "Tapjoy"

    const-string v17, "UnityAds"

    const-string v18, "Vungle"

    .line 37
    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v1

    .line 39
    array-length v2, v1

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v2, :cond_8c

    aget-object v4, v1, v3

    move-object/from16 v5, p0

    .line 40
    invoke-static {v5, v4}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->isAdapterValid(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    const-string v7, ">>>> "

    const-string v8, "SupersonicAds"

    if-eqz v6, :cond_66

    .line 41
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    const-string v4, ">>>> IronSource - VERIFIED"

    .line 42
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 44
    :cond_4e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - VERIFIED"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 47
    :cond_66
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_72

    const-string v4, ">>>> IronSource - NOT VERIFIED"

    .line 48
    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_89

    .line 50
    :cond_72
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - NOT VERIFIED"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_8c
    move-object/from16 v5, p0

    .line 55
    invoke-static/range {p0 .. p0}, Lcom/ironsource/mediationsdk/integration/IntegrationHelper;->validateGooglePlayServices(Landroid/app/Activity;)V

    return-void
.end method

.method private static validatePermissions(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "IntegrationHelper"

    const-string v1, "*** Permissions ***"

    .line 193
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "android.permission.INTERNET - VERIFIED"

    .line 197
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_1d
    const-string v2, "android.permission.INTERNET - MISSING"

    .line 199
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_22
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_34

    const-string p0, "android.permission.ACCESS_NETWORK_STATE - VERIFIED"

    .line 203
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_34
    const-string p0, "android.permission.ACCESS_NETWORK_STATE - MISSING"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_39
    return-void
.end method

.method private static validateSDKVersion(Ljava/lang/String;)V
    .registers 4

    .line 270
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getAdapterSDKVersion"

    const/4 v1, 0x0

    .line 271
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    .line 272
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "IntegrationHelper"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK Version - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_34

    :catch_2d
    const-string p0, "validateSDKVersion"

    const-string v0, "Unable to get SDK version"

    .line 275
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method
