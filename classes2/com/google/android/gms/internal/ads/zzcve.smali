.class final Lcom/google/android/gms/internal/ads/zzcve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccm;


# instance fields
.field private zzftk:Lcom/google/android/gms/internal/ads/zzbuu;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

.field private final zzgpg:Lcom/google/android/gms/internal/ads/zzaph;

.field private final zzgph:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzaph;Z)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgpg:Lcom/google/android/gms/internal/ads/zzaph;

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgph:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbuu;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    return-void
.end method

.method public final zza(ZLandroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzccl;
        }
    .end annotation

    .line 7
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgph:Z

    if-eqz p1, :cond_f

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgpg:Lcom/google/android/gms/internal/ads/zzaph;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaph;->zzaa(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1

    goto :goto_19

    .line 9
    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzgpg:Lcom/google/android/gms/internal/ads/zzaph;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaph;->zzz(Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result p1
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_19} :catch_47

    :goto_19
    if-eqz p1, :cond_3f

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    if-nez p1, :cond_20

    return-void

    .line 17
    :cond_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabb;->zzcqh:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwm;->zzpx()Lcom/google/android/gms/internal/ads/zzaax;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftl:Lcom/google/android/gms/internal/ads/zzdnv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzhed:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3e

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcve;->zzftk:Lcom/google/android/gms/internal/ads/zzbuu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbuu;->onAdImpression()V

    :cond_3e
    return-void

    .line 14
    :cond_3f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzccl;

    const-string p2, "Adapter failed to show."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_47
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzccl;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
