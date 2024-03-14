.class public final Lcom/google/android/gms/internal/ads/zzegu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeac;


# static fields
.field private static final zzhvu:[B


# instance fields
.field private final zzice:Ljava/lang/String;

.field private final zzicf:[B

.field private final zzicg:Lcom/google/android/gms/internal/ads/zzegz;

.field private final zzich:Lcom/google/android/gms/internal/ads/zzegs;

.field private final zzici:Lcom/google/android/gms/internal/ads/zzegw;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzegu;->zzhvu:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzegz;Lcom/google/android/gms/internal/ads/zzegs;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzegy;->zza(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzegw;-><init>(Ljava/security/interfaces/ECPublicKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzici:Lcom/google/android/gms/internal/ads/zzegw;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzicf:[B

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzice:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzicg:Lcom/google/android/gms/internal/ads/zzegz;

    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzich:Lcom/google/android/gms/internal/ads/zzegs;

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzici:Lcom/google/android/gms/internal/ads/zzegw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzice:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzicf:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzich:Lcom/google/android/gms/internal/ads/zzegs;

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzegs;->zzazc()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzicg:Lcom/google/android/gms/internal/ads/zzegz;

    move-object v3, p2

    .line 12
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzegw;->zza(Ljava/lang/String;[B[BILcom/google/android/gms/internal/ads/zzegz;)Lcom/google/android/gms/internal/ads/zzegv;

    move-result-object p2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegu;->zzich:Lcom/google/android/gms/internal/ads/zzegs;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegv;->zzbdp()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzegs;->zzn([B)Lcom/google/android/gms/internal/ads/zzdzv;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/ads/zzegu;->zzhvu:[B

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdzv;->zzc([B[B)[B

    move-result-object p1

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzegv;->zzbdo()[B

    move-result-object p2

    .line 16
    array-length v0, p2

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 18
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method
