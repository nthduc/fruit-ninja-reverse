.class final synthetic Lcom/google/android/gms/internal/ads/zzbtg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzftq:Lcom/google/android/gms/internal/ads/zzbtd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbtd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzftq:Lcom/google/android/gms/internal/ads/zzbtd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtg;->zzftq:Lcom/google/android/gms/internal/ads/zzbtd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtd;->zzajn()V

    return-void
.end method
