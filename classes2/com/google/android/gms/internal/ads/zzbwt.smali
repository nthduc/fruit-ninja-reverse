.class final synthetic Lcom/google/android/gms/internal/ads/zzbwt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbyt;


# instance fields
.field private final zzfvd:Lcom/google/android/gms/internal/ads/zzdog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwt;->zzfvd:Lcom/google/android/gms/internal/ads/zzdog;

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwt;->zzfvd:Lcom/google/android/gms/internal/ads/zzdog;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbws;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbws;->zzb(Lcom/google/android/gms/internal/ads/zzdog;)V

    return-void
.end method
