.class public interface abstract Lcom/google/android/gms/internal/ads/zzbgj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzk;
.implements Lcom/google/android/gms/internal/ads/zzajr;
.implements Lcom/google/android/gms/internal/ads/zzaks;
.implements Lcom/google/android/gms/internal/ads/zzbdu;
.implements Lcom/google/android/gms/internal/ads/zzbfy;
.implements Lcom/google/android/gms/internal/ads/zzbhi;
.implements Lcom/google/android/gms/internal/ads/zzbhl;
.implements Lcom/google/android/gms/internal/ads/zzbhp;
.implements Lcom/google/android/gms/internal/ads/zzbhq;
.implements Lcom/google/android/gms/internal/ads/zzbhs;
.implements Lcom/google/android/gms/internal/ads/zzbht;
.implements Lcom/google/android/gms/internal/ads/zzqu;


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public abstract getParent()Landroid/view/ViewParent;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public abstract getWidth()I
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract loadUrl(Ljava/lang/String;)V
.end method

.method public abstract measure(II)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setRequestedOrientation(I)V
.end method

.method public abstract setWebChromeClient(Landroid/webkit/WebChromeClient;)V
.end method

.method public abstract setWebViewClient(Landroid/webkit/WebViewClient;)V
.end method

.method public abstract zza(Landroid/view/ViewGroup;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract zza(Lcom/google/android/gms/ads/internal/overlay/zze;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzadn;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzads;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbhd;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzbhy;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdnw;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/ads/zzsc;)V
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/common/util/Predicate;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/Predicate<",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbfl;)V
.end method

.method public abstract zzabp()V
.end method

.method public abstract zzabq()V
.end method

.method public abstract zzabr()Landroid/content/Context;
.end method

.method public abstract zzabs()Lcom/google/android/gms/ads/internal/overlay/zze;
.end method

.method public abstract zzabt()Lcom/google/android/gms/ads/internal/overlay/zze;
.end method

.method public abstract zzabu()Lcom/google/android/gms/internal/ads/zzbhy;
.end method

.method public abstract zzabv()Ljava/lang/String;
.end method

.method public abstract zzabw()Lcom/google/android/gms/internal/ads/zzbhv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzabx()Landroid/webkit/WebViewClient;
.end method

.method public abstract zzaby()Z
.end method

.method public abstract zzabz()Lcom/google/android/gms/internal/ads/zzeg;
.end method

.method public abstract zzaca()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzacb()Z
.end method

.method public abstract zzacc()V
.end method

.method public abstract zzacd()Z
.end method

.method public abstract zzace()Z
.end method

.method public abstract zzacf()V
.end method

.method public abstract zzacg()V
.end method

.method public abstract zzach()Lcom/google/android/gms/internal/ads/zzads;
.end method

.method public abstract zzaci()V
.end method

.method public abstract zzacj()V
.end method

.method public abstract zzack()Lcom/google/android/gms/internal/ads/zzsc;
.end method

.method public abstract zzacl()Z
.end method

.method public abstract zzacm()Lcom/google/android/gms/internal/ads/zzsu;
.end method

.method public abstract zzacn()Z
.end method

.method public abstract zzal(Z)V
.end method

.method public abstract zzap(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
.end method

.method public abstract zzax(Z)V
.end method

.method public abstract zzb(Lcom/google/android/gms/ads/internal/overlay/zze;)V
.end method

.method public abstract zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzahq<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract zzba(Z)V
.end method

.method public abstract zzbb(Z)V
.end method

.method public abstract zzbc(Z)V
.end method

.method public abstract zzbw(Landroid/content/Context;)V
.end method

.method public abstract zzc(ZI)Z
.end method

.method public abstract zzdu(I)V
.end method

.method public abstract zzuy()V
.end method

.method public abstract zzzs()Lcom/google/android/gms/internal/ads/zzbhd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract zzzu()Landroid/app/Activity;
.end method

.method public abstract zzzv()Lcom/google/android/gms/ads/internal/zzb;
.end method

.method public abstract zzzw()Lcom/google/android/gms/internal/ads/zzabp;
.end method

.method public abstract zzzx()Lcom/google/android/gms/internal/ads/zzbbx;
.end method
