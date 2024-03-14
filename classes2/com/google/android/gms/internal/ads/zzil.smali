.class final Lcom/google/android/gms/internal/ads/zzil;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzajd:Lcom/google/android/gms/internal/ads/zzij;

.field private final synthetic zzajg:Ljava/lang/String;

.field private final synthetic zzajh:J

.field private final synthetic zzaji:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzij;Ljava/lang/String;JJ)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajg:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajh:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzil;->zzaji:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajd:Lcom/google/android/gms/internal/ads/zzij;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzij;->zza(Lcom/google/android/gms/internal/ads/zzij;)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajg:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzil;->zzajh:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzil;->zzaji:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzig;->zza(Ljava/lang/String;JJ)V

    return-void
.end method
