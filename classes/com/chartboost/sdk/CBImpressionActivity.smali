.class public Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field final a:Lcom/chartboost/sdk/Tracking/a;

.field final b:Landroid/os/Handler;

.field final c:Lcom/chartboost/sdk/d;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 5
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/i;->x:Lcom/chartboost/sdk/Tracking/a;

    goto :goto_12

    :cond_11
    move-object v0, v1

    :goto_12
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    .line 6
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/i;->y:Landroid/os/Handler;

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    .line 7
    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/chartboost/sdk/i;->m()Lcom/chartboost/sdk/i;

    move-result-object v0

    iget-object v1, v0, Lcom/chartboost/sdk/i;->z:Lcom/chartboost/sdk/d;

    :cond_30
    iput-object v1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_39

    const-string v0, "CBImpressionActivity"

    const-string v1, "The activity passed down is not hardware accelerated, so Chartboost cannot show ads"

    .line 6
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 9
    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 11
    :cond_2d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception v0

    .line 15
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onAttachedToWindow"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->h()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2
    :cond_c
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    .line 5
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_18
    :goto_18
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "CBImpressionActivity"

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "isChartboost"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_53

    :cond_18
    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Tracking/a;

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->b:Landroid/os/Handler;

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-nez p1, :cond_25

    goto :goto_53

    :cond_25
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 15
    :cond_32
    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {p1, p0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 16
    new-instance p1, Landroid/widget/RelativeLayout;

    invoke-direct {p1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const-string p1, "Impression Activity onCreate() called"

    .line 17
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :try_start_44
    iget-object p1, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {p1}, Lcom/chartboost/sdk/d;->i()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_49} :catch_4a

    goto :goto_52

    :catch_4a
    move-exception p1

    .line 22
    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v1, "onCreate"

    invoke-static {v0, v1, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_52
    return-void

    :cond_53
    :goto_53
    const-string p1, "This activity cannot be called from outside chartboost SDK"

    .line 23
    invoke-static {v0, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->b(Landroid/app/Activity;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 6
    :cond_9
    :try_start_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_1a

    :catchall_d
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 7
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    move-exception v0

    .line 9
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onDestroy"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method

.method protected onPause()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->j()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 7
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onPause"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method protected onResume()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_1a

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 4
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->k()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 7
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onResume"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 10
    :cond_1a
    :goto_1a
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->setActivityAttrs(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStart()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->c(Landroid/app/Activity;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    .line 6
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onStart"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_15
    :goto_15
    return-void
.end method

.method protected onStop()V
    .registers 4

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->c:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->d(Landroid/app/Activity;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception v0

    .line 6
    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    const-string v2, "onStop"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_15
    :goto_15
    return-void
.end method
