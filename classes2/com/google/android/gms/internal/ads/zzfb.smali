.class final Lcom/google/android/gms/internal/ads/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzk:Lcom/google/android/gms/internal/ads/zzex;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzex;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzk:Lcom/google/android/gms/internal/ads/zzex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfb;->zzzk:Lcom/google/android/gms/internal/ads/zzex;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzex;->zzvr:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabb;->initialize(Landroid/content/Context;)V

    return-void
.end method
