.class final Lcom/google/android/gms/internal/ads/zzbio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# static fields
.field private static zzeqy:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InvokeJavascriptWorkaround.class"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbio;->zzb(Landroid/webkit/WebView;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_11
    const-string v0, "javascript:"

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_27

    :cond_22
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private static zzb(Landroid/webkit/WebView;)Z
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/zzbio;

    monitor-enter v0

    .line 3
    :try_start_3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbio;->zzeqy:Ljava/lang/Boolean;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-nez v1, :cond_1c

    :try_start_7
    const-string v1, "(function(){})()"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p0, 0x1

    .line 6
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeqy:Ljava/lang/Boolean;
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_14} :catch_15
    .catchall {:try_start_7 .. :try_end_14} :catchall_24

    goto :goto_1c

    :catch_15
    const/4 p0, 0x0

    .line 9
    :try_start_16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeqy:Ljava/lang/Boolean;

    .line 10
    :cond_1c
    :goto_1c
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbio;->zzeqy:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_24
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_16 .. :try_end_26} :catchall_24

    throw p0
.end method
