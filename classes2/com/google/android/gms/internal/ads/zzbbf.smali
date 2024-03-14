.class final Lcom/google/android/gms/internal/ads/zzbbf;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzeds:Lcom/google/android/gms/internal/ads/zzbbc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbc;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzeds:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbf;->zzeds:Lcom/google/android/gms/internal/ads/zzbbc;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbc;->zza(Lcom/google/android/gms/internal/ads/zzbbc;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
