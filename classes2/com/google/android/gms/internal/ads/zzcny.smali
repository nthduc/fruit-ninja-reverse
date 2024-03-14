.class final synthetic Lcom/google/android/gms/internal/ads/zzcny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgic:Lcom/google/android/gms/internal/ads/zzcnu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcny;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcny;->zzgic:Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnu;->zzapp()V

    return-void
.end method
