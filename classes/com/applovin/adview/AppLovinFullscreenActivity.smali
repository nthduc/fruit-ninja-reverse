.class public Lcom/applovin/adview/AppLovinFullscreenActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/applovin/impl/adview/j;


# static fields
.field public static parentInterstitialWrapper:Lcom/applovin/impl/adview/o;


# instance fields
.field private a:Lcom/applovin/impl/sdk/j;

.field private b:Lcom/applovin/impl/adview/activity/b/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Lcom/applovin/impl/adview/activity/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->f()V

    goto :goto_b

    :cond_8
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->finish()V

    :goto_b
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->j()V

    :cond_7
    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/c;->a(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/c;

    move-result-object v0

    const-string v1, "applovin.sdk.is_test_environment"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/utils/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1a
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/activity/b/a;->a(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/applovin/adview/AppLovinFullscreenActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.applovin.interstitial.sdk_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v1, p0}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iget-object v0, v0, Lcom/applovin/sdk/AppLovinSdk;->coreSdk:Lcom/applovin/impl/sdk/j;

    iput-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->a:Lcom/applovin/impl/sdk/j;

    sget-object v0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    if-eqz v0, :cond_63

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->b()Lcom/applovin/impl/sdk/ad/g;

    move-result-object p1

    sget-object v0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/o;->e()Lcom/applovin/sdk/AppLovinAdClickListener;

    move-result-object v0

    sget-object v1, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    invoke-virtual {v1}, Lcom/applovin/impl/adview/o;->d()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    move-result-object v1

    sget-object v2, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    invoke-virtual {v2}, Lcom/applovin/impl/adview/o;->c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/applovin/adview/AppLovinFullscreenActivity;->present(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    goto :goto_89

    :cond_63
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applovin/impl/adview/activity/FullscreenAdService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lcom/applovin/impl/adview/activity/a;

    iget-object v2, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->a:Lcom/applovin/impl/sdk/j;

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/adview/activity/a;-><init>(Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;)V

    iput-object v1, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->d:Lcom/applovin/impl/adview/activity/a;

    iget-object v1, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->d:Lcom/applovin/impl/adview/activity/a;

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/adview/AppLovinFullscreenActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-static {}, Lcom/applovin/impl/sdk/utils/g;->g()Z

    move-result p1

    if-eqz p1, :cond_89

    :try_start_7e
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_89} :catch_89

    :catch_89
    :cond_89
    :goto_89
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/adview/o;

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->d:Lcom/applovin/impl/adview/activity/a;

    if-eqz v0, :cond_c

    :try_start_7
    invoke-virtual {p0, v0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    nop

    :cond_c
    :goto_c
    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->h()V

    :cond_13
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/adview/activity/b/a;->a(ILandroid/view/KeyEvent;)V

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->i()V

    :cond_7
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->e()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->d()V

    :cond_12
    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->g()V

    :cond_a
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/adview/activity/b/a;->c(Z)V

    :cond_12
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lcom/applovin/adview/AppLovinFullscreenActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_21
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public present(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 13

    instance-of v0, p1, Lcom/applovin/impl/a/a;

    if-eqz v0, :cond_14

    new-instance v7, Lcom/applovin/impl/adview/activity/b/c;

    iget-object v3, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->a:Lcom/applovin/impl/sdk/j;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/adview/activity/b/c;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    :goto_11
    iput-object v7, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    goto :goto_36

    :cond_14
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/g;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v7, Lcom/applovin/impl/adview/activity/b/d;

    iget-object v3, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->a:Lcom/applovin/impl/sdk/j;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/adview/activity/b/d;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    goto :goto_11

    :cond_28
    new-instance v7, Lcom/applovin/impl/adview/activity/b/b;

    iget-object v3, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->a:Lcom/applovin/impl/sdk/j;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/adview/activity/b/b;-><init>(Lcom/applovin/impl/sdk/ad/g;Lcom/applovin/adview/AppLovinFullscreenActivity;Lcom/applovin/impl/sdk/j;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    goto :goto_11

    :goto_36
    iget-object v0, p0, Lcom/applovin/adview/AppLovinFullscreenActivity;->b:Lcom/applovin/impl/adview/activity/b/a;

    invoke-virtual {v0}, Lcom/applovin/impl/adview/activity/b/a;->c()V

    return-void
.end method
