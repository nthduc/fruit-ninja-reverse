.class public abstract Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field private a:Lcom/iab/omid/library/ironsrc/e/b;

.field private b:Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

.field private c:Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;

.field private d:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->h()V

    new-instance v0, Lcom/iab/omid/library/ironsrc/e/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iab/omid/library/ironsrc/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/ironsrc/e/b;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(F)V
    .registers 4

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;F)V

    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    new-instance v0, Lcom/iab/omid/library/ironsrc/e/b;

    invoke-direct {v0, p1}, Lcom/iab/omid/library/ironsrc/e/b;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/ironsrc/e/b;

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/adsession/AdEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;)V
    .registers 4

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionConfiguration;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/adsession/ErrorType;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;Lcom/iab/omid/library/ironsrc/adsession/ErrorType;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/adsession/a;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a(Lcom/iab/omid/library/ironsrc/adsession/a;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;Lorg/json/JSONObject;)V

    return-void
.end method

.method protected a(Lcom/iab/omid/library/ironsrc/adsession/a;Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;Lorg/json/JSONObject;)V
    .registers 10

    invoke-virtual {p1}, Lcom/iab/omid/library/ironsrc/adsession/a;->getAdSessionId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "app"

    const-string v0, "environment"

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getAdSessionContextType()Lcom/iab/omid/library/ironsrc/adsession/AdSessionContextType;

    move-result-object v0

    const-string v1, "adSessionType"

    invoke-static {v3, v1, v0}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/d/a;->d()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, v0}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, v0}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/ironsrc/adsession/Partner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/ironsrc/adsession/Partner;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {v0, v4, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getPartner()Lcom/iab/omid/library/ironsrc/adsession/Partner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/ironsrc/adsession/Partner;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {v0, v4, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, v0}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.2.22-Ironsrc"

    invoke-static {v0, v1, v4}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/c;->a()Lcom/iab/omid/library/ironsrc/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iab/omid/library/ironsrc/b/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {v0, v4, v1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, p1, v0}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8d

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getCustomReferenceData()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/AdSessionContext;->getVerificationScriptResources()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/ironsrc/adsession/VerificationScriptResource;

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/VerificationScriptResource;->getVendorKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/iab/omid/library/ironsrc/adsession/VerificationScriptResource;->getVerificationParameters()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, Lcom/iab/omid/library/ironsrc/d/b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9a

    :cond_b2
    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;)V
    .registers 2

    iput-object p1, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_15

    sget-object p2, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/ironsrc/b/d;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_b

    const-string p1, "foregrounded"

    goto :goto_d

    :cond_b
    const-string p1, "backgrounded"

    :goto_d
    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/iab/omid/library/ironsrc/b/d;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/ironsrc/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/e/b;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .registers 7

    iget-wide v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->e:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_1b

    iget-object p2, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    sget-object p3, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    if-eq p2, p3, :cond_1b

    sget-object p2, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/iab/omid/library/ironsrc/b/d;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public c()Lcom/iab/omid/library/ironsrc/adsession/AdEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->b:Lcom/iab/omid/library/ironsrc/adsession/AdEvents;

    return-object v0
.end method

.method public d()Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->c:Lcom/iab/omid/library/ironsrc/adsession/video/VideoEvents;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/ironsrc/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/e/b;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public f()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/b/d;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/ironsrc/b/d;->a()Lcom/iab/omid/library/ironsrc/b/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/ironsrc/b/d;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->a:Lcom/iab/omid/library/ironsrc/e/b;

    invoke-virtual {v0}, Lcom/iab/omid/library/ironsrc/e/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/iab/omid/library/ironsrc/d/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->e:J

    sget-object v0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/ironsrc/publisher/AdSessionStatePublisher$a;

    return-void
.end method
