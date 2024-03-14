.class final synthetic Lcom/google/android/gms/internal/ads/zzdba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

.field private final zzgul:[Lcom/google/android/gms/internal/ads/zzcil;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdaq;[Lcom/google/android/gms/internal/ads/zzcil;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgul:[Lcom/google/android/gms/internal/ads/zzcil;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzguc:Lcom/google/android/gms/internal/ads/zzdaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdba;->zzgul:[Lcom/google/android/gms/internal/ads/zzcil;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdaq;->zza([Lcom/google/android/gms/internal/ads/zzcil;)V

    return-void
.end method
