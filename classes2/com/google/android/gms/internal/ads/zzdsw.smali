.class final synthetic Lcom/google/android/gms/internal/ads/zzdsw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdgm:Ljava/lang/String;

.field private final zzhlp:Lcom/google/android/gms/internal/ads/zzdst;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdst;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsw;->zzhlp:Lcom/google/android/gms/internal/ads/zzdst;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsw;->zzdgm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsw;->zzhlp:Lcom/google/android/gms/internal/ads/zzdst;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsw;->zzdgm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdst;->zzgz(Ljava/lang/String;)V

    return-void
.end method
