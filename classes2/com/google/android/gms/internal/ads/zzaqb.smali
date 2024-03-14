.class final Lcom/google/android/gms/internal/ads/zzaqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqc;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqc;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkr()Lcom/google/android/gms/internal/ads/zzayu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqb;->zzdmw:Lcom/google/android/gms/internal/ads/zzaqc;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaqc;->zza(Lcom/google/android/gms/internal/ads/zzaqc;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzayu;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
