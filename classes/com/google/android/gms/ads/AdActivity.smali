.class public final Lcom/google/android/gms/ads/AdActivity;
.super Landroid/app/Activity;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# static fields
.field public static final CLASS_NAME:Ljava/lang/String; = "com.google.android.gms.ads.AdActivity"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final SIMPLE_CLASS_NAME:Ljava/lang/String; = "AdActivity"
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field


# instance fields
.field private zzacp:Lcom/google/android/gms/internal/ads/zzaqy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final zzdq()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_e

    .line 71
    :try_start_4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->zzdq()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 74
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzaqy;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 97
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackPressed()V
    .registers 4

    const/4 v0, 0x1

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v1, :cond_12

    .line 87
    iget-object v1, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzaqy;->zzut()Z

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_12

    :catch_c
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 90
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_17
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;->zzad(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 104
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpu()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzvx;->zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzaqy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    const-string v1, "#007 Could not call remote method."

    if-nez v0, :cond_1b

    const/4 p1, 0x0

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void

    .line 9
    :cond_1b
    :try_start_1b
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;->onCreate(Landroid/os/Bundle;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p1

    .line 12
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onDestroy()V
    .registers 3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_10

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onDestroy()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :cond_10
    :goto_10
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected final onPause()V
    .registers 3

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_13

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onPause()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 43
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 45
    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected final onRestart()V
    .registers 3

    .line 15
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 16
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_c

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onRestart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 20
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onResume()V
    .registers 3

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 32
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onResume()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 36
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_13

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 51
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 53
    :cond_13
    :goto_13
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onStart()V
    .registers 3

    .line 23
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 24
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onStart()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 28
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    return-void
.end method

.method protected final onStop()V
    .registers 3

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    if-eqz v0, :cond_13

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/ads/AdActivity;->zzacp:Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaqy;->onStop()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_13

    :catch_a
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 59
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbbq;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdActivity;->finish()V

    .line 61
    :cond_13
    :goto_13
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final setContentView(I)V
    .registers 2

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .line 82
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/ads/AdActivity;->zzdq()V

    return-void
.end method
