.class public final Lcom/google/android/gms/internal/ads/zzcxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzctb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzctb<",
        "Lcom/google/android/gms/internal/ads/zzaph;",
        "Lcom/google/android/gms/internal/ads/zzcuu;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcyy;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxr;->zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzctc;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzctc<",
            "Lcom/google/android/gms/internal/ads/zzaph;",
            "Lcom/google/android/gms/internal/ads/zzcuu;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdos;
        }
    .end annotation

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcxr;->zzgqy:Lcom/google/android/gms/internal/ads/zzcyy;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcyy;->zzgp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaph;

    move-result-object p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcuu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcuu;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzctc;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzctc;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbvp;Ljava/lang/String;)V

    return-object v1
.end method
