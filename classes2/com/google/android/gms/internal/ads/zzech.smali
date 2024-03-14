.class final Lcom/google/android/gms/internal/ads/zzech;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeaq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzeaq<",
        "Lcom/google/android/gms/internal/ads/zzeac;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzeao;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeck;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzeck;-><init>(Lcom/google/android/gms/internal/ads/zzeao;)V

    return-object v0
.end method

.method public final zzayk()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/android/gms/internal/ads/zzeac;",
            ">;"
        }
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/zzeac;

    return-object v0
.end method
