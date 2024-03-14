.class final synthetic Lcom/google/android/gms/internal/ads/zzcjy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzux;


# instance fields
.field private final zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcjv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjy;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjy;->zzgfm:Lcom/google/android/gms/internal/ads/zzcjv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjv;->zzaob()V

    return-void
.end method
