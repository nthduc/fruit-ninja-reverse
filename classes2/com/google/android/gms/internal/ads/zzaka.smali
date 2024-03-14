.class final Lcom/google/android/gms/internal/ads/zzaka;
.super Lcom/google/android/gms/internal/ads/zzbik;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzdgq:Lcom/google/android/gms/internal/ads/zzaju;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaju;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzdgq:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbik;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaju;Lcom/google/android/gms/internal/ads/zzajy;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaka;-><init>(Lcom/google/android/gms/internal/ads/zzaju;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbin;)V
    .registers 2

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzdgq:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Lcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzakh;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzdgq:Lcom/google/android/gms/internal/ads/zzaju;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaju;->zza(Lcom/google/android/gms/internal/ads/zzaju;)Lcom/google/android/gms/internal/ads/zzakh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzakh;->zzti()V

    :cond_11
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbin;)V
    .registers 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzdgq:Lcom/google/android/gms/internal/ads/zzaju;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Landroid/net/Uri;)Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbin;)Z
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaka;->zzdgq:Lcom/google/android/gms/internal/ads/zzaju;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbin;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzakd;->zzg(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
