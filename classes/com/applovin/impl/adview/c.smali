.class public Lcom/applovin/impl/adview/c;
.super Lcom/applovin/impl/adview/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/c$a;
    }
.end annotation


# static fields
.field private static c:Lcom/applovin/impl/adview/c;

.field private static d:Landroid/webkit/WebView;

.field private static e:Landroid/webkit/WebView;

.field private static volatile f:Ljava/lang/String;

.field private static volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/applovin/impl/sdk/q;

.field private final b:Lcom/applovin/impl/sdk/j;

.field private h:Lcom/applovin/impl/sdk/c/d;

.field private i:Lcom/applovin/impl/sdk/ad/g;

.field private j:Z

.field private k:Z

.field private final l:Z


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;Z)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;Z)V
    .registers 6

    invoke-direct {p0, p3}, Lcom/applovin/impl/adview/g;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_57

    iput-object p2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/j;->v()Lcom/applovin/impl/sdk/q;

    move-result-object p3

    iput-object p3, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    iput-boolean p4, p0, Lcom/applovin/impl/adview/c;->l:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/c;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance p1, Lcom/applovin/impl/adview/b;

    invoke-direct {p1, p2}, Lcom/applovin/impl/adview/b;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/c;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, p3}, Lcom/applovin/impl/adview/c;->setHorizontalScrollBarEnabled(Z)V

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setScrollBarStyle(I)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->h()Z

    move-result p1

    if-eqz p1, :cond_46

    new-instance p1, Lcom/applovin/impl/adview/e;

    invoke-direct {p1, p2}, Lcom/applovin/impl/adview/e;-><init>(Lcom/applovin/impl/sdk/j;)V

    invoke-virtual {p1}, Lcom/applovin/impl/adview/e;->a()Landroid/webkit/WebViewRenderProcessClient;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    :cond_46
    new-instance p1, Lcom/applovin/impl/adview/c$2;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/c$2;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/applovin/impl/adview/c$3;

    invoke-direct {p1, p0}, Lcom/applovin/impl/adview/c$3;-><init>(Lcom/applovin/impl/adview/c;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .registers 1

    sput-object p0, Lcom/applovin/impl/adview/c;->e:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)Lcom/applovin/impl/adview/c;
    .registers 5

    sget-object v0, Lcom/applovin/impl/sdk/b/b;->eN:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    if-ne p0, v0, :cond_29

    sget-object p0, Lcom/applovin/impl/adview/c;->c:Lcom/applovin/impl/adview/c;

    if-nez p0, :cond_23

    new-instance p0, Lcom/applovin/impl/adview/c;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;Z)V

    sput-object p0, Lcom/applovin/impl/adview/c;->c:Lcom/applovin/impl/adview/c;

    goto :goto_26

    :cond_23
    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_26
    sget-object p0, Lcom/applovin/impl/adview/c;->c:Lcom/applovin/impl/adview/c;

    return-object p0

    :cond_29
    new-instance p0, Lcom/applovin/impl/adview/c;

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/adview/c;-><init>(Lcom/applovin/impl/adview/d;Lcom/applovin/impl/sdk/j;Landroid/content/Context;)V

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/c;)Lcom/applovin/impl/sdk/q;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/applovin/impl/adview/c;->k:Z

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/utils/r;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{SOURCE}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(J)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/adview/c;->g:Ljava/util/Map;

    if-nez v0, :cond_29

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_b

    goto :goto_29

    :cond_b
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/applovin/impl/adview/c$5;

    invoke-direct {v1, v0}, Lcom/applovin/impl/adview/c$5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :try_start_1f
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    invoke-static {}, Lcom/applovin/impl/adview/c;->getHttpHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_29
    :goto_29
    invoke-static {}, Lcom/applovin/impl/adview/c;->getHttpHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Map;)Ljava/util/Map;
    .registers 1

    sput-object p0, Lcom/applovin/impl/adview/c;->g:Ljava/util/Map;

    return-object p0
.end method

.method public static a()V
    .registers 1

    new-instance v0, Lcom/applovin/impl/adview/c$1;

    invoke-direct {v0}, Lcom/applovin/impl/adview/c$1;-><init>()V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    goto :goto_26

    :cond_12
    sget-object v0, Lcom/applovin/impl/sdk/b/d;->c:Lcom/applovin/impl/sdk/b/d;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/b/e;->b(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    new-instance v0, Lcom/applovin/impl/adview/c$4;

    invoke-direct {v0}, Lcom/applovin/impl/adview/c$4;-><init>()V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_26
    sget-object v0, Lcom/applovin/impl/sdk/b/d;->c:Lcom/applovin/impl/sdk/b/d;

    sget-object v1, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/applovin/impl/sdk/b/e;->a(Lcom/applovin/impl/sdk/b/d;Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method public static a(Lcom/applovin/impl/sdk/network/g;)V
    .registers 2

    new-instance v0, Lcom/applovin/impl/adview/c$6;

    invoke-direct {v0, p0}, Lcom/applovin/impl/adview/c$6;-><init>(Lcom/applovin/impl/sdk/network/g;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V
    .registers 13

    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "Rendering webview for VAST ad with resourceContents : "

    const-string v1, "AdWebView"

    if-eqz p3, :cond_2d

    iget-object p1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v3, "text/html"

    const-string v5, ""

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_2d
    sget-object p3, Lcom/applovin/impl/sdk/b/b;->eq:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {p4, p3}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p3, p1}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5e

    iget-object p1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v5, "text/html"

    const-string v7, ""

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    :cond_5e
    iget-object p2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Rendering webview for VAST ad with resourceURL : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    :goto_77
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 4

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->av()Z

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/impl/adview/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :cond_16
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ax()Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applovin/impl/adview/c;->setWebContentsDebuggingEnabled(Z)V

    :cond_26
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->ay()Lcom/applovin/impl/adview/v;

    move-result-object p1

    if-eqz p1, :cond_ee

    invoke-virtual {p0}, Lcom/applovin/impl/adview/c;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->b()Landroid/webkit/WebSettings$PluginState;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    :cond_39
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->c()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :cond_46
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->d()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_53

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    :cond_53
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->e()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    :cond_60
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->f()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_6d
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->g()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    :cond_7a
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->h()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    :cond_87
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->i()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    :cond_94
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->j()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    :cond_a1
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->k()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_ae

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    :cond_ae
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->l()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_bb

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    :cond_bb
    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->m()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_c8

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_c8
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->d()Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->a()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_db
    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->e()Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-virtual {p1}, Lcom/applovin/impl/adview/v;->n()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_ee

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setOffscreenPreRaster(Z)V

    :cond_ee
    return-void
.end method

.method static synthetic c()Landroid/webkit/WebView;
    .registers 1

    sget-object v0, Lcom/applovin/impl/adview/c;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/applovin/impl/adview/c;->f()V

    return-void
.end method

.method static synthetic e()Landroid/webkit/WebView;
    .registers 1

    sget-object v0, Lcom/applovin/impl/adview/c;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private static f()V
    .registers 3

    sget-object v0, Lcom/applovin/impl/adview/c;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/applovin/impl/sdk/j;->G()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/applovin/impl/adview/c;->d:Landroid/webkit/WebView;

    sget-object v0, Lcom/applovin/impl/adview/c;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/applovin/impl/adview/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/applovin/impl/adview/c$a;-><init>(Lcom/applovin/impl/adview/c$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_1a
    return-void
.end method

.method public static getHttpHeaders()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/applovin/impl/adview/c;->g:Ljava/util/Map;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/applovin/impl/adview/c;->g:Ljava/util/Map;

    goto :goto_b

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/applovin/impl/adview/c;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/g;)V
    .registers 13

    iget-boolean v0, p0, Lcom/applovin/impl/adview/c;->j:Z

    const-string v1, "AdWebView"

    if-nez v0, :cond_188

    iput-object p1, p0, Lcom/applovin/impl/adview/c;->i:Lcom/applovin/impl/sdk/ad/g;

    :try_start_8
    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/c;->b(Lcom/applovin/impl/sdk/ad/g;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/r;->a(Lcom/applovin/sdk/AppLovinAdSize;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/c;->setVisibility(I)V

    :cond_19
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/a;

    if-eqz v0, :cond_40

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/ad/a;

    iget-boolean v2, p0, Lcom/applovin/impl/adview/c;->k:Z

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/utils/r;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v4

    const-string v6, "text/html"

    const/4 v7, 0x0

    const-string v8, ""

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "AppLovinAd rendered"

    :goto_3b
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    :cond_40
    instance-of v0, p1, Lcom/applovin/impl/a/a;

    if-eqz v0, :cond_18d

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->m()Lcom/applovin/impl/a/b;

    move-result-object v2

    if-eqz v2, :cond_155

    invoke-virtual {v2}, Lcom/applovin/impl/a/b;->b()Lcom/applovin/impl/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/a/e;->b()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :cond_5c
    const-string v3, ""

    :goto_5e
    invoke-virtual {v2}, Lcom/applovin/impl/a/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->aK()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7c

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    goto :goto_7c

    :cond_73
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "Unable to load companion ad. No resources provided."

    :goto_77
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    :cond_7c
    :goto_7c
    invoke-virtual {v2}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/a/e$a;->b:Lcom/applovin/impl/a/e$a;

    if-ne v5, v6, :cond_a8

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "Rendering WebView for static VAST ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    sget-object v1, Lcom/applovin/impl/sdk/b/b;->ep:Lcom/applovin/impl/sdk/b/b;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/j;->a(Lcom/applovin/impl/sdk/b/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v5

    const-string v7, "text/html"

    const/4 v8, 0x0

    const-string v9, ""

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    :cond_a8
    invoke-virtual {v2}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v5

    sget-object v6, Lcom/applovin/impl/a/e$a;->d:Lcom/applovin/impl/a/e$a;

    if-ne v5, v6, :cond_100

    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-direct {p0, v0, v4}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c2

    move-object v7, v0

    goto :goto_c3

    :cond_c2
    move-object v7, v4

    :goto_c3
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering WebView for HTML VAST ad with resourceContents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v6

    const-string v8, "text/html"

    const/4 v9, 0x0

    const-string v10, ""

    :goto_e2
    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/applovin/impl/adview/c;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_18d

    :cond_e8
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18d

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v4, "Preparing to load HTML VAST ad resourceUri"

    invoke-virtual {v2, v1, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    :goto_fb
    invoke-direct {p0, v3, v1, v0, v2}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/impl/sdk/j;)V

    goto/16 :goto_18d

    :cond_100
    invoke-virtual {v2}, Lcom/applovin/impl/a/e;->a()Lcom/applovin/impl/a/e$a;

    move-result-object v2

    sget-object v5, Lcom/applovin/impl/a/e$a;->c:Lcom/applovin/impl/a/e$a;

    if-ne v2, v5, :cond_14f

    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v4, "Preparing to load iFrame VAST ad resourceUri"

    invoke-virtual {v2, v1, v4}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/adview/c;->b:Lcom/applovin/impl/sdk/j;

    goto :goto_fb

    :cond_11c
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18d

    invoke-direct {p0, v0, v4}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/o;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12e

    move-object v7, v0

    goto :goto_12f

    :cond_12e
    move-object v7, v4

    :goto_12f
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rendering WebView for iFrame VAST ad with resourceContents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->aw()Ljava/lang/String;

    move-result-object v6

    const-string v8, "text/html"

    const/4 v9, 0x0

    const-string v10, ""

    goto :goto_e2

    :cond_14f
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "Failed to render VAST companion ad of invalid type"

    goto/16 :goto_77

    :cond_155
    iget-object v0, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "No companion ad provided."
    :try_end_159
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_159} :catch_15b

    goto/16 :goto_3b

    :catch_15b
    move-exception v0

    if-eqz p1, :cond_167

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->getAdIdNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_169

    :cond_167
    const-string p1, "null"

    :goto_169
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to render AppLovin ad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_188
    const-string p1, "Ad can not be loaded in a destroyed webview"

    invoke-static {v1, p1}, Lcom/applovin/impl/sdk/q;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18d
    :goto_18d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/c;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    const-string v0, "AdWebView"

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Forwarding \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" to ad template"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/applovin/impl/adview/c;->loadUrl(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_2e

    :catch_21
    move-exception p1

    iget-object v1, p0, Lcom/applovin/impl/adview/c;->a:Lcom/applovin/impl/sdk/q;

    const-string v2, "Unable to forward to template"

    invoke-virtual {v1, v0, v2, p1}, Lcom/applovin/impl/sdk/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_2e

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/impl/adview/c;->l:Z

    return v0
.end method

.method public computeScroll()V
    .registers 1

    return-void
.end method

.method public destroy()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/applovin/impl/adview/c;->j:Z

    invoke-super {p0}, Lcom/applovin/impl/adview/g;->destroy()V

    return-void
.end method

.method getCurrentAd()Lcom/applovin/impl/sdk/ad/g;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->i:Lcom/applovin/impl/sdk/ad/g;

    return-object v0
.end method

.method public getStatsManagerHelper()Lcom/applovin/impl/sdk/c/d;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/c;->h:Lcom/applovin/impl/sdk/c/d;

    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    return-void
.end method

.method public scrollTo(II)V
    .registers 3

    return-void
.end method

.method public setIsShownOutOfContext(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/adview/c;->k:Z

    return-void
.end method

.method public setStatsManagerHelper(Lcom/applovin/impl/sdk/c/d;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/c;->h:Lcom/applovin/impl/sdk/c/d;

    return-void
.end method
