.class final synthetic Lcom/google/android/gms/internal/ads/zzclc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztr;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzgge:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

.field private final zzggf:Lcom/google/android/gms/internal/ads/zzua$zzu;

.field private final zzggg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzua$zza$zza;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzua$zzu;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzgge:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzdgm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzggf:Lcom/google/android/gms/internal/ads/zzua$zzu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzggg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzi$zza;)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzgge:Lcom/google/android/gms/internal/ads/zzua$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzdgm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzggf:Lcom/google/android/gms/internal/ads/zzua$zzu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzclc;->zzggg:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zznz()Lcom/google/android/gms/internal/ads/zzua$zza;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v4

    .line 4
    check-cast v4, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzua$zza$zzb;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzua$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzua$zza$zza;)Lcom/google/android/gms/internal/ads/zzua$zza$zzb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zza$zzb;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzny()Lcom/google/android/gms/internal/ads/zzua$zzg;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;->zzbz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzu;)Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzg$zza;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    move-result-object p1

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzcb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    return-void
.end method
