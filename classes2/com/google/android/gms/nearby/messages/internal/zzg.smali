.class public final Lcom/google/android/gms/nearby/messages/internal/zzg;
.super Lcom/google/android/gms/nearby/messages/internal/zzc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzm(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzm(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/google/android/gms/nearby/messages/internal/zzg;->zzm(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_d

    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    const-string v1, "Bytes must be a namespace (10 bytes), or a namespace plus instance (16 bytes)."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzc;-><init>([B)V

    return-void
.end method

.method private constructor <init>([B[B)V
    .registers 10

    const/4 v0, 0x2

    new-array v0, v0, [[B

    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    array-length v4, p1

    const/16 v5, 0x35

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Namespace length("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes) must be 10 bytes."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    aput-object p1, v0, v3

    array-length p1, p2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_30

    const/4 v3, 0x1

    :cond_30
    array-length p1, p2

    const/16 v1, 0x33

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instance length("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes) must be 6 bytes."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/util/ArrayUtils;->concatByteArrays([[B)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzg;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzc;->getHex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "EddystoneUidPrefix{bytes="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
