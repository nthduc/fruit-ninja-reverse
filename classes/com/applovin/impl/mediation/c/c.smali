.class public Lcom/applovin/impl/mediation/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/mediation/c/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/applovin/impl/mediation/c/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AdColonyMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AmazonMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AmazonBiddingMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.AppLovinMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.ByteDanceMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.ChartboostMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.FacebookMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.GoogleMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.GoogleAdManagerMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.HyperMXMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.IMobileMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.InMobiMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.InneractiveMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.IronSourceMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.LeadboltMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MadvertiseMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MaioMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MintegralMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MoPubMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.MyTargetMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.NendMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.OguryMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.OguryPresageMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.SmaatoMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.SnapMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.TapjoyMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.TencentMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.UnityAdsMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.VerizonAdsMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.VungleMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    const-string v1, "com.applovin.mediation.adapters.YandexMediationAdapter"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/j;)Lcom/applovin/impl/mediation/c/c$a;
    .registers 8

    sget-object v0, Lcom/applovin/impl/sdk/b/a;->L:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->b:Lcom/applovin/impl/mediation/c/c$a;

    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    sget-object v0, Lcom/applovin/impl/mediation/c/c;->b:Lcom/applovin/impl/mediation/c/c$a;

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/applovin/impl/mediation/c/c;->b(Lcom/applovin/impl/sdk/j;)V

    :goto_1a
    sget-object p0, Lcom/applovin/impl/mediation/c/c;->b:Lcom/applovin/impl/mediation/c/c$a;

    return-object p0

    :cond_1d
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    sget-object v2, Lcom/applovin/impl/mediation/c/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/applovin/impl/mediation/c/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v4

    if-eqz v4, :cond_5f

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_44
    const-string v6, "class"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_version"

    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-interface {v4}, Lcom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_5b} :catch_5b

    :catch_5b
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    :cond_5f
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    :cond_63
    new-instance p0, Lcom/applovin/impl/mediation/c/c$a;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/mediation/c/c$a;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;Lcom/applovin/impl/mediation/c/c$1;)V

    sput-object p0, Lcom/applovin/impl/mediation/c/c;->b:Lcom/applovin/impl/mediation/c/c$a;

    goto :goto_1a
.end method

.method public static a(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/impl/sdk/d/s$a;
    .registers 2

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/applovin/impl/sdk/d/s$a;->o:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0

    :cond_7
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_e

    sget-object p0, Lcom/applovin/impl/sdk/d/s$a;->p:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0

    :cond_e
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_15

    sget-object p0, Lcom/applovin/impl/sdk/d/s$a;->q:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0

    :cond_15
    sget-object p0, Lcom/applovin/impl/sdk/d/s$a;->n:Lcom/applovin/impl/sdk/d/s$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/mediation/adapter/MaxAdapter;
    .registers 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppLovinSdk"

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p0

    const-string p1, "Failed to create adapter instance. No class name provided"

    invoke-virtual {p0, v2, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_13
    :try_start_13
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/applovin/sdk/AppLovinSdk;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->T()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/mediation/adapter/MaxAdapter;

    return-object v0

    :cond_3a
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error: not an instance of \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v4, Lcom/applovin/mediation/adapter/MaxAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_60} :catch_7a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_60} :catch_61

    goto :goto_7a

    :catch_61
    move-exception v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0, v0}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_7a
    :goto_7a
    return-object v1
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 2

    instance-of v0, p0, Lcom/applovin/impl/sdk/ad/g;

    if-eqz v0, :cond_12

    check-cast p0, Lcom/applovin/impl/sdk/ad/g;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/g;->M()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static b(Lcom/applovin/mediation/MaxAdFormat;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/applovin/impl/sdk/j;)V
    .registers 7

    sget-object v0, Lcom/applovin/impl/mediation/c/c;->b:Lcom/applovin/impl/mediation/c/c$a;

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/c/c$a;->a()Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_38

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONArray;ILorg/json/JSONObject;Lcom/applovin/impl/sdk/j;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, ""

    const-string v4, "class"

    invoke-static {v2, v4, v3, p0}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdk_version"

    invoke-static {v2, v5, v3, p0}, Lcom/applovin/impl/sdk/utils/i;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_35

    :cond_27
    invoke-static {v4, p0}, Lcom/applovin/impl/mediation/c/c;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/j;)Lcom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_35

    :cond_2e
    invoke-interface {v3}, Lcom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3, p0}, Lcom/applovin/impl/sdk/utils/i;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_38
    return-void
.end method

.method public static c(Lcom/applovin/mediation/MaxAdFormat;)Z
    .registers 2

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static d(Lcom/applovin/mediation/MaxAdFormat;)Z
    .registers 2

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    if-eq p0, v0, :cond_f

    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
