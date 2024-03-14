.class final synthetic Lcom/google/android/gms/internal/ads/zzawb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdwx:Lcom/google/android/gms/internal/ads/zzavy;

.field private final zzdwy:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzavy;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawb;->zzdwx:Lcom/google/android/gms/internal/ads/zzavy;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawb;->zzdwy:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawb;->zzdwx:Lcom/google/android/gms/internal/ads/zzavy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawb;->zzdwy:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzavy;->zza(Landroid/graphics/Bitmap;)V

    return-void
.end method
