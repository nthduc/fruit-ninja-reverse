.class final Lcom/google/android/gms/internal/ads/zzeba$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzeba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzhvo:Lcom/google/android/gms/internal/ads/zzeao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeao;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "Lcom/google/android/gms/internal/ads/zzdzv;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeba$zza;->zzhvo:Lcom/google/android/gms/internal/ads/zzeao;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeao;Lcom/google/android/gms/internal/ads/zzeaz;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeba$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeao;)V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba$zza;->zzhvo:Lcom/google/android/gms/internal/ads/zzeao;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzean;->zzayw()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeba$zza;->zzhvo:Lcom/google/android/gms/internal/ads/zzeao;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzean;->zzayt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdzv;->zzc([B[B)[B

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegl;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
