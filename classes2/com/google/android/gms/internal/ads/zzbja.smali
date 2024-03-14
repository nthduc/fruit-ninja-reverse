.class public Lcom/google/android/gms/internal/ads/zzbja;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbja$zza;
    }
.end annotation


# instance fields
.field private final zzaai:Landroid/content/Context;

.field private final zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzesm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbja$zza;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbja$zza;->zza(Lcom/google/android/gms/internal/ads/zzbja$zza;)Lcom/google/android/gms/internal/ads/zzbbx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbja$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbja$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzaai:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbja$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbja$zza;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzesm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbja$zza;Lcom/google/android/gms/internal/ads/zzbiz;)V
    .registers 3

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbja;-><init>(Lcom/google/android/gms/internal/ads/zzbja$zza;)V

    return-void
.end method


# virtual methods
.method final zzaeb()Landroid/content/Context;
    .registers 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzaai:Landroid/content/Context;

    return-object v0
.end method

.method final zzaec()Ljava/lang/ref/WeakReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzesm:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final zzaed()Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 2

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object v0
.end method

.method final zzaee()Ljava/lang/String;
    .registers 4

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzaai:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbbx;->zzbre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzayu;->zzs(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaef()Lcom/google/android/gms/internal/ads/zzeg;
    .registers 5

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzaai:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbja;->zzbot:Lcom/google/android/gms/internal/ads/zzbbx;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbx;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(Lcom/google/android/gms/internal/ads/zzdw;)V

    return-object v0
.end method
