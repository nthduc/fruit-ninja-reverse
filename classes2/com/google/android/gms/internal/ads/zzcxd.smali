.class final synthetic Lcom/google/android/gms/internal/ads/zzcxd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgnx:Lcom/google/android/gms/internal/ads/zzckj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzckj;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxd;->zzgnx:Lcom/google/android/gms/internal/ads/zzckj;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzckj;)Ljava/lang/Runnable;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcxd;-><init>(Lcom/google/android/gms/internal/ads/zzckj;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxd;->zzgnx:Lcom/google/android/gms/internal/ads/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckj;->zzaoc()V

    return-void
.end method
