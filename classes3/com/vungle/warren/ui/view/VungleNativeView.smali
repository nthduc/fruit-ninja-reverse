.class public Lcom/vungle/warren/ui/view/VungleNativeView;
.super Landroid/webkit/WebView;
.source "VungleNativeView.java"

# interfaces
.implements Lcom/vungle/warren/ui/contract/WebAdContract$WebAdView;
.implements Lcom/vungle/warren/VungleNativeAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.vungle.warren.ui.view.VungleNativeView"


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final config:Lcom/vungle/warren/AdConfig;

.field private isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

.field private final placementID:Ljava/lang/String;

.field private presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

.field presenterFactory:Lcom/vungle/warren/PresentationFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/PresentationFactory;Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/warren/AdConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/vungle/warren/PresentationFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    iput-object p5, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    .line 94
    iput-object p2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->config:Lcom/vungle/warren/AdConfig;

    .line 96
    iput-object p4, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/view/VungleNativeView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/lang/String;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vungle/warren/ui/view/VungleNativeView;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/vungle/warren/ui/view/VungleNativeView;Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vungle/warren/ui/view/VungleNativeView;Landroid/os/Bundle;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->prepare(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vungle/warren/ui/view/VungleNativeView;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private prepare(Landroid/os/Bundle;)V
    .registers 3

    .line 109
    invoke-static {p0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 111
    new-instance p1, Lcom/vungle/warren/ui/JavascriptBridge;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-direct {p1, v0}, Lcom/vungle/warren/ui/JavascriptBridge;-><init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V

    const-string v0, "Android"

    invoke-virtual {p0, p1, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-ge p1, v0, :cond_23

    const/4 p1, 0x1

    .line 122
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    goto :goto_2b

    .line 125
    :cond_23
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    :goto_2b
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 186
    invoke-interface {v0, v1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->handleExit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_27

    .line 189
    :cond_10
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_27

    .line 190
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    .line 191
    iput-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    .line 192
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v1, Lcom/vungle/warren/error/VungleException;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public destroyAdView()V
    .registers 2

    const-string v0, "Android"

    .line 198
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "about:blank"

    .line 199
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public finishDisplayingAd()V
    .registers 2

    const/4 v0, 0x1

    .line 131
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    return-void
.end method

.method public finishDisplayingAdInternal(Z)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    or-int/lit8 p1, p1, 0x2

    .line 139
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->stop(I)V

    goto :goto_29

    .line 140
    :cond_11
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz p1, :cond_29

    .line 141
    invoke-interface {p1}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    .line 143
    iget-object p1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->listener:Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;

    new-instance v0, Lcom/vungle/warren/error/VungleException;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lcom/vungle/warren/error/VungleException;-><init>(I)V

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter$EventListener;->onError(Lcom/vungle/warren/error/VungleException;Ljava/lang/String;)V

    .line 146
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->destroyAdView()V

    return-void
.end method

.method public getWebsiteUrl()Ljava/lang/String;
    .registers 2

    .line 180
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasWebView()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .line 268
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 270
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-nez v1, :cond_1c

    .line 271
    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->placementID:Ljava/lang/String;

    iget-object v2, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->config:Lcom/vungle/warren/AdConfig;

    new-instance v3, Lcom/vungle/warren/ui/view/VungleNativeView$1;

    invoke-direct {v3, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$1;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    new-instance v4, Lcom/vungle/warren/ui/view/VungleNativeView$2;

    invoke-direct {v4, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$2;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vungle/warren/PresentationFactory;->getNativeViewPresentation(Ljava/lang/String;Lcom/vungle/warren/AdConfig;Lcom/vungle/warren/ui/CloseDelegate;Lcom/vungle/warren/PresentationFactory$ViewCallback;)V

    .line 303
    :cond_1c
    new-instance v0, Lcom/vungle/warren/ui/view/VungleNativeView$3;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/VungleNativeView$3;-><init>(Lcom/vungle/warren/ui/view/VungleNativeView;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AdvertisementBus"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 315
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->resumeWeb()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 326
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 327
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 328
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenterFactory:Lcom/vungle/warren/PresentationFactory;

    if-eqz v0, :cond_17

    .line 329
    invoke-interface {v0}, Lcom/vungle/warren/PresentationFactory;->destroy()V

    .line 332
    :cond_17
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->pauseWeb()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 77
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 67
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 70
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    const-string v1, "Resuming Flex"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 320
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 321
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setAdVisibility(Z)V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/ExternalRouter;->launch(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 217
    sget-object v0, Lcom/vungle/warren/ui/view/VungleNativeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return-void
.end method

.method public pauseWeb()V
    .registers 1

    .line 243
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onPause()V

    return-void
.end method

.method public removeWebView()V
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 250
    instance-of v1, v0, Landroid/view/ViewManager;

    if-eqz v1, :cond_d

    .line 251
    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method public renderNativeView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public resumeWeb()V
    .registers 1

    .line 238
    invoke-virtual {p0}, Lcom/vungle/warren/ui/view/VungleNativeView;->onResume()V

    return-void
.end method

.method public setAdVisibility(Z)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->presenter:Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    if-eqz v0, :cond_8

    .line 157
    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;->setAdVisibility(Z)V

    goto :goto_11

    .line 159
    :cond_8
    iget-object v0, p0, Lcom/vungle/warren/ui/view/VungleNativeView;->isAdVisible:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_11
    return-void
.end method

.method public setImmersiveMode()V
    .registers 1

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    check-cast p1, Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;)V
    .registers 2
    .param p1    # Lcom/vungle/warren/ui/contract/WebAdContract$WebAdPresenter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public setVisibility(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x4

    .line 263
    :goto_5
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->setVisibility(I)V

    return-void
.end method

.method public showCloseButton()V
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VungleNativeView does not implement a close button"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "VungleNativeView does not implement a dialog."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public showWebsite(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-virtual {p0, p1}, Lcom/vungle/warren/ui/view/VungleNativeView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public updateWindow(Z)V
    .registers 2

    return-void
.end method
