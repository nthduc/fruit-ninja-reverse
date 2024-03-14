.class public Lcom/google/android/gms/internal/ads/zzbhn;
.super Lcom/google/android/gms/internal/ads/zzbgi;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgi;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzts;Z)V

    return-void
.end method


# virtual methods
.method protected final zza(Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .registers 6
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .line 3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbgj;

    if-nez v0, :cond_b

    const-string p1, "Tried to intercept request from a WebView that wasn\'t an AdWebView."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgj;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    if-eqz v0, :cond_17

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhn;->zzenb:Lcom/google/android/gms/internal/ads/zzawl;

    const/4 v1, 0x1

    invoke-interface {v0, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzawl;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    .line 9
    :cond_17
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mraid.js"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    if-nez p3, :cond_2e

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 13
    :cond_2e
    invoke-super {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbgi;->zzd(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 14
    :cond_33
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object p2

    if-eqz p2, :cond_40

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbhv;->zzuu()V

    .line 17
    :cond_40
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabu()Lcom/google/android/gms/internal/ads/zzbhy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbhy;->zzadb()Z

    move-result p2

    if-eqz p2, :cond_57

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcmz:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/String;

    goto :goto_76

    .line 21
    :cond_57
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacb()Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 22
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcmy:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/String;

    goto :goto_76

    .line 25
    :cond_6a
    sget-object p2, Lcom/google/android/gms/internal/ads/zzabb;->zzcmx:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p2

    .line 27
    check-cast p2, Ljava/lang/String;

    .line 28
    :goto_76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    .line 29
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzzx()Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    .line 30
    invoke-static {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzayu;->zzd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
