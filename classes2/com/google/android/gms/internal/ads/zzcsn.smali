.class final synthetic Lcom/google/android/gms/internal/ads/zzcsn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zztr;


# instance fields
.field private final zzgnb:Lcom/google/android/gms/internal/ads/zzua$zzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzua$zzu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zzgnb:Lcom/google/android/gms/internal/ads/zzua$zzu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzua$zzi$zza;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsn;->zzgnb:Lcom/google/android/gms/internal/ads/zzua$zzu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zzny()Lcom/google/android/gms/internal/ads/zzua$zzg;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzejz;->zzbgg()Lcom/google/android/gms/internal/ads/zzejz$zzb;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/zzejz$zzb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzua$zzg$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzu;)Lcom/google/android/gms/internal/ads/zzua$zzg$zza;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzua$zzi$zza;->zza(Lcom/google/android/gms/internal/ads/zzua$zzg$zza;)Lcom/google/android/gms/internal/ads/zzua$zzi$zza;

    return-void
.end method
