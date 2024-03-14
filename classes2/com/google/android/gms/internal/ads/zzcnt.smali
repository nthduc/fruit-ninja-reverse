.class final synthetic Lcom/google/android/gms/internal/ads/zzcnt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

.field private final zzgid:Lcom/google/android/gms/internal/ads/zzait;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;Lcom/google/android/gms/internal/ads/zzait;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgid:Lcom/google/android/gms/internal/ads/zzait;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgid:Lcom/google/android/gms/internal/ads/zzait;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcnu;->zzc(Lcom/google/android/gms/internal/ads/zzait;)V

    return-void
.end method
