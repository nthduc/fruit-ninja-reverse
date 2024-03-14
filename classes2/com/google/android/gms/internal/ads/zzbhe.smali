.class public final Lcom/google/android/gms/internal/ads/zzbhe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WebViewT::",
        "Lcom/google/android/gms/internal/ads/zzbhi;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhq;",
        ":",
        "Lcom/google/android/gms/internal/ads/zzbhs;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzeqh:Lcom/google/android/gms/internal/ads/zzbhj;

.field private final zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TWebViewT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhi;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TWebViewT;",
            "Lcom/google/android/gms/internal/ads/zzbhj;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqh:Lcom/google/android/gms/internal/ads/zzbhj;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzbgj;)Lcom/google/android/gms/internal/ads/zzbhe;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbhe<",
            "Lcom/google/android/gms/internal/ads/zzbgj;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbhh;-><init>(Lcom/google/android/gms/internal/ads/zzbgj;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>(Lcom/google/android/gms/internal/ads/zzbhi;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method


# virtual methods
.method public final getClickSignals(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_e

    const-string p1, "Click string is empty, not proceeding."

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object v1

    .line 14
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbhq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbhq;->zzabz()Lcom/google/android/gms/internal/ads/zzeg;

    move-result-object v0

    if-nez v0, :cond_1e

    const-string p1, "Signal utils is empty, ignoring."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object v1

    .line 18
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzca()Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v0

    if-nez v0, :cond_2a

    const-string p1, "Signals object is empty, ignoring."

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object v1

    .line 22
    :cond_2a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_38

    const-string p1, "Context is null, ignoring."

    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzei(Ljava/lang/String;)V

    return-object v1

    .line 25
    :cond_38
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    .line 26
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbhi;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbhs;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbhs;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqi:Lcom/google/android/gms/internal/ads/zzbhi;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzbhi;->zzzu()Landroid/app/Activity;

    move-result-object v3

    .line 27
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final notify(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "URL is empty, ignoring message"

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfe(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_c
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayu;->zzeba:Lcom/google/android/gms/internal/ads/zzdvo;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(Lcom/google/android/gms/internal/ads/zzbhe;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvo;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzfu(Ljava/lang/String;)V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhe;->zzeqh:Lcom/google/android/gms/internal/ads/zzbhj;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhj;->zzh(Landroid/net/Uri;)V

    return-void
.end method
