.class final synthetic Lcom/google/android/gms/internal/ads/zzamv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckh:Landroid/content/Context;

.field private final zzdjj:Lcom/google/android/gms/internal/ads/zzamt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzamt;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzdjj:Lcom/google/android/gms/internal/ads/zzamt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzckh:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamv;->zzckh:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzamt;->zzo(Landroid/content/Context;)V

    return-void
.end method
