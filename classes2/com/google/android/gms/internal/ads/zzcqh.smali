.class final synthetic Lcom/google/android/gms/internal/ads/zzcqh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzgjc:Lcom/google/android/gms/internal/ads/zzatc;

.field private final zzgks:Lcom/google/android/gms/internal/ads/zzeph;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzeph;Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgks:Lcom/google/android/gms/internal/ads/zzeph;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgjc:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgks:Lcom/google/android/gms/internal/ads/zzeph;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqh;->zzgjc:Lcom/google/android/gms/internal/ads/zzatc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcof;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeph;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzcqj;->zzh(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
