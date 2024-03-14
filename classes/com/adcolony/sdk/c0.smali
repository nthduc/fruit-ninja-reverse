.class Lcom/adcolony/sdk/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

.field private b:Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

.field private c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

.field private d:Lcom/iab/omid/library/adcolony/adsession/AdEvents;

.field private e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

.field private f:Lcom/adcolony/sdk/AdColonyCustomMessageListener;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c0;->g:Ljava/util/List;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/adcolony/sdk/c0;->h:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/adcolony/sdk/c0;->i:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/adcolony/sdk/c0;->r:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/adcolony/sdk/c0;->s:Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->a(Lorg/json/JSONObject;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c0;->h:I

    const-string v1, "skippable"

    .line 18
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/adcolony/sdk/c0;->n:Z

    const-string v1, "skip_offset"

    .line 19
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c0;->p:I

    const-string v1, "video_duration"

    .line 20
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/adcolony/sdk/c0;->q:I

    const-string v1, "js_resources"

    .line 21
    invoke-static {p1, v1}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "verification_params"

    .line 22
    invoke-static {p1, v2}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, "vendor_keys"

    .line 23
    invoke-static {p1, v3}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 24
    iput-object p2, p0, Lcom/adcolony/sdk/c0;->s:Ljava/lang/String;

    const/4 p2, 0x0

    .line 27
    :goto_48
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge p2, v4, :cond_98

    .line 29
    :try_start_4e
    invoke-static {v2, p2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v3, p2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v5

    .line 31
    new-instance v6, Ljava/net/URL;

    invoke-static {v1, p2}, Lcom/adcolony/sdk/s;->d(Lorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_70

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_70

    .line 35
    invoke-static {v5, v6, v4}, Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;->createVerificationScriptResourceWithParameters(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;

    move-result-object v4

    goto :goto_7f

    .line 36
    :cond_70
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 38
    invoke-static {v6}, Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;

    move-result-object v4

    goto :goto_7f

    .line 41
    :cond_7b
    invoke-static {v6}, Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;->createVerificationScriptResourceWithoutParameters(Ljava/net/URL;)Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;

    move-result-object v4

    .line 43
    :goto_7f
    iget-object v5, p0, Lcom/adcolony/sdk/c0;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_84
    .catch Ljava/net/MalformedURLException; {:try_start_4e .. :try_end_84} :catch_85

    goto :goto_95

    .line 45
    :catch_85
    new-instance v4, Lcom/adcolony/sdk/u$a;

    invoke-direct {v4}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v5, "Invalid js resource url passed to Omid"

    .line 46
    invoke-virtual {v4, v5}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v4

    sget-object v5, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 47
    invoke-virtual {v4, v5}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_95
    add-int/lit8 p2, p2, 0x1

    goto :goto_48

    .line 53
    :cond_98
    :try_start_98
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lcom/adcolony/sdk/h;->k()Lcom/adcolony/sdk/p;

    move-result-object p2

    const-string v0, "filepath"

    .line 55
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/adcolony/sdk/p;->a(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->r:Ljava/lang/String;
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_b1} :catch_b2

    goto :goto_c2

    .line 57
    :catch_b2
    new-instance p1, Lcom/adcolony/sdk/u$a;

    invoke-direct {p1}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string p2, "Error loading IAB JS Client"

    .line 58
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 59
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :goto_c2
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c0;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/adcolony/sdk/c0;->h:I

    return p0
.end method

.method private a(Lorg/json/JSONObject;)I
    .registers 5

    .line 3
    iget v0, p0, Lcom/adcolony/sdk/c0;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_40

    const-string v0, "ad_unit_type"

    .line 4
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->f(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/c0;->j:I

    const-string v0, "ad_type"

    .line 5
    invoke-static {p1, v0}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget v0, p0, Lcom/adcolony/sdk/c0;->j:I

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    const-string v0, "video"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    const-string v0, "display"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return v2

    :cond_2e
    const-string v0, "banner_display"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "interstitial_display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    :cond_3e
    const/4 p1, 0x2

    return p1

    .line 18
    :cond_40
    iget p1, p0, Lcom/adcolony/sdk/c0;->h:I

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c0;Z)Z
    .registers 2

    .line 2
    iput-boolean p1, p0, Lcom/adcolony/sdk/c0;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/c0;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/c0;->i:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/adcolony/sdk/c;)V
    .registers 4

    const-string v0, "register_ad_view"

    .line 7
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->x()Ljava/util/HashMap;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->k()I

    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/m0;

    if-nez v0, :cond_3f

    .line 17
    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->n()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 18
    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->n()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/m0;

    .line 20
    :cond_3f
    iget-object v1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v1, :cond_4c

    if-eqz v0, :cond_4c

    .line 21
    invoke-virtual {v1, v0}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 22
    invoke-virtual {v0}, Lcom/adcolony/sdk/m0;->e()V

    goto :goto_5d

    .line 23
    :cond_4c
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v0, :cond_5d

    .line 26
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    .line 27
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/c;->a(Lcom/iab/omid/library/adcolony/adsession/AdSession;)V

    const-string p1, "register_obstructions"

    .line 28
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .line 6
    sget-object v0, Lcom/adcolony/sdk/k0;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/adcolony/sdk/c0$a;

    invoke-direct {v1, p0, p1}, Lcom/adcolony/sdk/c0$a;-><init>(Lcom/adcolony/sdk/c0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/adcolony/sdk/c0;)Ljava/lang/String;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/adcolony/sdk/c0;->s:Ljava/lang/String;

    return-object p0
.end method

.method private e()V
    .registers 3

    .line 1
    new-instance v0, Lcom/adcolony/sdk/c0$b;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/c0$b;-><init>(Lcom/adcolony/sdk/c0;)V

    iput-object v0, p0, Lcom/adcolony/sdk/c0;->f:Lcom/adcolony/sdk/AdColonyCustomMessageListener;

    const-string v1, "viewability_ad_event"

    .line 42
    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->addCustomMessageListener(Lcom/adcolony/sdk/AdColonyCustomMessageListener;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c0;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lcom/adcolony/sdk/c0;->h:I

    if-ltz v0, :cond_a9

    iget-object v0, p0, Lcom/adcolony/sdk/c0;->r:Ljava/lang/String;

    if-eqz v0, :cond_a9

    const-string v1, ""

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Lcom/adcolony/sdk/c0;->g:Ljava/util/List;

    if-eqz v0, :cond_a9

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_21

    .line 46
    invoke-virtual {p0}, Lcom/adcolony/sdk/c0;->d()I

    move-result v0

    if-ne v0, v2, :cond_a9

    .line 47
    :cond_21
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 48
    sget-object v3, Lcom/iab/omid/library/adcolony/adsession/Owner;->NATIVE:Lcom/iab/omid/library/adcolony/adsession/Owner;

    .line 50
    sget-object v4, Lcom/iab/omid/library/adcolony/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/adcolony/adsession/ImpressionType;

    .line 51
    invoke-virtual {p0}, Lcom/adcolony/sdk/c0;->d()I

    move-result v5

    const-string v6, "inject_javascript"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_82

    const/4 v9, 0x1

    if-eq v5, v9, :cond_5a

    if-eq v5, v2, :cond_39

    goto :goto_a9

    .line 73
    :cond_39
    sget-object v2, Lcom/iab/omid/library/adcolony/adsession/CreativeType;->HTML_DISPLAY:Lcom/iab/omid/library/adcolony/adsession/CreativeType;

    .line 75
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->q()Lcom/iab/omid/library/adcolony/adsession/Partner;

    move-result-object v0

    .line 76
    invoke-static {v0, p1, v1, v8}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->createHtmlAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    .line 79
    invoke-static {v2, v4, v3, v8, v7}, Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/adcolony/adsession/CreativeType;Lcom/iab/omid/library/adcolony/adsession/ImpressionType;Lcom/iab/omid/library/adcolony/adsession/Owner;Lcom/iab/omid/library/adcolony/adsession/Owner;Z)Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->b:Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    .line 80
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;)Lcom/iab/omid/library/adcolony/adsession/AdSession;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    .line 81
    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->i:Ljava/lang/String;

    goto :goto_a9

    .line 82
    :cond_5a
    sget-object p1, Lcom/iab/omid/library/adcolony/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/adcolony/adsession/CreativeType;

    .line 84
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->q()Lcom/iab/omid/library/adcolony/adsession/Partner;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/c0;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/c0;->g:Ljava/util/List;

    .line 85
    invoke-static {v0, v1, v2, v8, v8}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    .line 88
    invoke-static {p1, v4, v3, v8, v7}, Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/adcolony/adsession/CreativeType;Lcom/iab/omid/library/adcolony/adsession/ImpressionType;Lcom/iab/omid/library/adcolony/adsession/Owner;Lcom/iab/omid/library/adcolony/adsession/Owner;Z)Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->b:Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    .line 89
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;)Lcom/iab/omid/library/adcolony/adsession/AdSession;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    .line 90
    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->i:Ljava/lang/String;

    .line 91
    invoke-direct {p0, v6}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto :goto_a9

    .line 92
    :cond_82
    sget-object p1, Lcom/iab/omid/library/adcolony/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/adcolony/adsession/CreativeType;

    .line 94
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->q()Lcom/iab/omid/library/adcolony/adsession/Partner;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/c0;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/c0;->g:Ljava/util/List;

    .line 95
    invoke-static {v0, v1, v2, v8, v8}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->createNativeAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    .line 98
    invoke-static {p1, v4, v3, v3, v7}, Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;->createAdSessionConfiguration(Lcom/iab/omid/library/adcolony/adsession/CreativeType;Lcom/iab/omid/library/adcolony/adsession/ImpressionType;Lcom/iab/omid/library/adcolony/adsession/Owner;Lcom/iab/omid/library/adcolony/adsession/Owner;Z)Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->b:Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;

    .line 99
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->a:Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->createAdSession(Lcom/iab/omid/library/adcolony/adsession/AdSessionConfiguration;Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;)Lcom/iab/omid/library/adcolony/adsession/AdSession;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    .line 100
    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->getAdSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->i:Ljava/lang/String;

    .line 101
    invoke-direct {p0, v6}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .registers 4

    .line 19
    iget-boolean v0, p0, Lcom/adcolony/sdk/c0;->m:Z

    if-eqz v0, :cond_5

    return-void

    .line 22
    :cond_5
    iget v0, p0, Lcom/adcolony/sdk/c0;->h:I

    if-ltz v0, :cond_57

    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-eqz v0, :cond_57

    .line 23
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Lcom/adcolony/sdk/c;)V

    .line 24
    invoke-direct {p0}, Lcom/adcolony/sdk/c0;->e()V

    .line 25
    iget p1, p0, Lcom/adcolony/sdk/c0;->h:I

    if-eqz p1, :cond_19

    const/4 p1, 0x0

    goto :goto_1f

    :cond_19
    iget-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    .line 26
    invoke-static {p1}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->createMediaEvents(Lcom/iab/omid/library/adcolony/adsession/AdSession;)Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    move-result-object p1

    :goto_1f
    iput-object p1, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    .line 27
    iget-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->start()V

    .line 28
    iget-object p1, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    invoke-static {p1}, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/adcolony/adsession/AdSession;)Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    move-result-object p1

    iput-object p1, p0, Lcom/adcolony/sdk/c0;->d:Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    const-string p1, "start_session"

    .line 29
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    const/4 v0, 0x1

    if-eqz p1, :cond_50

    .line 31
    sget-object p1, Lcom/iab/omid/library/adcolony/adsession/media/Position;->PREROLL:Lcom/iab/omid/library/adcolony/adsession/media/Position;

    .line 32
    iget-boolean v1, p0, Lcom/adcolony/sdk/c0;->n:Z

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/adcolony/sdk/c0;->p:I

    int-to-float v1, v1

    .line 33
    invoke-static {v1, v0, p1}, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->createVastPropertiesForSkippableMedia(FZLcom/iab/omid/library/adcolony/adsession/media/Position;)Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;

    move-result-object p1

    goto :goto_4a

    .line 34
    :cond_46
    invoke-static {v0, p1}, Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;->createVastPropertiesForNonSkippableMedia(ZLcom/iab/omid/library/adcolony/adsession/media/Position;)Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;

    move-result-object p1

    .line 35
    :goto_4a
    iget-object v1, p0, Lcom/adcolony/sdk/c0;->d:Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    invoke-virtual {v1, p1}, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->loaded(Lcom/iab/omid/library/adcolony/adsession/media/VastProperties;)V

    goto :goto_55

    .line 37
    :cond_50
    iget-object p1, p0, Lcom/adcolony/sdk/c0;->d:Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    invoke-virtual {p1}, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->loaded()V

    .line 39
    :goto_55
    iput-boolean v0, p0, Lcom/adcolony/sdk/c0;->m:Z

    :cond_57
    return-void
.end method

.method a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/adcolony/sdk/c0;->a(Ljava/lang/String;F)V

    return-void
.end method

.method a(Ljava/lang/String;F)V
    .registers 12

    .line 103
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1ec

    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    if-nez v0, :cond_c

    goto/16 :goto_1ec

    .line 108
    :cond_c
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    const-string v1, "cancel"

    const-string v2, "continue"

    const-string v3, "skip"

    const-string v4, "start"

    if-nez v0, :cond_31

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    return-void

    :cond_31
    const/4 v0, -0x1

    .line 114
    :try_start_32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5
    :try_end_36
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_36} :catch_1be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_36} :catch_1bc

    const-string v6, "pause"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v5, :sswitch_data_1ee

    goto/16 :goto_e1

    :sswitch_3f
    :try_start_3f
    const-string v1, "buffer_end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xd

    goto/16 :goto_e1

    :sswitch_4b
    const-string v1, "sound_unmute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0x9

    goto/16 :goto_e1

    :sswitch_57
    const-string v1, "html5_interaction"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xf

    goto/16 :goto_e1

    :sswitch_63
    const-string v1, "in_video_engagement"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xe

    goto/16 :goto_e1

    :sswitch_6f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x0

    goto/16 :goto_e1

    :sswitch_78
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xa

    goto :goto_e1

    :sswitch_81
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x6

    goto :goto_e1

    :sswitch_89
    const-string v1, "sound_mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0x8

    goto :goto_e1

    :sswitch_94
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x5

    goto :goto_e1

    :sswitch_9c
    const-string v1, "complete"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x4

    goto :goto_e1

    :sswitch_a6
    const-string v1, "third_quartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x3

    goto :goto_e1

    :sswitch_b0
    const-string v1, "resume"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xb

    goto :goto_e1

    :sswitch_bb
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x7

    goto :goto_e1

    :sswitch_c3
    const-string v1, "midpoint"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x2

    goto :goto_e1

    :sswitch_cd
    const-string v1, "buffer_start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/16 v0, 0xc

    goto :goto_e1

    :sswitch_d8
    const-string v1, "first_quartile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    const/4 v0, 0x1

    :cond_e1
    :goto_e1
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_230

    goto/16 :goto_1ec

    .line 184
    :pswitch_e9
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    sget-object v0, Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;->CLICK:Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;

    invoke-virtual {p2, v0}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->adUserInteraction(Lcom/iab/omid/library/adcolony/adsession/media/InteractionType;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 186
    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->l:Z

    if-eqz p2, :cond_1ec

    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->k:Z

    if-nez p2, :cond_1ec

    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->o:Z

    if-nez p2, :cond_1ec

    .line 187
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->pause()V

    .line 188
    invoke-direct {p0, v6}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 189
    iput-boolean v8, p0, Lcom/adcolony/sdk/c0;->k:Z

    .line 190
    iput-boolean v7, p0, Lcom/adcolony/sdk/c0;->l:Z

    goto/16 :goto_1ec

    .line 191
    :pswitch_10d
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->bufferFinish()V

    .line 192
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 193
    :pswitch_117
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->bufferStart()V

    .line 194
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 195
    :pswitch_121
    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->k:Z

    if-eqz p2, :cond_1ec

    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->o:Z

    if-nez p2, :cond_1ec

    .line 196
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->resume()V

    .line 197
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 198
    iput-boolean v7, p0, Lcom/adcolony/sdk/c0;->k:Z

    goto/16 :goto_1ec

    .line 199
    :pswitch_135
    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->k:Z

    if-nez p2, :cond_1ec

    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->l:Z

    if-nez p2, :cond_1ec

    iget-boolean p2, p0, Lcom/adcolony/sdk/c0;->o:Z

    if-nez p2, :cond_1ec

    .line 200
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->pause()V

    .line 201
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 202
    iput-boolean v8, p0, Lcom/adcolony/sdk/c0;->k:Z

    .line 203
    iput-boolean v7, p0, Lcom/adcolony/sdk/c0;->l:Z

    goto/16 :goto_1ec

    .line 204
    :pswitch_14f
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2, v1}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->volumeChange(F)V

    .line 205
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 206
    :pswitch_159
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2, v2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->volumeChange(F)V

    .line 207
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto/16 :goto_1ec

    .line 208
    :pswitch_163
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    if-eqz p2, :cond_16c

    .line 209
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->skipped()V

    .line 211
    :cond_16c
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/adcolony/sdk/c0;->b()V

    goto/16 :goto_1ec

    .line 213
    :pswitch_174
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/adcolony/sdk/c0;->b()V

    goto/16 :goto_1ec

    .line 215
    :pswitch_17c
    iput-boolean v8, p0, Lcom/adcolony/sdk/c0;->o:Z

    .line 216
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->complete()V

    .line 217
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto :goto_1ec

    .line 218
    :pswitch_187
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->thirdQuartile()V

    .line 219
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto :goto_1ec

    .line 220
    :pswitch_190
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->midpoint()V

    .line 221
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto :goto_1ec

    .line 222
    :pswitch_199
    iget-object p2, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    invoke-virtual {p2}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->firstQuartile()V

    .line 223
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    goto :goto_1ec

    .line 224
    :pswitch_1a2
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->d:Lcom/iab/omid/library/adcolony/adsession/AdEvents;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/AdEvents;->impressionOccurred()V

    .line 225
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    if-eqz v0, :cond_1b8

    .line 226
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->e:Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1b2

    goto :goto_1b5

    :cond_1b2
    iget p2, p0, Lcom/adcolony/sdk/c0;->q:I

    int-to-float p2, p2

    :goto_1b5
    invoke-virtual {v0, p2, v1}, Lcom/iab/omid/library/adcolony/adsession/media/MediaEvents;->start(FF)V

    .line 228
    :cond_1b8
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V
    :try_end_1bb
    .catch Ljava/lang/IllegalStateException; {:try_start_3f .. :try_end_1bb} :catch_1be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_1bb} :catch_1bc

    goto :goto_1ec

    :catch_1bc
    move-exception p2

    goto :goto_1bf

    :catch_1be
    move-exception p2

    .line 305
    :goto_1bf
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "Recording IAB event for "

    .line 306
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    .line 307
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " caused "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object p1

    sget-object p2, Lcom/adcolony/sdk/u;->h:Lcom/adcolony/sdk/u;

    .line 309
    invoke-virtual {p1, p2}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :cond_1ec
    :goto_1ec
    return-void

    nop

    :sswitch_data_1ee
    .sparse-switch
        -0x73bed9ce -> :sswitch_d8
        -0x65ed745d -> :sswitch_cd
        -0x61aea3b8 -> :sswitch_c3
        -0x5185d186 -> :sswitch_bb
        -0x37b237d3 -> :sswitch_b0
        -0x26db6ea5 -> :sswitch_a6
        -0x23bacec7 -> :sswitch_9c
        -0x21ced359 -> :sswitch_94
        -0x146c6cb7 -> :sswitch_89
        0x35e57f -> :sswitch_81
        0x65825f6 -> :sswitch_78
        0x68ac462 -> :sswitch_6f
        0x22cb325d -> :sswitch_63
        0x310f8b3d -> :sswitch_57
        0x623d2162 -> :sswitch_4b
        0x71a42c5c -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_230
    .packed-switch 0x0
        :pswitch_1a2
        :pswitch_199
        :pswitch_190
        :pswitch_187
        :pswitch_17c
        :pswitch_174
        :pswitch_163
        :pswitch_163
        :pswitch_159
        :pswitch_14f
        :pswitch_135
        :pswitch_121
        :pswitch_117
        :pswitch_10d
        :pswitch_e9
        :pswitch_e9
    .end packed-switch
.end method

.method b()V
    .registers 2

    const-string v0, "viewability_ad_event"

    .line 2
    invoke-static {v0}, Lcom/adcolony/sdk/AdColony;->removeCustomMessageListener(Ljava/lang/String;)Z

    .line 3
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    invoke-virtual {v0}, Lcom/iab/omid/library/adcolony/adsession/AdSession;->finish()V

    const-string v0, "end_session"

    .line 4
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/c0;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    return-void
.end method

.method c()Lcom/iab/omid/library/adcolony/adsession/AdSession;
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/adcolony/sdk/c0;->c:Lcom/iab/omid/library/adcolony/adsession/AdSession;

    return-object v0
.end method

.method d()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/adcolony/sdk/c0;->h:I

    return v0
.end method

.method f()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/adcolony/sdk/c0;->l:Z

    return-void
.end method
