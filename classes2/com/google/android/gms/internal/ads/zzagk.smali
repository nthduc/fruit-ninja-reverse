.class public final Lcom/google/android/gms/internal/ads/zzagk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# instance fields
.field private final zzded:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

.field private final zzdee:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzdef:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzded:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdee:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzded:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzagk;->zzb(Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzagk;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdee:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    return-object p0
.end method

.method private final declared-synchronized zzb(Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    .registers 3

    monitor-enter p0

    .line 9
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdef:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;

    if-eqz v0, :cond_9

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdef:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_12

    monitor-exit p0

    return-object p1

    .line 11
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzafb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzafb;-><init>(Lcom/google/android/gms/internal/ads/zzafa;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdef:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd;
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final zzsx()Lcom/google/android/gms/internal/ads/zzafl;
    .registers 3

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzagl;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagj;)V

    return-object v0
.end method

.method public final zzsy()Lcom/google/android/gms/internal/ads/zzafk;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagk;->zzdee:Lcom/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 8
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzagm;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzagm;-><init>(Lcom/google/android/gms/internal/ads/zzagk;Lcom/google/android/gms/internal/ads/zzagj;)V

    return-object v0
.end method
