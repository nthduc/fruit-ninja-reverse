.class public final Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/iab/omid/library/adcolony/adsession/Partner;

.field private final b:Landroid/webkit/WebView;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final h:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;)V
    .registers 9
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/adcolony/adsession/Partner;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->a:Lcom/iab/omid/library/adcolony/adsession/Partner;

    iput-object p2, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->h:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;

    if-eqz p4, :cond_3e

    iget-object p1, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->c:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_3e
    iput-object p5, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->f:Ljava/lang/String;

    return-void
.end method

.method public static createHtmlAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;
    .registers 14
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_13

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_13
    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    sget-object v9, Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;)V

    return-object v0
.end method

.method public static createJavascriptAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;
    .registers 14
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WebView is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_13

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_13
    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    sget-object v9, Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;)V

    return-object v0
.end method

.method public static createNativeAdSessionContext(Lcom/iab/omid/library/adcolony/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;
    .registers 15
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/adcolony/adsession/Partner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;"
        }
    .end annotation

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_18

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p4, v0, v1}, Lcom/iab/omid/library/adcolony/d/e;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_18
    new-instance v0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;

    sget-object v9, Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/adcolony/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;)V

    return-object v0
.end method


# virtual methods
.method public getAdSessionContextType()Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->h:Lcom/iab/omid/library/adcolony/adsession/AdSessionContextType;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomReferenceData()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getInjectedResourcesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOmidJsScriptContent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPartner()Lcom/iab/omid/library/adcolony/adsession/Partner;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->a:Lcom/iab/omid/library/adcolony/adsession/Partner;

    return-object v0
.end method

.method public getVerificationScriptResources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/adcolony/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/adcolony/adsession/AdSessionContext;->b:Landroid/webkit/WebView;

    return-object v0
.end method
