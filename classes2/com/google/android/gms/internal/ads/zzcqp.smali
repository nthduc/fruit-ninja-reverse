.class final synthetic Lcom/google/android/gms/internal/ads/zzcqp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqw;


# instance fields
.field private final zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcqc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcqc;)Lcom/google/android/gms/internal/ads/zzcqw;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqp;-><init>(Lcom/google/android/gms/internal/ads/zzcqc;)V

    return-object v0
.end method


# virtual methods
.method public final zzq(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqp;->zzgkl:Lcom/google/android/gms/internal/ads/zzcqc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqc;->zzk(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
