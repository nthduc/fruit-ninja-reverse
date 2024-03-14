.class final synthetic Lcom/google/android/gms/internal/ads/zzcnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjf:Ljava/lang/Object;

.field private final zzggg:Ljava/lang/String;

.field private final zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

.field private final zzgin:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final zzgio:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;Ljava/lang/String;J)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdjf:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgin:Lcom/google/android/gms/internal/ads/zzbcg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzggg:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgio:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzdjf:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgin:Lcom/google/android/gms/internal/ads/zzbcg;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzggg:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzcnx;->zzgio:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcnu;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbcg;Ljava/lang/String;J)V

    return-void
.end method
