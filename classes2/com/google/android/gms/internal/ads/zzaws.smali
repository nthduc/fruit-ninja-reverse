.class final synthetic Lcom/google/android/gms/internal/ads/zzaws;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjk:Ljava/lang/String;

.field private final zzdyb:Lcom/google/android/gms/internal/ads/zzawo;

.field private final zzdyc:Lcom/google/android/gms/internal/ads/zzaxe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzaxe;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdyb:Lcom/google/android/gms/internal/ads/zzawo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdyc:Lcom/google/android/gms/internal/ads/zzaxe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjk:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdyb:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdyc:Lcom/google/android/gms/internal/ads/zzaxe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaws;->zzdjk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzawo;->zza(Lcom/google/android/gms/internal/ads/zzaxe;Ljava/lang/String;)V

    return-void
.end method
