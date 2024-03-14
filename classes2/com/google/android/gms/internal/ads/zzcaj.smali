.class public final Lcom/google/android/gms/internal/ads/zzcaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcak;


# instance fields
.field private final zzdsp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

.field private zzfwn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdnv;Lcom/google/android/gms/internal/ads/zzdst;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnv;->zzdsp:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzdsp:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    return-void
.end method


# virtual methods
.method public final zzakv()V
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzfwn:Z

    if-nez v0, :cond_e

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzfnf:Lcom/google/android/gms/internal/ads/zzdst;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzdsp:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdst;->zzj(Ljava/util/List;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcaj;->zzfwn:Z

    :cond_e
    return-void
.end method
