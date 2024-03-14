.class public final Lcom/google/android/gms/internal/ads/zzbfc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbft;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbdu;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzbdv;)Lcom/google/android/gms/internal/ads/zzbfl;
    .registers 5

    if-lez p2, :cond_20

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzber;->zzaaw()I

    move-result p2

    .line 4
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiw:I

    if-ge p2, p3, :cond_10

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbfw;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbfw;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/internal/ads/zzbdv;)V

    return-object p2

    .line 6
    :cond_10
    iget p3, p4, Lcom/google/android/gms/internal/ads/zzbdv;->zzeiq:I

    if-ge p2, p3, :cond_1a

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbfx;

    invoke-direct {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzbfx;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/internal/ads/zzbdv;)V

    return-object p2

    .line 8
    :cond_1a
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbfv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbfv;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;)V

    return-object p2

    .line 9
    :cond_20
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbfs;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzbfs;-><init>(Lcom/google/android/gms/internal/ads/zzbdu;)V

    return-object p2
.end method
