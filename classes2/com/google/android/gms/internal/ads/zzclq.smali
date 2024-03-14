.class final synthetic Lcom/google/android/gms/internal/ads/zzclq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztr;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzfvd:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzi$zza;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclq;->zzfvd:Lcom/google/android/gms/internal/ads/zzdog;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zznz()Lcom/google/android/gms/internal/ads/zzua$zza;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzua$zza$zzb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zznz()Lcom/google/android/gms/internal/ads/zzua$zza;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzua$zza;->zznd()Lcom/google/android/gms/internal/ads/zzua$zze;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzua$zze$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdog;->zzhew:Lcom/google/android/gms/internal/ads/zzdoe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdoe;->zzeou:Lcom/google/android/gms/internal/ads/zzdnw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnw;->zzdtb:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzua$zze$zza;->zzbx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zze$zza;

    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzua$zza$zzb;->zza(Lcom/google/android/gms/internal/ads/zzua$zze$zza;)Lcom/google/android/gms/internal/ads/zzua$zza$zzb;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zza$zzb;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    return-void
.end method
