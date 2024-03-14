.class final synthetic Lcom/google/android/gms/internal/ads/zzcyd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrs;


# instance fields
.field private final zzgrl:Lcom/google/android/gms/internal/ads/zzcyb;

.field private final zzgrm:Lcom/google/android/gms/internal/ads/zzabr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyb;Lcom/google/android/gms/internal/ads/zzabr;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyd;->zzgrl:Lcom/google/android/gms/internal/ads/zzcyb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyd;->zzgrm:Lcom/google/android/gms/internal/ads/zzabr;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyd;->zzgrl:Lcom/google/android/gms/internal/ads/zzcyb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyd;->zzgrm:Lcom/google/android/gms/internal/ads/zzabr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcyb;->zza(Lcom/google/android/gms/internal/ads/zzabr;)V

    return-void
.end method
