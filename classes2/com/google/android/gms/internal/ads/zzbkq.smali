.class final Lcom/google/android/gms/internal/ads/zzbkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdnm;


# instance fields
.field private final synthetic zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

.field private zzfib:Landroid/content/Context;

.field private zzfic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbjv;Lcom/google/android/gms/internal/ads/zzbju;)V
    .registers 3

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkq;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;)V

    return-void
.end method


# virtual methods
.method public final zzagi()Lcom/google/android/gms/internal/ads/zzdnn;
    .registers 6

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfib:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepe;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfbq:Lcom/google/android/gms/internal/ads/zzbjv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfib:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfic:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbkt;-><init>(Lcom/google/android/gms/internal/ads/zzbjv;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbju;)V

    return-object v0
.end method

.method public final synthetic zzbz(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzdnm;
    .registers 2

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepe;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfib:Landroid/content/Context;

    return-object p0
.end method

.method public final synthetic zzfw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdnm;
    .registers 2

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkq;->zzfic:Ljava/lang/String;

    return-object p0
.end method
