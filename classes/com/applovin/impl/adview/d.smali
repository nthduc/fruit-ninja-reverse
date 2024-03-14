.class Lcom/applovin/impl/adview/d;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/q;

.field private final c:Lcom/applovin/impl/adview/AdViewControllerImpl;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/adview/AdViewControllerImpl;Lcom/applovin/impl/sdk/j;)V
    .registers 3

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    iput-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/adview/AdViewControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    return-object p0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a()V

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->expandAd(Landroid/graphics/PointF;)V

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/adview/c;)V
    .registers 8

    const-string v0, "n"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "AdWebView"

    if-eqz v1, :cond_e3

    const-string v1, "load_type"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "external"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading new page externally: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/applovin/impl/adview/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/applovin/impl/sdk/j;)Z

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdViewEventListener()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/j;->c(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    goto/16 :goto_ea

    :cond_56
    const-string v3, "internal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading new page in WebView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    const-string v0, "bg_color"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/c;->setBackgroundColor(I)V

    goto :goto_ea

    :cond_8b
    const-string p1, "in_app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_de

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading new page in slide-up webview: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/j;->ab()Lcom/applovin/impl/sdk/a;

    move-result-object p1

    new-instance p2, Lcom/applovin/impl/adview/d$1;

    invoke-direct {p2, p0, v0}, Lcom/applovin/impl/adview/d$1;-><init>(Lcom/applovin/impl/adview/d;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/a;->a(Lcom/applovin/impl/sdk/utils/a;)V

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/applovin/sdk/AppLovinWebViewActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->t()Ljava/lang/String;

    move-result-object p2

    const-string v0, "sdk_key"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->F()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_ea

    :cond_de
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "Could not find load type in original uri"

    goto :goto_e7

    :cond_e3
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "Could not find url to load from query in original uri"

    :goto_e7
    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ea
    :goto_ea
    return-void
.end method

.method private a(Lcom/applovin/impl/a/a;Lcom/applovin/impl/adview/c;)V
    .registers 5

    invoke-virtual {p1}, Lcom/applovin/impl/a/a;->m()Lcom/applovin/impl/a/b;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/applovin/impl/a/b;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getSdk()Lcom/applovin/impl/sdk/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/impl/a/i;->a(Ljava/util/Set;Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p1}, Lcom/applovin/impl/a/b;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    :cond_1a
    return-void
.end method

.method private a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V
    .registers 6

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getParentView()Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    if-eqz v1, :cond_21

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getStatsManagerHelper()Lcom/applovin/impl/sdk/c/d;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/c/d;->b()V

    :cond_17
    iget-object v2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v2, v0, v1, p2, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->a(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;Landroid/graphics/PointF;)V

    goto :goto_39

    :cond_21
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z
    .registers 12

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing click on ad URL \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdWebView"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_11d

    instance-of v1, p1, Lcom/applovin/impl/adview/c;

    if-eqz v1, :cond_11d

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    check-cast p1, Lcom/applovin/impl/adview/c;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v6}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v6

    if-nez v6, :cond_46

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "Unable to process click, ad not found!"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_46
    const-string v7, "applovin"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    const-string v7, "com.applovin.sdk"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_df

    const-string p3, "/adservice/close_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_63

    invoke-direct {p0}, Lcom/applovin/impl/adview/d;->a()V

    goto/16 :goto_11d

    :cond_63
    const-string p3, "/adservice/expand_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_74

    invoke-virtual {p1}, Lcom/applovin/impl/adview/c;->getAndClearLastClickLocation()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/d;->a(Landroid/graphics/PointF;)V

    goto/16 :goto_11d

    :cond_74
    const-string p3, "/adservice/contract_ad"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_81

    invoke-direct {p0}, Lcom/applovin/impl/adview/d;->b()V

    goto/16 :goto_11d

    :cond_81
    const-string p3, "/adservice/no_op"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8a

    return v0

    :cond_8a
    const-string p3, "/adservice/load_url"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_97

    invoke-direct {p0, v1, p1}, Lcom/applovin/impl/adview/d;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/c;)V

    goto/16 :goto_11d

    :cond_97
    const-string p3, "/adservice/track_click_now"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    instance-of p2, v6, Lcom/applovin/impl/a/a;

    if-eqz p2, :cond_aa

    check-cast v6, Lcom/applovin/impl/a/a;

    :goto_a5
    invoke-direct {p0, v6, p1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/a/a;Lcom/applovin/impl/adview/c;)V

    goto/16 :goto_11d

    :cond_aa
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    goto :goto_11d

    :cond_b2
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11d

    :cond_df
    if-eqz p3, :cond_11b

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/g;->az()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/ad/g;->aA()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f5

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_102

    :cond_f5
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_10a

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_102

    goto :goto_10a

    :cond_102
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "URL is not whitelisted - bypassing click"

    invoke-virtual {p1, v2, p2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11d

    :cond_10a
    :goto_10a
    instance-of p2, v6, Lcom/applovin/impl/a/a;

    if-eqz p2, :cond_117

    check-cast v6, Lcom/applovin/impl/a/a;

    invoke-virtual {v6}, Lcom/applovin/impl/a/a;->aJ()Z

    move-result p2

    if-eqz p2, :cond_117

    goto :goto_a5

    :cond_117
    invoke-direct {p0, p1, v1}, Lcom/applovin/impl/adview/d;->a(Lcom/applovin/impl/adview/c;Landroid/net/Uri;)V

    goto :goto_11d

    :cond_11b
    const/4 p1, 0x0

    return p1

    :cond_11d
    :goto_11d
    return v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/d;)Lcom/applovin/impl/sdk/j;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    return-object p0
.end method

.method private b()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->contractAd()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AdWebView"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->onAdHtmlLoaded(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received error with error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with description \\\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\\\' for URL: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_3f

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->Y()Lcom/applovin/impl/sdk/c/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    sget-object p4, Lcom/applovin/impl/sdk/c/b;->z:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p4, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_3f
    iget-object p3, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/applovin/impl/adview/d;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->Y()Lcom/applovin/impl/sdk/c/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->A:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received HTTP error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "for url: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " and ad: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {v0, p2, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received SSL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/j;->Y()Lcom/applovin/impl/sdk/c/c;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    sget-object v0, Lcom/applovin/impl/sdk/c/b;->C:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, v0, p2}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;Ljava/lang/String;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object p3

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    iget-object p3, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for ad: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdWebView"

    invoke-virtual {p3, p2, p1}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render process gone for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Process did crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdWebView"

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getCurrentAd()Lcom/applovin/impl/sdk/ad/g;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/j;->Y()Lcom/applovin/impl/sdk/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/c/c;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/b;->B:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/c/c$b;->a(Lcom/applovin/impl/sdk/c/b;)Lcom/applovin/impl/sdk/c/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/c/c$b;->a()V

    :cond_43
    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->eM:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7e

    if-eqz p1, :cond_7c

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getAdWebView()Lcom/applovin/impl/adview/c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->destroy()V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result p2

    if-eqz p2, :cond_7c

    iget-object p2, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->attachNewAdView(Lcom/applovin/sdk/AppLovinAdSize;)V

    iget-object p1, p0, Lcom/applovin/impl/adview/d;->c:Lcom/applovin/impl/adview/AdViewControllerImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/adview/AdViewControllerImpl;->resume()V

    :cond_7c
    const/4 p1, 0x1

    return p1

    :cond_7e
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/adview/d;->a:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->bS:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    :goto_16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_25
    iget-object p1, p0, Lcom/applovin/impl/adview/d;->b:Lcom/applovin/impl/sdk/q;

    const-string p2, "AdWebView"

    const-string v0, "No url found for request"

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/adview/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
