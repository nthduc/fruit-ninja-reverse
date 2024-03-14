.class public Lcom/adcolony/sdk/AdColony;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->c()V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .registers 11

    .line 113
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v1

    if-eqz p1, :cond_15e

    if-nez p0, :cond_e

    goto/16 :goto_15e

    .line 120
    :cond_e
    invoke-static {p0}, Lcom/adcolony/sdk/k0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 121
    invoke-static {}, Lcom/adcolony/sdk/k0;->e()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-static {}, Lcom/adcolony/sdk/k0;->f()I

    move-result v3

    .line 125
    invoke-virtual {v1}, Lcom/adcolony/sdk/j;->h()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->o()Lcom/adcolony/sdk/b0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adcolony/sdk/b0;->a()Ljava/lang/String;

    move-result-object v4

    .line 131
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "unknown"

    const-string v7, "sessionId"

    .line 132
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "advertiserId"

    .line 133
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "countryLocale"

    .line 136
    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/j;->k()Ljava/lang/String;

    move-result-object v7

    const-string v8, "countryLocaleShort"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/j;->w()Ljava/lang/String;

    move-result-object v7

    const-string v8, "manufacturer"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/j;->z()Ljava/lang/String;

    move-result-object v7

    const-string v8, "model"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/adcolony/sdk/j;->B()Ljava/lang/String;

    move-result-object v7

    const-string v8, "osVersion"

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "carrierName"

    .line 142
    invoke-virtual {v5, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "networkType"

    .line 143
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v4, "android"

    .line 144
    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    .line 145
    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "appVersion"

    .line 146
    invoke-virtual {v5, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "appBuildNumber"

    invoke-virtual {v5, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "appId"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "apiLevel"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adcolony/sdk/j;->C()Ljava/lang/String;

    move-result-object p0

    const-string v2, "sdkVersion"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "controllerVersion"

    .line 151
    invoke-virtual {v5, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->d()Lorg/json/JSONArray;

    move-result-object p0

    const-string v2, "zoneIds"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMediationInfo()Lorg/json/JSONObject;

    move-result-object p0

    .line 156
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->getPluginInfo()Lorg/json/JSONObject;

    move-result-object p1

    const-string v2, "mediation_network"

    .line 158
    invoke-static {p0, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_139

    .line 159
    invoke-static {p0, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mediationNetwork"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mediation_network_version"

    .line 160
    invoke-static {p0, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "mediationNetworkVersion"

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_139
    const-string p0, "plugin"

    .line 163
    invoke-static {p1, p0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_157

    .line 164
    invoke-static {p1, p0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "plugin_version"

    .line 165
    invoke-static {p1, p0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "pluginVersion"

    invoke-virtual {v5, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_157
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/adcolony/sdk/w;->a(Ljava/util/HashMap;)V

    :cond_15e
    :goto_15e
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/adcolony/sdk/d0;->a(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Cannot configure AdColony; configuration mechanism requires 5 "

    .line 4
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "seconds between attempts."

    .line 5
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 6
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0

    :cond_1f
    if-nez p0, :cond_25

    .line 13
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object p0

    :cond_25
    if-nez p0, :cond_44

    .line 18
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to AdColony.configure() as the provided Activity or "

    .line 19
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "Application context is null and we do not currently hold a "

    .line 20
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "reference to either for our use."

    .line 21
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 22
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0

    .line 27
    :cond_44
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_4d

    .line 28
    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_4d
    if-nez p1, :cond_54

    .line 33
    new-instance p1, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    .line 37
    :cond_54
    invoke-static {}, Lcom/adcolony/sdk/a;->e()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_bd

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "reconfigurable"

    .line 39
    invoke-static {v1, v3}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bd

    .line 41
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    .line 43
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to AdColony.configure() as the app id does not "

    .line 44
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "match what was used during the initial configuration."

    .line 45
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 46
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0

    .line 48
    :cond_98
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/adcolony/sdk/k0;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bd

    .line 49
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to AdColony.configure() as the same zone ids "

    .line 50
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "were used during the previous configuration."

    .line 51
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 52
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v2

    .line 57
    :cond_bd
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "HH:mm:ss:SSS"

    invoke-direct {v1, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 59
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 63
    :goto_d4
    array-length v4, p3

    const-string v5, ""

    if-ge v1, v4, :cond_e9

    .line 64
    aget-object v4, p3, v1

    if-eqz v4, :cond_e6

    aget-object v4, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e6

    const/4 v3, 0x0

    :cond_e6
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    .line 69
    :cond_e9
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_177

    if-eqz v3, :cond_f3

    goto/16 :goto_177

    .line 75
    :cond_f3
    sput-boolean v2, Lcom/adcolony/sdk/a;->c:Z

    .line 78
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->a(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 79
    invoke-virtual {p1, p3}, Lcom/adcolony/sdk/AdColonyAppOptions;->a([Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 82
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v1, v3, :cond_115

    .line 83
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "The minimum API level for the AdColony SDK is 14."

    .line 84
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 85
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 86
    invoke-static {p0, p1, v2}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Z)V

    goto :goto_118

    .line 88
    :cond_115
    invoke-static {p0, p1, v0}, Lcom/adcolony/sdk/a;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Z)V

    .line 92
    :goto_118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adcolony/sdk/g0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/adc3/AppInfo"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_148

    .line 95
    invoke-static {p0}, Lcom/adcolony/sdk/s;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 97
    :cond_148
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "appId"

    .line 98
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "zoneIds"

    if-eqz v3, :cond_169

    .line 99
    invoke-static {p1, v4}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1, p3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONArray;[Ljava/lang/String;Z)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 100
    invoke-static {v0, v1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_173

    .line 102
    :cond_169
    invoke-static {p3}, Lcom/adcolony/sdk/s;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, v4, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 103
    invoke-static {v0, v1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 105
    :goto_173
    invoke-static {v0, p0}, Lcom/adcolony/sdk/s;->i(Lorg/json/JSONObject;Ljava/lang/String;)Z

    return v2

    .line 106
    :cond_177
    :goto_177
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "AdColony.configure() called with an empty app or zone id String."

    .line 107
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 108
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v0
.end method

.method static a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_10

    .line 111
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 112
    new-instance v0, Lcom/adcolony/sdk/AdColony$b;

    invoke-direct {v0, p1, p0}, Lcom/adcolony/sdk/AdColony$b;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method static a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z
    .registers 3

    if-eqz p0, :cond_10

    .line 109
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 110
    new-instance v0, Lcom/adcolony/sdk/AdColony$a;

    invoke-direct {v0, p1, p0}, Lcom/adcolony/sdk/AdColony$a;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static addCustomMessageListener(Lcom/adcolony/sdk/AdColonyCustomMessageListener;Ljava/lang/String;)Z
    .registers 4
    .param p0    # Lcom/adcolony/sdk/AdColonyCustomMessageListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 2
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to AdColony.addCustomMessageListener as AdColony "

    .line 3
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "has not yet been configured."

    .line 4
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 9
    :cond_1e
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 10
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to AdColony.addCustomMessageListener."

    .line 11
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 12
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 21
    :cond_35
    :try_start_35
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object p0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/adcolony/sdk/AdColony$h;

    invoke-direct {v0, p1}, Lcom/adcolony/sdk/AdColony$h;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_35 .. :try_end_4a} :catch_4c

    const/4 p0, 0x1

    return p0

    :catch_4c
    return v1
.end method

.method static b()Z
    .registers 4

    .line 1
    new-instance v0, Lcom/adcolony/sdk/k0$b;

    const-wide/high16 v1, 0x402e000000000000L    # 15.0

    invoke-direct {v0, v1, v2}, Lcom/adcolony/sdk/k0$b;-><init>(D)V

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    .line 3
    :goto_b
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->C()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v0}, Lcom/adcolony/sdk/k0$b;->a()Z

    move-result v2

    if-nez v2, :cond_1f

    const-wide/16 v2, 0x64

    .line 5
    :try_start_19
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_b

    :catch_1d
    nop

    goto :goto_b

    .line 10
    :cond_1f
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->C()Z

    move-result v0

    return v0
.end method

.method private static c()V
    .registers 2

    .line 1
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "The AdColony API is not available while AdColony is disabled."

    .line 2
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 3
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-void
.end method

.method public static clearCustomMessageListeners()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Ignoring call to AdColony.clearCustomMessageListeners as AdColony"

    .line 3
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, " has not yet been configured."

    .line 4
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 v0, 0x0

    return v0

    .line 9
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 11
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColony$j;

    invoke-direct {v1}, Lcom/adcolony/sdk/AdColony$j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static collectSignals()Ljava/lang/String;
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_19

    .line 2
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v2, "Ignoring call to AdColony.collectSignals() as AdColony has not yet been configured."

    .line 3
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v2, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 4
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return-object v1

    .line 7
    :cond_19
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->u()Lcom/adcolony/sdk/f0;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/adcolony/sdk/f0;->b()V

    .line 10
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/j;->a(Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 11
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    invoke-virtual {v2}, Lcom/adcolony/sdk/f0;->a()I

    move-result v2

    const-string v3, "signals_count"

    invoke-static {v0, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 14
    :try_start_42
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_50} :catch_51

    return-object v0

    :catch_51
    return-object v1
.end method

.method public static varargs configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs configure(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, p1, p2}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs configure(Landroid/app/Application;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-static {p0, p1, p2, p3}, Lcom/adcolony/sdk/AdColony;->a(Landroid/content/Context;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs configure(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0, p1, p2}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Application;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static disable()Z
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 7
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Lcom/adcolony/sdk/b;

    if-eqz v1, :cond_17

    .line 8
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 12
    :cond_17
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 17
    new-instance v3, Lcom/adcolony/sdk/AdColony$c;

    invoke-direct {v3, v2}, Lcom/adcolony/sdk/AdColony$c;-><init>(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {v3}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    goto :goto_2b

    .line 29
    :cond_40
    new-instance v1, Lcom/adcolony/sdk/AdColony$d;

    invoke-direct {v1, v0}, Lcom/adcolony/sdk/AdColony$d;-><init>(Lcom/adcolony/sdk/h;)V

    invoke-static {v1}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    .line 53
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/h;->b(Z)V

    return v1
.end method

.method public static getAppOptions()Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 1

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 5
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomMessageListener(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyCustomMessageListener;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adcolony/sdk/AdColonyCustomMessageListener;

    return-object p0
.end method

.method public static getRewardListener()Lcom/adcolony/sdk/AdColonyRewardListener;
    .registers 1

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_8
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->t()Lcom/adcolony/sdk/AdColonyRewardListener;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 4
    :cond_9
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->h()Lcom/adcolony/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/j;->C()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZone(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyZone;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Ignoring call to AdColony.getZone() as AdColony has not yet been "

    .line 3
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v0, "configured."

    .line 4
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->y()Ljava/util/HashMap;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/adcolony/sdk/AdColonyZone;

    return-object p0

    .line 13
    :cond_33
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->y()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {p0, p1, v0, v1, v2}, Lcom/adcolony/sdk/AdColony;->notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z

    move-result p0

    return p0
.end method

.method public static notifyIAPComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Z
    .registers 13
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 3
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to notifyIAPComplete as AdColony has not yet been "

    .line 4
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "configured."

    .line 5
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 6
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 10
    :cond_1e
    invoke-static {p0}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {p1}, Lcom/adcolony/sdk/k0;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_5b

    :cond_2b
    if-eqz p2, :cond_4a

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_4a

    .line 21
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "You are trying to report an IAP event with a currency String "

    .line 22
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, "containing more than 3 characters."

    .line 23
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 24
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 29
    :cond_4a
    new-instance v0, Lcom/adcolony/sdk/AdColony$e;

    move-object v2, v0

    move-wide v3, p3

    move-object v5, p2

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/adcolony/sdk/AdColony$e;-><init>(DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_5b
    :goto_5b
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to notifyIAPComplete as one of the passed Strings "

    .line 47
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, "is greater than "

    .line 48
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const/16 p1, 0x80

    .line 49
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(I)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, " characters."

    .line 50
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 51
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method public static removeCustomMessageListener(Ljava/lang/String;)Z
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Ignoring call to AdColony.removeCustomMessageListener as AdColony"

    .line 3
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v0, " has not yet been configured."

    .line 4
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p0, 0x0

    return p0

    .line 9
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/AdColony$i;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/AdColony$i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static removeRewardListener()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Ignoring call to AdColony.removeRewardListener() as AdColony has "

    .line 3
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, "not yet been configured."

    .line 4
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyRewardListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;)Z
    .registers 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/adcolony/sdk/AdColonyAdViewListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/adcolony/sdk/AdColonyAdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/adcolony/sdk/AdColony;->requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    move-result p0

    return p0
.end method

.method public static requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
    .registers 7
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/adcolony/sdk/AdColonyAdViewListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/adcolony/sdk/AdColonyAdSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 3
    new-instance p2, Lcom/adcolony/sdk/u$a;

    invoke-direct {p2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p3, "Ignoring call to requestAdView as AdColony has not yet been"

    .line 4
    invoke-virtual {p2, p3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    const-string p3, " configured."

    .line 5
    invoke-virtual {p2, p3}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    sget-object p3, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 6
    invoke-virtual {p2, p3}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 7
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z

    return v1

    .line 11
    :cond_21
    invoke-virtual {p2}, Lcom/adcolony/sdk/AdColonyAdSize;->getHeight()I

    move-result v0

    if-lez v0, :cond_52

    invoke-virtual {p2}, Lcom/adcolony/sdk/AdColonyAdSize;->getWidth()I

    move-result v0

    if-gtz v0, :cond_2e

    goto :goto_52

    .line 20
    :cond_2e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zone_id"

    .line 21
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 22
    invoke-static {v2, v0}, Lcom/adcolony/sdk/d0;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 23
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z

    return v1

    .line 28
    :cond_43
    new-instance v0, Lcom/adcolony/sdk/AdColony$f;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/adcolony/sdk/AdColony$f;-><init>(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 48
    :try_start_48
    sget-object p2, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_48 .. :try_end_4d} :catch_4e

    return v2

    .line 50
    :catch_4e
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z

    return v1

    .line 51
    :cond_52
    :goto_52
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p1, "Ignoring call to requestAdView as you\'ve provided an AdColonyAdSize"

    .line 52
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string p1, " object with an invalid width or height."

    .line 53
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object p1, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 54
    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1
.end method

.method public static requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/adcolony/sdk/AdColonyInterstitialListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    move-result p0

    return p0
.end method

.method public static requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
    .registers 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/adcolony/sdk/AdColonyInterstitialListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 3
    new-instance p2, Lcom/adcolony/sdk/u$a;

    invoke-direct {p2}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Ignoring call to AdColony.requestInterstitial as AdColony has not"

    .line 4
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    const-string v0, " yet been configured."

    .line 5
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p2

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 6
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 7
    new-instance p2, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    return v1

    .line 13
    :cond_26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "zone_id"

    .line 14
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 15
    invoke-static {v2, v0}, Lcom/adcolony/sdk/d0;->a(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 16
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adcolony/sdk/h;->y()Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/adcolony/sdk/AdColonyZone;

    if-nez p2, :cond_4c

    .line 18
    new-instance p2, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {p2, p0}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 20
    :cond_4c
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V

    return v1

    .line 24
    :cond_50
    new-instance v0, Lcom/adcolony/sdk/AdColony$k;

    invoke-direct {v0, p1, p0, p2}, Lcom/adcolony/sdk/AdColony$k;-><init>(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 64
    :try_start_55
    sget-object p2, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_5a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_55 .. :try_end_5a} :catch_5b

    return v2

    .line 66
    :catch_5b
    invoke-static {p1, p0}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    return v1
.end method

.method public static setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z
    .registers 3
    .param p0    # Lcom/adcolony/sdk/AdColonyAppOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 2
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Ignoring call to AdColony.setAppOptions() as AdColony has not yet"

    .line 3
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v0, " been configured."

    .line 4
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    return v1

    .line 10
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/h;->b(Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/a;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 13
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->b(Landroid/content/Context;)V

    .line 17
    :cond_2e
    new-instance v0, Lcom/adcolony/sdk/AdColony$g;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/AdColony$g;-><init>(Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 29
    :try_start_33
    sget-object p0, Lcom/adcolony/sdk/AdColony;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_38
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_33 .. :try_end_38} :catch_3a

    const/4 p0, 0x1

    return p0

    :catch_3a
    return v1
.end method

.method public static setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z
    .registers 2
    .param p0    # Lcom/adcolony/sdk/AdColonyRewardListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2
    new-instance p0, Lcom/adcolony/sdk/u$a;

    invoke-direct {p0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v0, "Ignoring call to AdColony.setRewardListener() as AdColony has not"

    .line 3
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    const-string v0, " yet been configured."

    .line 4
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p0

    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    .line 5
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    const/4 p0, 0x0

    return p0

    .line 8
    :cond_1e
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyRewardListener;)V

    const/4 p0, 0x1

    return p0
.end method
