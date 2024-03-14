.class final Lcom/google/android/gms/internal/ads/zzin;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajd:Lcom/google/android/gms/internal/ads/zzij;

.field private final synthetic zzajk:I

.field private final synthetic zzajl:J

.field private final synthetic zzajm:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzij;IJJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajk:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajl:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajm:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzij;->zza(Lcom/google/android/gms/internal/ads/zzij;)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajk:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajl:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzin;->zzajm:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzig;->zza(IJJ)V

    return-void
.end method
