.class final synthetic Lcom/google/android/gms/internal/ads/zzcvn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcvo;Lcom/google/android/gms/internal/ads/zzdnv;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgpi:Lcom/google/android/gms/internal/ads/zzcvo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvn;->zzgnz:Lcom/google/android/gms/internal/ads/zzdnv;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcil;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzcvo;->zza(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzcil;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
