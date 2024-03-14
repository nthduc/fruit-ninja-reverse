.class final synthetic Lcom/google/android/gms/internal/ads/zzcoh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgjb:Lcom/google/android/gms/internal/ads/zzcoi;

.field private final zzgjc:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcoi;Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzgjb:Lcom/google/android/gms/internal/ads/zzcoi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzgjc:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzgjb:Lcom/google/android/gms/internal/ads/zzcoi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoh;->zzgjc:Lcom/google/android/gms/internal/ads/zzatc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcoi;->zzf(Lcom/google/android/gms/internal/ads/zzatc;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
