.class final synthetic Lcom/google/android/gms/internal/ads/zzbyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# instance fields
.field private final zzeok:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzeok:Z

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbyn;->zzeok:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbyo;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbyo;->zzbh(Z)V

    return-void
.end method
