.class final synthetic Lcom/google/android/gms/internal/ads/zzcua;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgol:Lcom/google/android/gms/internal/ads/zzctt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzbgj;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgol:Lcom/google/android/gms/internal/ads/zzctt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgol:Lcom/google/android/gms/internal/ads/zzctt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcua;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzctt;->zzo(Lcom/google/android/gms/internal/ads/zzbgj;)V

    return-void
.end method
