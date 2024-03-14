.class final Lcom/google/android/gms/internal/ads/zzbmj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyr<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfng:Ljava/lang/String;

.field private final synthetic zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmh;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfng:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 10
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzc(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbmh;->zza(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzbmh;->zzb(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfng:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbmh;->zzb(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object v3

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzdnv;->zzdkk:Ljava/util/List;

    const/4 v3, 0x0

    .line 16
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdsr;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzi(Ljava/util/List;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .registers 10

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbmh;->zze(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzc(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdsr;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zza(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdog;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzb(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfng:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmj;->zzfnh:Lcom/google/android/gms/internal/ads/zzbmh;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbmh;->zzb(Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzdnv;

    move-result-object v0

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdnv;->zzdkk:Ljava/util/List;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 7
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzdsr;->zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdor;->zzi(Ljava/util/List;)V

    return-void
.end method
