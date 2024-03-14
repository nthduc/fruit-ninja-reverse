.class public final Lcom/google/android/gms/internal/ads/zzcsz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcta<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field private final zzgnq:Lcom/google/android/gms/internal/ads/zzcta;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field private final zzgnr:Lcom/google/android/gms/internal/ads/zzdvu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdvu<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcta;Lcom/google/android/gms/internal/ads/zzdvu;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcta<",
            "TDelegateT;>;",
            "Lcom/google/android/gms/internal/ads/zzdvu<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgnq:Lcom/google/android/gms/internal/ads/zzcta;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgnr:Lcom/google/android/gms/internal/ads/zzdvu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z
    .registers 4

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgnq:Lcom/google/android/gms/internal/ads/zzcta;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcta;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Z

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdog;",
            "Lcom/google/android/gms/internal/ads/zzdnv;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdzc<",
            "TAdapterT;>;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgnq:Lcom/google/android/gms/internal/ads/zzcta;

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcta;->zzb(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsz;->zzgnr:Lcom/google/android/gms/internal/ads/zzdvu;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbz;->zzeep:Lcom/google/android/gms/internal/ads/zzdzb;

    .line 8
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyq;->zzb(Lcom/google/android/gms/internal/ads/zzdzc;Lcom/google/android/gms/internal/ads/zzdvu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
