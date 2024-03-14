.class final Lcom/google/android/gms/internal/ads/zzdld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/internal/ads/zzbtn<",
        "TAdT;>;AdT:",
        "Lcom/google/android/gms/internal/ads/zzbqo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqv<",
        "TAdT;>;"
    }
.end annotation


# instance fields
.field private final zzhbt:Lcom/google/android/gms/internal/ads/zzdlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdlv<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdlv;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdlv<",
            "TR;",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzhbt:Lcom/google/android/gms/internal/ads/zzdlv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdqy;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqy;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;>;"
        }
    .end annotation

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdlc;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzhbt:Lcom/google/android/gms/internal/ads/zzdlv;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbr:Lcom/google/android/gms/internal/ads/zzdlw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdlc;->zzhbq:Lcom/google/android/gms/internal/ads/zzdlx;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdlv;->zza(Lcom/google/android/gms/internal/ads/zzdlw;Lcom/google/android/gms/internal/ads/zzdlx;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdqk;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdqk<",
            "TAdT;>;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdld;->zzhbt:Lcom/google/android/gms/internal/ads/zzdlv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdlv;->zzasv()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbtn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbtn;->zzaev()Lcom/google/android/gms/internal/ads/zzbrl;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzdqk;->zzhiq:Lcom/google/android/gms/internal/ads/zzbrl;

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method
