.class final Lcom/google/android/gms/internal/ads/zzqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajg:Ljava/lang/String;

.field private final synthetic zzajh:J

.field private final synthetic zzaji:J

.field private final synthetic zzbmx:Lcom/google/android/gms/internal/ads/zzqg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqg;Ljava/lang/String;JJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzbmx:Lcom/google/android/gms/internal/ads/zzqg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzajg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzajh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzaji:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzbmx:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Lcom/google/android/gms/internal/ads/zzqg;)Lcom/google/android/gms/internal/ads/zzqd;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzajg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzajh:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzaji:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzqd;->zzd(Ljava/lang/String;JJ)V

    return-void
.end method
