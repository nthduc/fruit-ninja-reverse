.class public Lcom/adcolony/sdk/AdColonyAppOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADMARVEL:Ljava/lang/String; = "AdMarvel"

.field public static final ADMOB:Ljava/lang/String; = "AdMob"

.field public static final ADOBEAIR:Ljava/lang/String; = "Adobe AIR"

.field public static final AERSERVE:Ljava/lang/String; = "AerServe"

.field public static final ALL:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final APPODEAL:Ljava/lang/String; = "Appodeal"

.field public static final CCPA:Ljava/lang/String; = "CCPA"

.field public static final COCOS2DX:Ljava/lang/String; = "Cocos2d-x"

.field public static final COPPA:Ljava/lang/String; = "COPPA"

.field public static final CORONA:Ljava/lang/String; = "Corona"

.field public static final FUSEPOWERED:Ljava/lang/String; = "Fuse Powered"

.field public static final FYBER:Ljava/lang/String; = "Fyber"

.field public static final GDPR:Ljava/lang/String; = "GDPR"

.field public static final IRONSOURCE:Ljava/lang/String; = "ironSource"

.field public static final LANDSCAPE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MOPUB:Ljava/lang/String; = "MoPub"

.field public static final PORTRAIT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SENSOR:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNITY:Ljava/lang/String; = "Unity"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONObject;

.field private e:Lcom/adcolony/sdk/AdColonyUserMetadata;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v0, "google"

    .line 9
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 11
    invoke-static {}, Lcom/adcolony/sdk/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 12
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->z()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 16
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->a(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 17
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->a([Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    :cond_3a
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    invoke-static {p1}, Lcom/adcolony/sdk/k0;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle_id"

    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-void
.end method

.method public static getMoPubAppOptions(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 12
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    const-string v1, "MoPub"

    const-string v2, "1.0"

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setMediationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    if-eqz p0, :cond_74

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_74

    :cond_16
    const-string v1, ","

    .line 7
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v1, :cond_74

    aget-object v4, p0, v3

    const-string v5, ":"

    .line 9
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 10
    array-length v5, v4

    const/4 v6, 0x2

    const-string v7, "AdColonyMoPub"

    if-ne v5, v6, :cond_6d

    .line 11
    aget-object v5, v4, v2

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, 0x68af8e1

    const/4 v10, 0x1

    if-eq v8, v9, :cond_4c

    const v9, 0x14f51cd8

    if-eq v8, v9, :cond_42

    goto :goto_55

    :cond_42
    const-string v8, "version"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v6, 0x1

    goto :goto_55

    :cond_4c
    const-string v8, "store"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v6, 0x0

    :cond_55
    :goto_55
    if-eqz v6, :cond_65

    if-eq v6, v10, :cond_5f

    const-string p0, "AdColony client options in wrong format - please check your MoPub dashboard"

    .line 19
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 20
    :cond_5f
    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyAppOptions;->setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    goto :goto_6a

    .line 21
    :cond_65
    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_6d
    const-string p0, "AdColony client options not recognized - please check your MoPub dashboard"

    .line 31
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_74
    :goto_74
    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4

    if-nez p1, :cond_3

    return-object p0

    .line 1
    :cond_3
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method varargs a([Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 5

    if-nez p1, :cond_3

    return-object p0

    .line 3
    :cond_3
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 5
    :goto_c
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 6
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    aget-object v2, p1, v0

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONArray;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_19
    return-object p0
.end method

.method a()Ljava/lang/String;
    .registers 2

    .line 7
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    return-object v0
.end method

.method b(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->a(Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "use_forced_controller"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/adcolony/sdk/m0;->O:Z

    .line 10
    :cond_15
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "use_staging_launch_server"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    .line 11
    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "https://adc3-launch-staging.adcolony.com/v4/launch"

    .line 12
    sput-object v0, Lcom/adcolony/sdk/h;->U:Ljava/lang/String;

    :cond_2b
    const-string v0, "IABUSPrivacy_String"

    .line 16
    invoke-static {p1, v0}, Lcom/adcolony/sdk/k0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IABTCF_TCString"

    .line 17
    invoke-static {p1, v1}, Lcom/adcolony/sdk/k0;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IABTCF_gdprApplies"

    .line 18
    invoke-static {p1, v2}, Lcom/adcolony/sdk/k0;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_46

    .line 20
    iget-object v2, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v3, "ccpa_consent_string"

    invoke-static {v2, v3, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_46
    if-eqz v1, :cond_4f

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "gdpr_consent_string"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4f
    const/4 v0, 0x1

    if-eqz p1, :cond_54

    if-ne p1, v0, :cond_5f

    .line 26
    :cond_54
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    if-ne p1, v0, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v0, 0x0

    :goto_5a
    const-string p1, "gdpr_required"

    invoke-static {v1, p1, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    :cond_5f
    return-void
.end method

.method c()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->b:[Ljava/lang/String;

    return-object v0
.end method

.method d()Lorg/json/JSONArray;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getAppOrientation()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "app_orientation"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGDPRConsentString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "consent_string"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGDPRRequired()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "gdpr_required"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getKeepScreenOn()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "keep_screen_on"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMediationInfo()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "mediation_network"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "mediation_network_version"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public getMultiWindowEnabled()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOriginStore()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "origin_store"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInfo()Lorg/json/JSONObject;
    .registers 4

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "plugin"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v2, "plugin_version"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    invoke-static {v0, v2, v1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0
.end method

.method public getPrivacyConsentString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_consent_string"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivacyFrameworkRequired(Ljava/lang/String;)Z
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_required"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getRequestedAdOrientation()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "orientation"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTestModeEnabled()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "test_mode"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "user_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserMetadata()Lcom/adcolony/sdk/AdColonyUserMetadata;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->e:Lcom/adcolony/sdk/AdColonyUserMetadata;

    return-object v0
.end method

.method public setAppOrientation(I)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param

    int-to-double v0, p1

    const-string p1, "app_orientation"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "app_version"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setGDPRConsentString(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "consent_string"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public setGDPRRequired(Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "gdpr_required"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setKeepScreenOn(Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "keep_screen_on"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public setMediationNetwork(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "mediation_network"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v0, "mediation_network_version"

    invoke-static {p1, v0, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public setMultiWindowEnabled(Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "multi_window_enabled"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2, p3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    return-object p0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "origin_store"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setPlugin(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "plugin"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v0, "plugin_version"

    invoke-static {p1, v0, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_consent_string"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    return-object p0
.end method

.method public setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_required"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setRequestedAdOrientation(I)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x2L
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-double v0, p1

    const-string p1, "orientation"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;D)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setTestModeEnabled(Z)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v1, "test_mode"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "user_id"

    .line 1
    invoke-virtual {p0, v0, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object p0
.end method

.method public setUserMetadata(Lcom/adcolony/sdk/AdColonyUserMetadata;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .registers 4
    .param p1    # Lcom/adcolony/sdk/AdColonyUserMetadata;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->e:Lcom/adcolony/sdk/AdColonyUserMetadata;

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/adcolony/sdk/AdColonyUserMetadata;->b:Lorg/json/JSONObject;

    const-string v1, "user_metadata"

    invoke-static {v0, v1, p1}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-object p0
.end method
