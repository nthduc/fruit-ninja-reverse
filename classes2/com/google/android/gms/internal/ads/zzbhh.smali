.class final synthetic Lcom/google/android/gms/internal/ads/zzbhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbhj;


# instance fields
.field private final zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final zzh(Landroid/net/Uri;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhh;->zzeqk:Lcom/google/android/gms/internal/ads/zzbgj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabw()Lcom/google/android/gms/internal/ads/zzbhv;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p1, "Unable to pass GMSG, no AdWebViewClient for AdWebView!"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzayp;->zzfc(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_e
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbhv;->zzh(Landroid/net/Uri;)V

    return-void
.end method
