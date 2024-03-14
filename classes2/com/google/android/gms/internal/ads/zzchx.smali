.class public final Lcom/google/android/gms/internal/ads/zzchx;
.super Lcom/google/android/gms/internal/ads/zzajd;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzadn;


# instance fields
.field private zzepb:Z

.field private zzfzs:Lcom/google/android/gms/internal/ads/zzyo;

.field private zzfzx:Landroid/view/View;

.field private zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

.field private zzgeb:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdx;Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajd;-><init>()V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcei;->zzame()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcei;->getVideoController()Lcom/google/android/gms/internal/ads/zzyo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzs:Lcom/google/android/gms/internal/ads/zzyo;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzepb:Z

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgeb:Z

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcei;->zzamf()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcei;->zzamf()Lcom/google/android/gms/internal/ads/zzbgj;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzbgj;->zza(Lcom/google/android/gms/internal/ads/zzadn;)V

    :cond_23
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzajf;I)V
    .registers 2

    .line 82
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzajf;->zzdc(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 85
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzanp()V
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 65
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 66
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 67
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    return-void
.end method

.method private final zzanq()V
    .registers 6

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    if-eqz v1, :cond_19

    .line 77
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    .line 79
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzz(Landroid/view/View;)Z

    move-result v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzcdx;->zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_19
    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 54
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchx;->zzanp()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_f

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbqo;->destroy()V

    :cond_f
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    .line 59
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    .line 60
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzs:Lcom/google/android/gms/internal/ads/zzyo;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzepb:Z

    return-void
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzyo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzepb:Z

    if-eqz v0, :cond_10

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzs:Lcom/google/android/gms/internal/ads/zzyo;

    return-object v0
.end method

.method public final onGlobalLayout()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchx;->zzanq()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    .line 71
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchx;->zzanq()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzajf;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzepb:Z

    if-eqz v0, :cond_13

    const-string p1, "Instream ad can not be shown after destroy()."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 13
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzchx;->zza(Lcom/google/android/gms/internal/ads/zzajf;I)V

    return-void

    .line 15
    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzs:Lcom/google/android/gms/internal/ads/zzyo;

    if-nez v0, :cond_1c

    goto :goto_5e

    .line 21
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgeb:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    const-string p1, "Instream ad should not be used again."

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    .line 23
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzchx;->zza(Lcom/google/android/gms/internal/ads/zzajf;I)V

    return-void

    .line 25
    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgeb:Z

    .line 26
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchx;->zzanp()V

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlo()Lcom/google/android/gms/internal/ads/zzbco;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzchx;->zzanq()V

    .line 33
    :try_start_53
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzajf;->zztc()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 36
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5e
    :goto_5e
    const-string p1, "Instream internal error: "

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzfzx:Landroid/view/View;

    if-nez v0, :cond_67

    const-string v0, "can not get video view."

    goto :goto_69

    :cond_67
    const-string v0, "can not get video controller."

    :goto_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_7a

    :cond_74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    .line 18
    :goto_7a
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 19
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzchx;->zza(Lcom/google/android/gms/internal/ads/zzajf;I)V

    return-void
.end method

.method final synthetic zzanr()V
    .registers 3

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchx;->destroy()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 90
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzayp;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 38
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzchz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzchz;-><init>(Lcom/google/android/gms/internal/ads/zzchx;)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzchx;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzajf;)V

    return-void
.end method

.method public final zzsf()V
    .registers 3

    .line 73
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcia;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcia;-><init>(Lcom/google/android/gms/internal/ads/zzchx;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzsw()Lcom/google/android/gms/internal/ads/zzadz;
    .registers 3

    const-string v0, "#008 Must be called on the main UI thread."

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzepb:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-object v1

    .line 51
    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalx()Lcom/google/android/gms/internal/ads/zzced;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchx;->zzgaw:Lcom/google/android/gms/internal/ads/zzcdx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdx;->zzalx()Lcom/google/android/gms/internal/ads/zzced;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzced;->zzsw()Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v0

    return-object v0

    :cond_25
    return-object v1
.end method
