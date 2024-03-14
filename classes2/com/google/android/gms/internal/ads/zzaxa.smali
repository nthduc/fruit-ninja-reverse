.class final synthetic Lcom/google/android/gms/internal/ads/zzaxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzckh:Landroid/content/Context;

.field private final zzdyb:Lcom/google/android/gms/internal/ads/zzawo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawo;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzdyb:Lcom/google/android/gms/internal/ads/zzawo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzckh:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzdyb:Lcom/google/android/gms/internal/ads/zzawo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaxa;->zzckh:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawo;->zzak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
