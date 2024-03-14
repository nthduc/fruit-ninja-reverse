.class final Lcom/google/android/gms/internal/ads/zzrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zzbte:Lcom/google/android/gms/internal/ads/zzrk;

.field private zzbts:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzbtt:Lcom/google/android/gms/internal/ads/zzre;

.field final synthetic zzbtu:Landroid/webkit/WebView;

.field final synthetic zzbtv:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzre;Landroid/webkit/WebView;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbte:Lcom/google/android/gms/internal/ads/zzrk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtt:Lcom/google/android/gms/internal/ads/zzre;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtu:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtv:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzrl;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzrl;-><init>(Lcom/google/android/gms/internal/ads/zzrm;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbts:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtu:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtu:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbts:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    return-void

    .line 7
    :catch_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrm;->zzbts:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
