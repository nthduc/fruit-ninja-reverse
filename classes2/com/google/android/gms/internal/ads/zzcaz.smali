.class public final Lcom/google/android/gms/internal/ads/zzcaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsu;


# instance fields
.field private zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaz;->zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaz;->zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 13
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvp;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaz;->zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;

    if-eqz v0, :cond_7

    .line 16
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdvp;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_7
    return-void
.end method

.method public final zza(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .registers 4

    .line 2
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdvp;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaz;->zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, " Failed to initialize the internal ArWebView: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaz;->zzfwp:Lcom/google/android/gms/internal/ads/zzdvp;

    if-nez v0, :cond_a

    const-string p1, "ArWebView is not initialized."

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdvp;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
