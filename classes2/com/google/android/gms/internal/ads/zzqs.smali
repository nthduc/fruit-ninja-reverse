.class final Lcom/google/android/gms/internal/ads/zzqs;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzbsc:Lcom/google/android/gms/internal/ads/zzqq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzqq;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzbsc:Lcom/google/android/gms/internal/ads/zzqq;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->zzbsc:Lcom/google/android/gms/internal/ads/zzqq;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzqq;->zza(Lcom/google/android/gms/internal/ads/zzqq;I)V

    return-void
.end method
