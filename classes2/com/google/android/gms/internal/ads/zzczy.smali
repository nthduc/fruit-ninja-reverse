.class final synthetic Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgte:Lcom/google/android/gms/internal/ads/zzva;

.field private final zzgtn:Lcom/google/android/gms/internal/ads/zzczt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczt;Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgtn:Lcom/google/android/gms/internal/ads/zzczt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgtn:Lcom/google/android/gms/internal/ads/zzczt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczt;->zzgtj:Lcom/google/android/gms/internal/ads/zzczu;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczu;->zzd(Lcom/google/android/gms/internal/ads/zzczu;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczs;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method
