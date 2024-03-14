.class public Lcom/google/android/gms/internal/ads/zzbtp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbtp$zza;
    }
.end annotation


# instance fields
.field private final zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

.field private zzfuh:Landroid/os/Bundle;

.field private final zzfui:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzvr:Landroid/content/Context;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbtp$zza;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zza(Lcom/google/android/gms/internal/ads/zzbtp$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzvr:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbtp$zza;)Lcom/google/android/gms/internal/ads/zzdok;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbtp$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfuh:Landroid/os/Bundle;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzd(Lcom/google/android/gms/internal/ads/zzbtp$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfui:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zze(Lcom/google/android/gms/internal/ads/zzbtp$zza;)Lcom/google/android/gms/internal/ads/zzdoj;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbtp$zza;Lcom/google/android/gms/internal/ads/zzbtr;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbtp;-><init>(Lcom/google/android/gms/internal/ads/zzbtp$zza;)V

    return-void
.end method


# virtual methods
.method final zzajq()Lcom/google/android/gms/internal/ads/zzbtp$zza;
    .registers 3

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtp$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbtp$zza;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzvr:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzce(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zza(Lcom/google/android/gms/internal/ads/zzdok;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfui:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzfx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfuh:Landroid/os/Bundle;

    .line 12
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtp$zza;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbtp$zza;

    move-result-object v0

    return-object v0
.end method

.method final zzajr()Lcom/google/android/gms/internal/ads/zzdok;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfsk:Lcom/google/android/gms/internal/ads/zzdok;

    return-object v0
.end method

.method final zzajs()Lcom/google/android/gms/internal/ads/zzdoj;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfuj:Lcom/google/android/gms/internal/ads/zzdoj;

    return-object v0
.end method

.method final zzajt()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfuh:Landroid/os/Bundle;

    return-object v0
.end method

.method final zzaju()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfui:Ljava/lang/String;

    return-object v0
.end method

.method final zzcd(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzfui:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object p1

    .line 20
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtp;->zzvr:Landroid/content/Context;

    return-object p1
.end method
