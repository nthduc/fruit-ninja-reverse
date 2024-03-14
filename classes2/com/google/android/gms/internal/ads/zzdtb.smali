.class final synthetic Lcom/google/android/gms/internal/ads/zzdtb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzcyt:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzcyt:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtb;->zzcyt:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdtc;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztx;

    move-result-object v0

    return-object v0
.end method
