.class final synthetic Lcom/google/android/gms/internal/ads/zzcva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvu;


# instance fields
.field private final zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

.field private final zzgpe:Lcom/google/android/gms/internal/ads/zzcuw;

.field private final zzgpf:Lcom/google/android/gms/internal/ads/zzcbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuw;Lcom/google/android/gms/internal/ads/zzbgj;Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzcbg;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzgpe:Lcom/google/android/gms/internal/ads/zzcuw;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzgpf:Lcom/google/android/gms/internal/ads/zzcbg;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzgci:Lcom/google/android/gms/internal/ads/zzbgj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzfqn:Lcom/google/android/gms/internal/ads/zzdnv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcva;->zzgpf:Lcom/google/android/gms/internal/ads/zzcbg;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzduj:Z

    if-eqz v0, :cond_d

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzacj()V

    .line 5
    :cond_d
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbgj;->zzabq()V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabb;->zzcoc:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkt()Lcom/google/android/gms/internal/ads/zzazd;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzazd;->zza(Lcom/google/android/gms/internal/ads/zzbgj;)Z

    .line 10
    :cond_28
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzagj()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object p1

    return-object p1
.end method
