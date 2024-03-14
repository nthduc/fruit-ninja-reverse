.class public final Lcom/google/android/gms/internal/ads/zzcyr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcyl<",
        "Lcom/google/android/gms/internal/ads/zzcbe;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgos:Lcom/google/android/gms/internal/ads/zzcce;

.field private final zzvr:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcce;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyr;->zzvr:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyr;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcys;)Ljava/lang/Object;
    .registers 8

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/zzcyt;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgsa:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzcyt;-><init>(Lcom/google/android/gms/internal/ads/zzcyr;Lcom/google/android/gms/internal/ads/zzccm;)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyr;->zzgos:Lcom/google/android/gms/internal/ads/zzcce;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbre;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbre;-><init>(Lcom/google/android/gms/internal/ads/zzdog;Lcom/google/android/gms/internal/ads/zzdnv;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzcce;->zza(Lcom/google/android/gms/internal/ads/zzbre;Lcom/google/android/gms/internal/ads/zzcbf;)Lcom/google/android/gms/internal/ads/zzcbg;

    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcyw;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzcyw;-><init>(Lcom/google/android/gms/internal/ads/zzcyr;Lcom/google/android/gms/internal/ads/zzcbg;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzcys;->zza(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbg;->zzagj()Lcom/google/android/gms/internal/ads/zzcbe;

    move-result-object p1

    return-object p1
.end method
