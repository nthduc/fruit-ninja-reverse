.class final Lcom/google/android/gms/internal/ads/zzfk;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private final synthetic zzaag:Lcom/google/android/gms/internal/ads/zzfi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfi;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfk;->zzaag:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfk;->zzaag:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfi;->zza(Lcom/google/android/gms/internal/ads/zzfi;)V

    return-void
.end method
