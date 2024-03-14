.class final synthetic Lcom/google/android/gms/internal/ads/zzcqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcqw;


# instance fields
.field private final zzgkx:Lcom/google/android/gms/internal/ads/zzcql;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcql;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgkx:Lcom/google/android/gms/internal/ads/zzcql;

    return-void
.end method


# virtual methods
.method public final zzq(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqs;->zzgkx:Lcom/google/android/gms/internal/ads/zzcql;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcql;->zzp(Lcom/google/android/gms/internal/ads/zzatc;)Lcom/google/android/gms/internal/ads/zzdzc;

    move-result-object p1

    return-object p1
.end method
