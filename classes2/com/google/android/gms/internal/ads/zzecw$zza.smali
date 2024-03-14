.class final Lcom/google/android/gms/internal/ads/zzecw$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzecw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final zzhwe:Lcom/google/android/gms/internal/ads/zzeao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "Lcom/google/android/gms/internal/ads/zzeam;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhwp:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeao;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeao<",
            "Lcom/google/android/gms/internal/ads/zzeam;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwp:[B

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeao;Lcom/google/android/gms/internal/ads/zzecv;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzecw$zza;-><init>(Lcom/google/android/gms/internal/ads/zzeao;)V

    return-void
.end method


# virtual methods
.method public final zzm([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzean;->zzayv()Lcom/google/android/gms/internal/ads/zzefv;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzefv;->zziba:Lcom/google/android/gms/internal/ads/zzefv;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzefv;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_46

    .line 6
    new-array v0, v3, [[B

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzean;->zzayw()[B

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzean;->zzayt()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeam;

    new-array v3, v3, [[B

    aput-object p1, v3, v2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwp:[B

    aput-object p1, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzegl;->zza([[B)[B

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/android/gms/internal/ads/zzeam;->zzm([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegl;->zza([[B)[B

    move-result-object p1

    return-object p1

    .line 10
    :cond_46
    new-array v0, v3, [[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzean;->zzayw()[B

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzecw$zza;->zzhwe:Lcom/google/android/gms/internal/ads/zzeao;

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeao;->zzayx()Lcom/google/android/gms/internal/ads/zzean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzean;->zzayt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeam;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzeam;->zzm([B)[B

    move-result-object p1

    aput-object p1, v0, v1

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegl;->zza([[B)[B

    move-result-object p1

    return-object p1
.end method
