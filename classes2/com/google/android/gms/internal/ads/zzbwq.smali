.class final synthetic Lcom/google/android/gms/internal/ads/zzbwq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# instance fields
.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwq;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbws;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzd(Lcom/google/android/gms/internal/ads/zzatc;)V

    return-void
.end method
