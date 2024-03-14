.class public final Lcom/google/android/gms/internal/ads/zzcfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

.field private zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjt;Lcom/google/android/gms/internal/ads/zzcil;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private static zza(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 3

    .line 16
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_4

    .line 19
    :catch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpt()Lcom/google/android/gms/internal/ads/zzbbg;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbg;->zzc(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;
    .registers 7
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbgv;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbx:Lcom/google/android/gms/internal/ads/zzcjt;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpk()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcjt;->zzc(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    const-string v2, "policy_validator"

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcft;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcft;-><init>(Lcom/google/android/gms/internal/ads/zzcfu;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcfw;-><init>(Lcom/google/android/gms/internal/ads/zzcfu;Landroid/view/WindowManager;Landroid/view/View;)V

    const-string v2, "/hideValidatorOverlay"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzahu;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzaqd;)V

    const-string v2, "/open"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfv;

    invoke-direct {v3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfv;-><init>(Lcom/google/android/gms/internal/ads/zzcfu;Landroid/view/View;Landroid/view/WindowManager;)V

    const-string p1, "/loadNativeAdPolicyViolations"

    invoke-virtual {v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcfy;->zzdfl:Lcom/google/android/gms/internal/ads/zzahq;

    const-string v2, "/showValidatorOverlay"

    invoke-virtual {p1, p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Landroid/view/View;Landroid/view/WindowManager;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 16

    .line 21
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcga;

    invoke-direct {v1, p0, p4}, Lcom/google/android/gms/internal/ads/zzcga;-><init>(Lcom/google/android/gms/internal/ads/zzcfu;Ljava/util/Map;)V

    .line 22
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhv;->zza(Lcom/google/android/gms/internal/ads/zzbhu;)V

    if-nez p4, :cond_f

    return-void

    .line 26
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "validator_width"

    .line 28
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcya:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfu;->zza(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "validator_height"

    .line 34
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzabb;->zzcyb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 37
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 38
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfu;->zza(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "validator_x"

    .line 39
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfu;->zza(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "validator_y"

    .line 40
    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzcfu;->zza(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 41
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbhy;->zzq(II)Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzbhy;)V

    .line 43
    :try_start_6b
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcyc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 49
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabb;->zzcyd:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 52
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v2

    .line 53
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_a1
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_a1} :catch_a1

    .line 56
    :catch_a1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbau;->zzyk()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 57
    iput v3, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 58
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 59
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p2, v1, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "orientation"

    .line 60
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_f8

    const-string v2, "1"

    .line 63
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d8

    const-string v2, "2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    goto :goto_d8

    .line 65
    :cond_d5
    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_da

    .line 64
    :cond_d8
    :goto_d8
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    :goto_da
    sub-int/2addr v1, v0

    move v9, v1

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfx;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzcfx;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_f8

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_f8

    .line 69
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_f8
    const-string p1, "overlay_url"

    .line 70
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_109

    .line 72
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/ads/zzbgj;->loadUrl(Ljava/lang/String;)V

    :cond_109
    return-void
.end method

.method final synthetic zza(Landroid/view/WindowManager;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 6

    const-string p4, "Hide native ad policy validator overlay."

    .line 79
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzayp;->zzef(Ljava/lang/String;)V

    .line 80
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p4

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    if-eqz p4, :cond_1f

    .line 82
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->getView()Landroid/view/View;

    move-result-object p4

    invoke-interface {p1, p4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 83
    :cond_1f
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbgj;->destroy()V

    .line 84
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p2, :cond_37

    if-eqz p1, :cond_37

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result p2

    if-eqz p2, :cond_37

    .line 87
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgcc:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_37
    return-void
.end method

.method final synthetic zzb(Ljava/util/Map;Z)V
    .registers 5

    .line 74
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "validatorHtmlLoaded"

    .line 75
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 76
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzbgj;Ljava/util/Map;)V
    .registers 4

    .line 89
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfu;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
