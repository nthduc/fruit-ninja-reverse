.class public final Lcom/google/android/gms/internal/ads/zzcim;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfza:Lcom/google/android/gms/internal/ads/zzeos;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcif;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

.field private final zzgej:Lcom/google/android/gms/internal/ads/zzafk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcep;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzcil;Lcom/google/android/gms/internal/ads/zzeos;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzcep;",
            "Lcom/google/android/gms/internal/ads/zzcei;",
            "Lcom/google/android/gms/internal/ads/zzcil;",
            "Lcom/google/android/gms/internal/ads/zzeos<",
            "Lcom/google/android/gms/internal/ads/zzcif;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcei;->getCustomTemplateId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcep;->zzge(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgej:Lcom/google/android/gms/internal/ads/zzafk;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzfza:Lcom/google/android/gms/internal/ads/zzeos;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    .line 11
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    :try_start_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgej:Lcom/google/android/gms/internal/ads/zzafk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzfza:Lcom/google/android/gms/internal/ads/zzeos;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeos;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzafa;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzafk;->zza(Lcom/google/android/gms/internal/ads/zzafa;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p2

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to call onCustomClick for asset "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzayp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzant()V
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgej:Lcom/google/android/gms/internal/ads/zzafk;

    if-nez v0, :cond_5

    return-void

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcim;->zzgbo:Lcom/google/android/gms/internal/ads/zzcil;

    const-string v1, "/nativeAdCustomClick"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzcil;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahq;)V

    return-void
.end method
