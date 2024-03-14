.class final synthetic Lcom/google/android/gms/internal/ads/zzczo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgtd:Lcom/google/android/gms/internal/ads/zzczm;

.field private final zzgte:Lcom/google/android/gms/internal/ads/zzva;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczm;Lcom/google/android/gms/internal/ads/zzva;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgtd:Lcom/google/android/gms/internal/ads/zzczm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgtd:Lcom/google/android/gms/internal/ads/zzczm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzczo;->zzgte:Lcom/google/android/gms/internal/ads/zzva;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzczm;->zzgtb:Lcom/google/android/gms/internal/ads/zzczj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzczj;->zzf(Lcom/google/android/gms/internal/ads/zzczj;)Lcom/google/android/gms/internal/ads/zzczs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzczs;->zzk(Lcom/google/android/gms/internal/ads/zzva;)V

    return-void
.end method
