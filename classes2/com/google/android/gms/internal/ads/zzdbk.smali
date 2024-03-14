.class final synthetic Lcom/google/android/gms/internal/ads/zzdbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdya;


# instance fields
.field private final zzfvc:Lcom/google/android/gms/internal/ads/zzatc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzatc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbk;->zzfvc:Lcom/google/android/gms/internal/ads/zzatc;

    check-cast p1, Ljava/io/InputStream;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbm;

    new-instance v2, Landroid/util/JsonReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzdbm;-><init>(Landroid/util/JsonReader;)V

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzatc;->zzdty:Landroid/os/Bundle;

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzdbm;->zzo(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzdbm;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyq;->zzaf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
