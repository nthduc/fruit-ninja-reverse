.class public final Lcom/google/android/gms/internal/ads/zzdtn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# annotations
.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation


# instance fields
.field private final zzhmm:Landroid/os/Looper;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Looper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzhmm:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final zzhc(Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzduc;->zzawh()Lcom/google/android/gms/internal/ads/zzduc$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzvr:Landroid/content/Context;

    .line 6
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduc$zza;->zzhf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzduc$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduc$zzb;->zzhnm:Lcom/google/android/gms/internal/ads/zzduc$zzb;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzduc$zza;->zzb(Lcom/google/android/gms/internal/ads/zzduc$zzb;)Lcom/google/android/gms/internal/ads/zzduc$zza;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdty;->zzawf()Lcom/google/android/gms/internal/ads/zzdty$zzb;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdty$zzb;->zzhe(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdty$zzb;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdty$zza;->zzhnf:Lcom/google/android/gms/internal/ads/zzdty$zza;

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzdty$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzdty$zza;)Lcom/google/android/gms/internal/ads/zzdty$zzb;

    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzduc$zza;->zza(Lcom/google/android/gms/internal/ads/zzdty$zzb;)Lcom/google/android/gms/internal/ads/zzduc$zza;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgt()Lcom/google/android/gms/internal/ads/zzelj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzduc;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzvr:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtn;->zzhmm:Landroid/os/Looper;

    .line 14
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdtq;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdtq;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzduc;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdtq;->zzawd()V

    return-void
.end method
