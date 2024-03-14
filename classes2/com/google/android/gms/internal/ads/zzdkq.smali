.class final synthetic Lcom/google/android/gms/internal/ads/zzdkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzhba:Lcom/google/android/gms/internal/ads/zzdko;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdko;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzhba:Lcom/google/android/gms/internal/ads/zzdko;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzhba:Lcom/google/android/gms/internal/ads/zzdko;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdko;->zzast()V

    return-void
.end method
