.class public final Lcom/google/android/gms/internal/ads/zzciy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/google/android/gms/internal/ads/zzcil;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbpt:Lcom/google/android/gms/internal/ads/zzbgr;

.field private final zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

.field private final zzeom:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzfoc:Ljava/util/concurrent/Executor;

.field private final zzgdm:Lcom/google/android/gms/ads/internal/zzb;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzbbx;Lcom/google/android/gms/ads/internal/zzb;Lcom/google/android/gms/internal/ads/zzbgr;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzfoc:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzbpt:Lcom/google/android/gms/internal/ads/zzbgr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzciy;)Landroid/content/Context;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzvr:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzciy;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzfoc:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzeg;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzeom:Lcom/google/android/gms/internal/ads/zzeg;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzbbx;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzdqm:Lcom/google/android/gms/internal/ads/zzbbx;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/ads/internal/zzb;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzgdm:Lcom/google/android/gms/ads/internal/zzb;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzciy;)Lcom/google/android/gms/internal/ads/zzbgr;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzciy;->zzbpt:Lcom/google/android/gms/internal/ads/zzbgr;

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcil;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcil;-><init>(Lcom/google/android/gms/internal/ads/zzciy;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcil;->zzans()V

    return-object v0
.end method
